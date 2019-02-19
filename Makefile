
.PHONY: all
all:
	cargo build

.PHONY: release
release:
	cargo build --release

.PHONY: fmt
fmt:
	cargo fmt

.PHONY: doc
doc:
	cargo doc --open

.PHONY: lint
lint:
	cargo clippy

.PHONY: clean
clean:
	cargo clean
