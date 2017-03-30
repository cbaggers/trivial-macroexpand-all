(in-package #:trivial-macroexpand-all)

#+abcl
(defun macroexpand-all (form &optional env)
  (values (ext:macroexpand-all form env) t))

#+allegro
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  #+(and allegro-version>= (version>= 8 0))
  (values (excl::walk-form form) t)
  #-(and allegro-version>= (version>= 8 0))
  (values (excl::walk form) t))

#+ccl
(defun macroexpand-all (form &optional env)
  (values (ccl:macroexpand-all form env) t))

#+clisp
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (values (ext:expand-form form) t))

#+cmucl
(defun macroexpand-all (form &optional env)
  (values (walker:macroexpand-all form env) t))

#+corman
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (values (ccl:macroexpand-all form) t))

#+ecl
(defun macroexpand-all (form &optional env)
  (values (walker:macroexpand-all form env) t))

#+lispworks
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (values (walker:walk-form form) t))

#+mkcl
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (values (walker:macroexpand-all form) t))

#+sbcl
(defun macroexpand-all (form &optional env)
  (values (sb-cltl2:macroexpand-all form env) t))

#+scl
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (values (macroexpand form) t))

#-(or abcl allegro ccl clisp cmucl corman ecl lispworks mkcl sbcl scl)
(defun macroexpand-all (form &optional env)
  (declare (ignore env))
  (values form nil))
