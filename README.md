## Huff Tests Github Action

Github Action that:

1. Checks out your local repository
2. Installs huffc
3. Runs Huff tests on any files that match the default or specified parameters:

- 1. Named `*.t.huff` or the specified extension
- 2. Located in `src` or the specified directory
- 3. With the specified output or `list`

## Example Workflow

```yaml
name: Huff tests

on: [push]

jobs:
  tests:
    name: Tests with Huff
    runs-on: ubuntu-latest
    steps:
      - name: Run Huff Tests
        uses: huff-language/huff-tests-action@v3
        with:
          # Below arguments are optional:
          with-location: "tests" # Defaults to "src"
          with-extension: "*.t.huff" # Defaults to "*.t.huff*"
          with-format: "table" # Defaults to "list"
```

## Inputs

| **Name**         | **Required** | **Description**                                                        | **Type** |
| ---------------- | ------------ | ---------------------------------------------------------------------- | -------- |
| `with-extension` | False        | The extension of your huff tests, e.g. `t.huff` or `.poggers.huff`.    | string   |
| `with-location`  | False        | The location of your huff test files, e.g. `src` or `contracts`        | string   |
| `with-format`    | False        | The format of your huff test output. One of ["list", "table", "json"]. | string   |

## Contributing

All contributions are welcome.

## Acknowledgements

- [Huff Toolchain](https://github.com/huff-language/huff-toolchain)
- [Huff-rs](https://github.com/huff-language/huff-rs)
- [This Tutorial](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)
