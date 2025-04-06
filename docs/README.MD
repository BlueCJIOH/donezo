# Donezo App (Todo)

Donezo is a simple yet powerful todo application designed to help you manage your daily tasks efficiently. Built using Python and Litestar, Donezo provides a clean interface and straightforward functionality, making it easy to track and complete your tasks.

## Requirements
- [`uv`](https://github.com/astral-sh/uv) package manager (required for dependency management)

## Installation

Before running the app or using the provided Makefile and Docker setup, ensure you have `uv` installed. You can find detailed installation instructions on the official repository:

👉 [uv Official Installation Guide](https://github.com/astral-sh/uv/tree/main?tab=readme-ov-file#installation)

**Quick install or skip this step**:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

**Verify installation**:
```bash
uv --version
```

## Usage
### Docker
**Build and start the application**:
```bash
make up
```
**Stop the application**:
```bash
make down
```
