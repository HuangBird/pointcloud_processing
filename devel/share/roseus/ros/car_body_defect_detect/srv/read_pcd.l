;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::read_pcd)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'read_pcd (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::READ_PCD")
  (make-package "CAR_BODY_DEFECT_DETECT::READ_PCD"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::READ_PCDREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::READ_PCDREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::READ_PCDRESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::READ_PCDRESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::read_pcdRequest
  :super ros::object
  :slots (_file_name ))

(defmethod car_body_defect_detect::read_pcdRequest
  (:init
   (&key
    ((:file_name __file_name) "")
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass car_body_defect_detect::read_pcdResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::read_pcdResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass car_body_defect_detect::read_pcd
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::read_pcd :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get car_body_defect_detect::read_pcd :datatype-) "car_body_defect_detect/read_pcd")
(setf (get car_body_defect_detect::read_pcd :request) car_body_defect_detect::read_pcdRequest)
(setf (get car_body_defect_detect::read_pcd :response) car_body_defect_detect::read_pcdResponse)

(defmethod car_body_defect_detect::read_pcdRequest
  (:response () (instance car_body_defect_detect::read_pcdResponse :init)))

(setf (get car_body_defect_detect::read_pcdRequest :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get car_body_defect_detect::read_pcdRequest :datatype-) "car_body_defect_detect/read_pcdRequest")
(setf (get car_body_defect_detect::read_pcdRequest :definition-)
      "string file_name
---

")

(setf (get car_body_defect_detect::read_pcdResponse :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get car_body_defect_detect::read_pcdResponse :datatype-) "car_body_defect_detect/read_pcdResponse")
(setf (get car_body_defect_detect::read_pcdResponse :definition-)
      "string file_name
---

")



(provide :car_body_defect_detect/read_pcd "2415261c9605b9f38867ffbbe495fc04")


