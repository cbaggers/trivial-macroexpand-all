# trivial-macroexpand-all

Provides a macroexpand-all function that calls the implementation specific equivalent.

Supports: `abcl`, `allegro`, `ccl`, `clisp`, `cmucl`, `corman`, `lispworks`, `mkcl`, `sbcl`, `ecl` & `scl`

If you the function from a supported implementation then the two return values are:
- the expanded form
- t

If you the function from an usupported implementation then the two return values are:
- the original form
- nil

## Trivial..again?

Yup another library using the `trivial-*` naming convention`, `but look at the source.. it's pretty damn trivial
