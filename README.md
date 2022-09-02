# Huff Tests Github Action

Github Action that:

1. Checks out your local repository
2. Installs huffc
3. Runs Huff tests on any files named \*.t.huff

Optionally:

- Install Foundry and run Forge tests if the `with-forge-tests` option is set to true

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
        uses: cheethas/huff-tests-action@bd4e55aaa7587b5ed01d730dea53fadd0399f07a
        with:
          # Optional
          with-forge-tests: false
          test-extension: ".t.huff"
```

## Inputs

| **Name**           | **Required** | **Description**                                                         | **Type** |
| ------------------ | ------------ | ----------------------------------------------------------------------- | -------- |
| `test-extension`   | False        | The extension of your huff tests, e.g. `t.huff` or `.poggers.huff`.     | string   |
| `with-forge-tests` | False        | Installs foundry and runs `forge test -vvv` along side your huff tests. | boolean  |

## Contributing

All contributions are welcome.

## Acknowledgements

- [Huff Toolchain](https://github.com/huff-language/huff-toolchain)
- [Huff-rs](https://github.com/huff-language/huff-rs)
- [This Tutorial](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)
