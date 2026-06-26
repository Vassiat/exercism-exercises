## Zig Track ⚡
* **Version:** [`0.16.0`](https://ziglang.org/documentation/0.16.0/)

---
### 🛠️ Local Workflow
To iterate rapidly without running the entire test suite immediately, I use a custom local workflow for this track:
1. Download the exercise:
   ```bash
   exercism download --exercise=slug --track=zig
   ```
2. Open the source file (e.g., `pangram.zig`) and inject a `pub fn main()` block to test the logic manually:
   ```zig
   const std = @import("std");
   // default exercise function
   pub fn isPangram(){
     // ... Logic here ...
   }

   pub fn main() void {
       // Quick evaluation
       // _ = isPangram("");
       
       // Visual debugging with case tests
       std.debug.print("Expect false: {}\n", .{isPangram("")});
       std.debug.print("Expect true: {}\n", .{isPangram("The quick brown fox jumps over the lazy dog")});
   }
   ```
   3. Run and iterate quickly:
      ```bash
      zig run pangram.zig
      ```
   4. Once logic passes tests run exercism submit:
      ```bash
      exercism submit
      ```

### 📚 Learning Material & External Help
* **Official Docs** <!-- standard library mechanics (`std.mem`, `std.ascii`).-->
* **Community Help:**
  * [Reddit](https://www.reddit.com/r/Zig/)
