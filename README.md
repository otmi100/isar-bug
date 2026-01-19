# isar_analyzer

````
isar_analyzer git:(main) ✗ dart run build_runner build

Building package executable...
Built build_runner:build_runner.
0s isar_community_generator on 5 inputs: 5 skipped
0s source_gen:combining_builder on 5 inputs: 5 skipped

Failed to build with build_runner in 1s; wrote 0 outputs.

log output for isar_community_generator on lib/my_object_wrapper.dart
E Unsupported type. Please annotate the property with @ignore.
  package:isar_analyzer/change_tracker.dart:18:11
     ╷
  18 │   Tid get id;
     │           ^^    ```
````
