const std = @import("std");
const print = std.debug.print;

pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32, // Adenine
    c: u32, // Cytosine
    g: u32, // Guanine
    t: u32, // Thymine
};

pub fn countNucleotides(DNA: []const u8) NucleotideError!Counts {
    var nucleotidesCounts = Counts{ .a = 0, .c = 0, .g = 0, .t = 0 };

    try for (DNA) |nucleotide| {
        const nucleotideAllowed = switch (std.ascii.toLower(nucleotide)) {
            "a"[0] => true,
            "c"[0] => true,
            "g"[0] => true,
            "t"[0] => true,
            else => false,
        };

        if (!nucleotideAllowed) {
            break NucleotideError.Invalid;
        }

        if (std.ascii.toLower(nucleotide) == "a"[0]) {
            nucleotidesCounts.a += 1;
        } else if (std.ascii.toLower(nucleotide) == "c"[0]) {
            nucleotidesCounts.c += 1;
        } else if (std.ascii.toLower(nucleotide) == "g"[0]) {
            nucleotidesCounts.g += 1;
        } else if (std.ascii.toLower(nucleotide) == "t"[0]) {
            nucleotidesCounts.t += 1;
        }
    };

    return nucleotidesCounts;
}
