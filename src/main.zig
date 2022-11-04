const std = @import("std");

const stdio = @cImport({
  @cInclude("stdio.h");
});

pub fn main() u8 {
  const result: i32 = print_hello();
  if(result < 0) {
    return 1;
  } else {
    return 0;
  }
}

pub fn print_hello() i32 {
  return stdio.printf("Hello, zig!\n");
}

test "print_hello" {
  const result: i32 = print_hello();
  try std.testing.expectEqual(result, 12);
}
