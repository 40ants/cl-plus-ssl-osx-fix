(uiop:define-package #:cl-plus-ssl-osx-fix-tests/core
  (:use #:cl)
  (:import-from #:rove
                #:deftest
                #:ok
                #:testing))
(in-package #:cl-plus-ssl-osx-fix-tests/core)


(deftest test-example ()
  (ok t "Replace this test with something useful."))
