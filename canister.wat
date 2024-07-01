(module
  ;; This is the start of the program, like the cover of a book.
  
  ;; These are some helper functions that we'll use later.
  ;; You can think of them as tools in a toolbox.
  (type $t0 (func))
  (import "ic0" "msg_reply" (func $msg_reply))
  (import "ic0" "msg_reply_data_append" (func $msg_reply_data_append (param i32 i32)))
  (import "ic0" "debug_print" (func $debug_print (param i32 i32)))
  (import "ic0" "stable_size" (func $stable_size (result i32)))
  (import "ic0" "stable_grow" (func $stable_grow (param i32) (result i32)))
  (import "ic0" "stable_write" (func $stable_write (param i32 i32 i32)))
  (import "ic0" "stable_read" (func $stable_read (param i32 i32 i32)))

  ;; This is like a backpack where we can store things.
  ;; We're storing a message that says "Hello, Canister!"
  (memory $memory 1)
  (data (i32.const 0) "Hello, Canister!")

  ;; This is a function called "greet" that we can call later.
  ;; It's like a recipe for making a cake.
  (func $greet (export "canister_query greet")
    ;; This is the first step in the recipe.
    ;; It prints the message "Hello, Canister!" to the screen.
    (call $debug_print (i32.const 0) (i32.const 16))

    ;; This is the second step in the recipe.
    ;; It adds the message "Hello, Canister!" to a reply message.
    (call $msg_reply_data_append (i32.const 0) (i32.const 16))

    ;; This is the last step in the recipe.
    ;; It sends the reply message back to whoever asked for it.
    (call $msg_reply)
  )

  ;; This is another function called "canister_init".
  ;; It's like a recipe for setting up the kitchen before we start cooking.
  (func $canister_init (export "canister_query canister_init")
    ;; This is where we would do any setup tasks, like getting the pots and pans ready.
    ;; But for now, we're not doing anything special.
  )

  ;; This is another function called "use_stable_memory".
  ;; It's like a recipe for using a special fridge that never loses power.
  (func $use_stable_memory(export "canister_query use_stable_memory")
    ;; This is the first step in the recipe.
    ;; It checks how much space we have in the special fridge.
    (call $stable_size)
    ;; We don't need to remember how much space we had, so we just throw it away.
    (drop)

    ;; This is the second step in the recipe.
    ;; It tries to make more space in the special fridge by adding a new shelf.
    (i32.const 1)
    (call $stable_grow)
    ;; We don't need to remember how much space we had before, so we just throw it away.
    (drop)

    ;; This is the third step in the recipe.
    ;; It puts the message "Hello, Canister!" into the special fridge.
    (i32.const 0) ;; This is where we start putting the message in the fridge.
    (i32.const 0) ;; This is the start of the message we want to put in.
    (i32.const 16) ;; This is how long the message is.
    (call $stable_write)

    ;; This is the last step in the recipe.
    ;; It takes the message out of the special fridge and puts it back in our backpack.
    (i32.const 16) ;; This is where we want to put the message in our backpack.
    (i32.const 0) ;; This is where we start taking the message from in the fridge.
    (i32.const 16) ;; This is how long the message is.
    (call $stable_read)
  )

  ;; We're not going to run any special starting recipe for now.
)