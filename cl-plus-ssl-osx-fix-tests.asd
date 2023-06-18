(defsystem "cl-plus-ssl-osx-fix-tests"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/cl-plus-ssl-osx-fix/"
  :class :package-inferred-system
  :description "Provides tests for cl-plus-ssl-osx-fix."
  :source-control (:git "https://github.com/40ants/cl-plus-ssl-osx-fix")
  :bug-tracker "https://github.com/40ants/cl-plus-ssl-osx-fix/issues"
  :pathname "t"
  :depends-on ("cl-plus-ssl-osx-fix-tests/core")
  :perform (test-op (op c)
                    (unless (symbol-call :rove :run c)
                      (error "Tests failed"))))
