
(cl:in-package :asdf)

(defsystem "pcd_reader-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "read_pcd" :depends-on ("_package_read_pcd"))
    (:file "_package_read_pcd" :depends-on ("_package"))
  ))