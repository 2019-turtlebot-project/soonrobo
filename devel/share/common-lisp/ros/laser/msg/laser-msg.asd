
(cl:in-package :asdf)

(defsystem "laser-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "st" :depends-on ("_package_st"))
    (:file "_package_st" :depends-on ("_package"))
  ))