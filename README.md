# trivial-macroexpand-all

Provides a macroexpand-all function that calls the implementation specific equivalent.

Supports: `abcl`, `allegro`, `ccl`, `clisp`, `cmucl`, `corman`, `lispworks`, `mkcl`, `sbcl`, `ecl` & `scl`

If you the function from a supported implementation then the two return values are:
- the expanded form
- t

If you the function from an usupported implementation then the two return values are:
- the original form
- nil

## Example

```
CL-USER> (trivial-macroexpand-all:macroexpand-all '(or 1 2 3 4))

(LET ((#:G622 1))
  (IF #:G622
      #:G622
      (LET ((#:G623 2))
        (IF #:G623
            #:G623
            (LET ((#:G624 3))
              (IF #:G624
                  #:G624
                  4)))))
```                  

## Trivial..again?

Yup another library using the `trivial-*` naming convention`, `but look at the source.. it's pretty damn trivial
