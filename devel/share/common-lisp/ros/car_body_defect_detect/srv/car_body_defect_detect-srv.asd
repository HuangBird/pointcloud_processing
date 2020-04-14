
(cl:in-package :asdf)

(defsystem "car_body_defect_detect-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "read_pcd" :depends-on ("_package_read_pcd"))
    (:file "_package_read_pcd" :depends-on ("_package"))
    (:file "region_grow" :depends-on ("_package_region_grow"))
    (:file "_package_region_grow" :depends-on ("_package"))
  ))