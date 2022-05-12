
(cl:in-package :asdf)

(defsystem "plumbing_server_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mul" :depends-on ("_package_mul"))
    (:file "_package_mul" :depends-on ("_package"))
  ))