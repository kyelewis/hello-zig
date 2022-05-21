build: src/main.zig build.zig
	zig build

test: src/main.zig
	zig test src/main.zig

run: zig-out/bin/hello-zig
	./zig-out/bin/hello-zig
