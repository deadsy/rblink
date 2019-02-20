
TGT = rblink

.PHONY: all
all:
	cargo build

.PHONY: release
release:
	cargo build --release

.PHONY: bin
bin:
	cargo objcopy --bin $(TGT) --release -- -O binary $(TGT).bin

.PHONY: size
size:
	cargo size --bin $(TGT) --release -- -A -x

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
	-rm $(TGT).bin
