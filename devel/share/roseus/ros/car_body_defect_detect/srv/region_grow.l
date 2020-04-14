;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::region_grow)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'region_grow (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::REGION_GROW")
  (make-package "CAR_BODY_DEFECT_DETECT::REGION_GROW"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::REGION_GROWREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::REGION_GROWREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::REGION_GROWRESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::REGION_GROWRESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::region_growRequest
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::region_growRequest
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

(defclass car_body_defect_detect::region_growResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::region_growResponse
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

(defclass car_body_defect_detect::region_grow
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::region_grow :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::region_grow :datatype-) "car_body_defect_detect/region_grow")
(setf (get car_body_defect_detect::region_grow :request) car_body_defect_detect::region_growRequest)
(setf (get car_body_defect_detect::region_grow :response) car_body_defect_detect::region_growResponse)

(defmethod car_body_defect_detect::region_growRequest
  (:response () (instance car_body_defect_detect::region_growResponse :init)))

(setf (get car_body_defect_detect::region_growRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::region_growRequest :datatype-) "car_body_defect_detect/region_growRequest")
(setf (get car_body_defect_detect::region_growRequest :definition-)
      "---

")

(setf (get car_body_defect_detect::region_growResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::region_growResponse :datatype-) "car_body_defect_detect/region_growResponse")
(setf (get car_body_defect_detect::region_growResponse :definition-)
      "---

")



(provide :car_body_defect_detect/region_grow "d41d8cd98f00b204e9800998ecf8427e")


