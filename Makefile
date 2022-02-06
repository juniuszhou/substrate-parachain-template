.PHONY: build-all ## Build release version
build-all:
	cargo build --release

# format

.PHONY: fmtcheck ## cargo fmt check
fmtcheck:
	cargo fmt --all -- --check

.PHONY: fmt ## cargo fmt all
fmt:
	cargo fmt --all

# clippy

.PHONY: clippy ## cargo clippy
clippy:
	SKIP_WASM_BUILD=1 cargo clippy --workspace --all-targets --all-features -- -D warnings
