const std = @import("std");
const print = std.debug.print;

pub fn isLeapYear(year: u32) bool {
    if (year % 400 == 0) {
        return true;
    } else if (year % 100 == 0) {
        return false;
    }

    return year % 4 == 0;
}

pub fn main() !void {
    print("{}\n", .{isLeapYear(1900)});
}
