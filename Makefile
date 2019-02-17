
.PHONY: all fmt doc lint clean

all:
	cargo build

fmt:
	cargo fmt

doc:
	cargo doc --open

lint:
	cargo clippy

clean:
	cargo clean
