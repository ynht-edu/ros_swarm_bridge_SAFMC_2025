
(cl:in-package :asdf)

(defsystem "mission_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PayloadDropCommand" :depends-on ("_package_PayloadDropCommand"))
    (:file "_package_PayloadDropCommand" :depends-on ("_package"))
    (:file "PayloadDropStatus" :depends-on ("_package_PayloadDropStatus"))
    (:file "_package_PayloadDropStatus" :depends-on ("_package"))
  ))