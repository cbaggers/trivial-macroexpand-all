;;;; macroexpand-dang-and-blast.asd

(asdf:defsystem #:macroexpand-dang-and-blast
  :description "Call each implementation's macroexpand-all equivalent"
  :author "Chris Bagley <chris.bagley@gmail.com>"
  :license "Unlicense"
  :serial t
  :depends-on (#+(not (or :abcl :allegro :ccl :clisp :cmucl :corman :lispworks :mkcl :sbcl :scl)) :macroexpand-dammit)
  :components ((:file "package-dab")
               (:file "implementations-dab")))
