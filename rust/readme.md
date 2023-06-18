# Install

To install Rust

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo snap install rustup --classic

rustup install stable
rustup default stable

rustup update
rustup doc
rustfmt
```

<br />

# To create a project

1. cargo new --bin project-name

```
cargo check
cargo build
cargo build --release
cargo run
```

<br />

# To setup a Rust Jupyter Notebook

1. Install a Rust toolchain (e.g. nightly):

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly
```

2. Install Jupyter Notebook

```
pip install notebook
```

3. Install evcxr_jupyter

```
cargo install evcxr_jupyter
evcxr_jupyter --install	
```

<br />