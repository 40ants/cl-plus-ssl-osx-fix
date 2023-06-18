(defsystem "cl-plus-ssl-osx-fix-ci"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/cl-plus-ssl-osx-fix/"
  :class :package-inferred-system
  :description "Provides CI settings for cl-plus-ssl-osx-fix."
  :source-control (:git "https://github.com/40ants/cl-plus-ssl-osx-fix")
  :bug-tracker "https://github.com/40ants/cl-plus-ssl-osx-fix/issues"
  :pathname "src"
  :depends-on ("40ants-ci"
               "cl-plus-ssl-osx-fix-ci/ci"))
