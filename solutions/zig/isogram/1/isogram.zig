const std = @import("std");
const print = std.debug.print;
const mem = @import("std").mem;

pub fn isIsogram(str: []const u8) bool {
    const bytes = str;
    var is = true;
    var index: u64 = 0;

    for (bytes) |_| {
        const currentValue = std.ascii.toLower(bytes[index]);
        var indexNext: u64 = 0;

        if (currentValue != " "[0] and currentValue != "-"[0]) {
            for (bytes) |_| {
                const nextValue = std.ascii.toLower(bytes[indexNext]);
                if (index != indexNext and currentValue == nextValue) {
                    is = false;
                }
                indexNext += 1;
            }
        }
        index += 1;
    }

    return is;
}
