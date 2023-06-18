(uiop:define-package #:cl-plus-ssl-osx-fix
  (:use #:cl)
  (:nicknames #:cl-plus-ssl-osx-fix/core)
  (:import-from #:cl+ssl/config))
(in-package #:cl-plus-ssl-osx-fix)


(eval-when (:compile-toplevel :load-toplevel :execute)
  #+darwin
  (progn 
    #+arm64
    (progn
      (cl+ssl/config:define-libcrypto-path "/opt/homebrew/opt/openssl/lib/libcrypto.dylib")
      (cl+ssl/config:define-libssl-path "/opt/homebrew/opt/openssl/lib/libssl.dylib"))
    #+x86-64
    (progn
      (cl+ssl/config:define-libcrypto-path "/usr/local/opt/openssl/lib/libcrypto.dylib")
      (cl+ssl/config:define-libssl-path "/usr/local/opt/openssl/lib/libssl.dylib"))))
