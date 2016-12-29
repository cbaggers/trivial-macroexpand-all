(in-package #:trivial-macroexpand-all)

#+abcl
(defun macroexpand-all (form &optional env)
  (ext:macroexpand-all form env))

#+allegro
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  #+(and allegro-version>= (version>= 8 0))
  (excl::walk-form form)
  #-(and allegro-version>= (version>= 8 0))
  (excl::walk form))

#+ccl
(defun macroexpand-all (form &optional env)
  (ccl:macroexpand-all form env))

#+clisp
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (ext:expand-form form))

#+cmucl
(defun macroexpand-all (form &optional env)
  (walker:macroexpand-all form env))

#+corman
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (ccl:macroexpand-all form))

#+ecl
(defun macroexpand-all (form &optional env)
  (walker:macroexpand-all form env))

#+lispworks
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (walker:walk-form form))

#+mkcl
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (walker:macroexpand-all form))

#+sbcl
(defun macroexpand-all (form &optional env)
  (sb-cltl2:macroexpand-all form env))

#+scl
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (macroexpand form))

#-(or abcl allegro ccl clisp cmucl corman ecl lispworks mkcl sbcl scl)
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (warn "trivial-macroexpand-all is not currently available for this implementation")
  form)
