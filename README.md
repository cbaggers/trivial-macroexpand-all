# trivial-macroexpand-all

Provides a macroexpand-all function that calls the implementation specific equivalent.

Supports: `abcl`, `allegro`, `ccl`, `clisp`, `cmucl`, `corman`, `lispworks`, `mkcl`, `sbcl`, `ecl` & `scl`

On unsupported implementations it returns the form unchanged and emits a warning.

## Trivial..again?

Yup another library using the `trivial-*` naming convention`, `but look at the source.. it's pretty damn trivial
