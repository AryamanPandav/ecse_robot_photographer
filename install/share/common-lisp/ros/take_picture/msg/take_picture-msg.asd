
(cl:in-package :asdf)

(defsystem "take_picture-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "photo" :depends-on ("_package_photo"))
    (:file "_package_photo" :depends-on ("_package"))
  ))