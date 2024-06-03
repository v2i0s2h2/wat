(module
    ;; import debug_print from ic0 module
    (import "ic0" "debug_print" 
        (func $ic0::debug_print 
            (param $src i32) 
            (param $size i32)
        )
    )

    ;; memory
    (memory $0 1)
    (export "memory" (memory $0))

    ;; data
    (data (i32.const 0) "Hello, World!")

    ;; canister_init function
    (func $canister_init
        (call $ic0::debug_print 
            (i32.const 0) ;; memory offset
            (i32.const 13) ;; string length
        )
    )

    ;; export canister_init function
    (export "canister_init" 
        (func $canister_init)
    )
)
