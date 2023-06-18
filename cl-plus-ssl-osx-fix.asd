#-asdf3.1 (error "cl-plus-ssl-osx-fix requires ASDF 3.1 because for lower versions pathname does not work for package-inferred systems.")
(defsystem "cl-plus-ssl-osx-fix"
  :description "A fix for CL+SSL library paths on OSX needed when you have Intel and Arm64 Homebrew installations. Should be loaded before CL+SSL."
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/cl-plus-ssl-osx-fix/"
  :source-control (:git "https://github.com/40ants/cl-plus-ssl-osx-fix")
  :bug-tracker "https://github.com/40ants/cl-plus-ssl-osx-fix/issues"
  :class :40ants-asdf-system
  :defsystem-depends-on ("40ants-asdf-system")
  :pathname "src"
  :depends-on ("cl-plus-ssl-osx-fix/core")
  :in-order-to ((test-op (test-op "cl-plus-ssl-osx-fix-tests"))))
