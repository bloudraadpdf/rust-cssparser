set shell := ["bash", "-euo", "pipefail", "-c"]

test *args:
    cargo test {{args}}

build:
    cargo build --all-targets

check:
    cargo clippy --lib -- -D warnings

fmt:
    cargo fmt --all

fmt-check:
    cargo fmt --all -- --check
