const std = @import("std");

const stdio = @cImport({
  @cInclude("stdio.h");
});

pub fn main() void {
  _ = stdio.printf("Hello, zig!\n");
}

test "test" {
    try std.testing.expectEqual(10, 3 + 7);
}
