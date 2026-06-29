const std = @import("std");
const toLowerCase = std.ascii.toLower;
const mem = std.mem;

pub fn isPangram(str: []const u8) bool {
    const alphabet = "abcdefghijklmnopqrstuvwxyz";
    var result: [26]u8 = @splat(0);

    for (alphabet, 0..) |alphabetChar, i| {
        for (str) |char| {
            if (toLowerCase(char) == alphabetChar) {
                result[i] = alphabetChar;
            }
        }
    }

    return mem.eql(u8, &result, alphabet);
}
