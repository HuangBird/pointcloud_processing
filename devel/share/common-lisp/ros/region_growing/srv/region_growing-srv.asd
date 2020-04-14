
(cl:in-package :asdf)

(defsystem "region_growing-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "region_grow" :depends-on ("_package_region_grow"))
    (:file "_package_region_grow" :depends-on ("_package"))
  ))