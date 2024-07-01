# Canister in WAT

Canister written in WebAssembly WAT format  

## Requirements
`wat2wasm` binary in system path  

## Deploy
`dfx deploy wat --mode reinstall -y --no-wallet`  
should debug print 'hello world' in terminal during install


## System api

Sure, here's an explanation of each import function in a simple mixture of Hindi and English:

1. `ic0.msg_arg_data_size()`: Yeh function message ke argument ke data ka size (length) batata hai.

2. `ic0.msg_arg_data_copy()`: Yeh function message ke argument ke data ko canister ke memory mein copy kar deta hai.

3. `ic0.msg_caller_size()`: Yeh function message bhejne waale (caller) ka size batata hai.

4. `ic0.msg_caller_copy()`: Yeh function message bhejne waale (caller) ko canister ke memory mein copy kar deta hai.

5. `ic0.msg_reject_code()`: Yeh function reject ke code ko return karta hai.

6. `ic0.msg_reject_msg_size()`: Yeh function reject ke message ka size batata hai.

7. `ic0.msg_reject_msg_copy()`: Yeh function reject ke message ko canister ke memory mein copy kar deta hai.

8. `ic0.msg_reply_data_append()`: Yeh function reply ke data ko append (jod) deta hai.

9. `ic0.msg_reply()`: Yeh function reply bhejta hai.

10. `ic0.msg_reject()`: Yeh function reject bhejta hai.

11. `ic0.msg_cycles_available()`: Yeh function available cycles (compute power) batata hai.

12. `ic0.msg_cycles_refunded()`: Yeh function refund kiye gaye cycles batata hai.

13. `ic0.msg_cycles_accept()`: Yeh function cycles ko accept kar leta hai.

14. `ic0.cycles_burn128()`: Yeh function cycles ko burn (use/spend) kar deta hai.

15. `ic0.canister_self_size()`: Yeh function apne canister ke size ko batata hai.

16. `ic0.canister_self_copy()`: Yeh function apne canister ko memory mein copy kar deta hai.

17. `ic0.canister_cycle_balance()`: Yeh function canister ke cycle balance (remaining compute power) ko batata hai.

18. `ic0.canister_status()`: Yeh function canister ki status (running, stopping, stopped) batata hai.

19. `ic0.canister_version()`: Yeh function canister ki version batata hai.

20. `ic0.msg_method_name_size()`: Yeh function method name ke size ko batata hai.

21. `ic0.msg_method_name_copy()`: Yeh function method name ko memory mein copy kar deta hai.

22. `ic0.accept_message()`: Yeh function message ko accept karta hai.

23. `ic0.call_new()`: Yeh function ek naya call start karta hai.

24. `ic0.call_on_cleanup()`: Yeh function ek cleanup function set karta hai jo call ke baad chalta hai.

25. `ic0.call_data_append()`: Yeh function call ke data ko append (jod) deta hai.

26. `ic0.call_cycles_add()`: Yeh function call ke liye cycles add karta hai.

27. `ic0.call_peform()`: Yeh function call ko perform (execute) karta hai.

28. `ic0.stable_size()`: Yeh function stable memory ka size batata hai.

29. `ic0.stable_grow()`: Yeh function stable memory ko badhata hai.

30. `ic0.stable_write()`: Yeh function stable memory mein data likhta hai.

31. `ic0.stable_read()`: Yeh function stable memory se data padhta hai.

32. `ic0.certified_data_set()`: Yeh function certified data ko set karta hai.

33. `ic0.data_certificate_present()`: Yeh batata hai ki data certificate present hai ya nahi.

34. `ic0.data_certificate_size()`: Yeh function data certificate ke size ko batata hai.

35. `ic0.data_certificate_copy()`: Yeh function data certificate ko memory mein copy karta hai.

36. `ic0.time()`: Yeh function current time batata hai.

37. `ic0.global_timer_set()`: Yeh function global timer ko set karta hai.

38. `ic0.performance_counter()`: Yeh function performance counter ko return karta hai.

39. `ic0.is_controller()`: Yeh check karta hai ki kya koi principal controller hai.

40. `ic0.in_replicated_execution()`: Yeh batata hai ki kya execution replicated hai.

41. `ic0.debug_print()`: Yeh debug ke liye data print karta hai.

42. `ic0.trap()`: Yeh trap (error) trigger karta hai.