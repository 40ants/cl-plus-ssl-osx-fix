(uiop:define-package #:cl-plus-ssl-osx-fix-docs/index
  (:use #:cl)
  (:import-from #:pythonic-string-reader
                #:pythonic-string-syntax)
  (:import-from #:named-readtables
                #:in-readtable)
  (:import-from #:40ants-doc
                #:defsection
                #:defsection-copy)
  (:import-from #:cl-plus-ssl-osx-fix-docs/changelog
                #:@changelog)
  (:import-from #:docs-config
                #:docs-config)
  (:export #:@index
           #:@readme
           #:@changelog))
(in-package #:cl-plus-ssl-osx-fix-docs/index)

(in-readtable pythonic-string-syntax)


(defmethod docs-config ((system (eql (asdf:find-system "cl-plus-ssl-osx-fix-docs"))))
  ;; 40ANTS-DOC-THEME-40ANTS system will bring
  ;; as dependency a full 40ANTS-DOC but we don't want
  ;; unnecessary dependencies here:
  #+quicklisp
  (ql:quickload "40ants-doc-theme-40ants")
  #-quicklisp
  (asdf:load-system "40ants-doc-theme-40ants")
  
  (list :theme
        (find-symbol "40ANTS-THEME"
                     (find-package "40ANTS-DOC-THEME-40ANTS"))))


(defsection @index (:title "cl-plus-ssl-osx-fix - A fix for CL+SSL library paths on OSX needed when you have X86-64 and Arm64 Homebrew installations. Should be loaded before CL+SSL."
                    :ignore-words ("JSON"
                                   "HTTP"
                                   "TODO"
                                   "Unlicense"
                                   "SSL"
                                   "CL+"
                                   "OSX"
                                   "REPL"
                                   "X86-64"
                                   "GIT"))
  (cl-plus-ssl-osx-fix system)
  "
[![](https://github-actions.40ants.com/40ants/cl-plus-ssl-osx-fix/matrix.svg?only=ci.run-tests)](https://github.com/40ants/cl-plus-ssl-osx-fix/actions)

![Quicklisp](http://quickdocs.org/badge/cl-plus-ssl-osx-fix.svg)
"
  (@installation section)
  (@usage section))


(defsection-copy @readme @index)


(defsection @installation (:title "Installation")
  """
You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :cl-plus-ssl-osx-fix)
```
""")


(defsection @usage (:title "Usage"
                    :ignore-words ("ASDF:PACKAGE-INFERRED-SYSTEM"
                                   "ASDF"
                                   "40A"))
  "
If you are building your soft for OSX, then ensure it depends on this fix which will choose
dynamic libraries with a proper archetecture in case if both X86-64 and Arm64 libraries are present.

Note, this library should be loaded first, before an attempt for CL+SSL loading.
")
