build: src/main.zig build.zig
	zig build 

test: src/main.zig build.zig
	zig build test

run: src/main.zig build.zig
	zig build run

docker-build:
	docker build -t hello-zig:latest .

docker-run:
	docker run --interactive --tty --rm --mount type=bind,source=./,target=/app hello-zig:latest
