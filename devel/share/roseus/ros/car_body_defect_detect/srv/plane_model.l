;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::plane_model)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'plane_model (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::PLANE_MODEL")
  (make-package "CAR_BODY_DEFECT_DETECT::PLANE_MODEL"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::PLANE_MODELREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::PLANE_MODELREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::PLANE_MODELRESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::PLANE_MODELRESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::plane_modelRequest
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::plane_modelRequest
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

(defclass car_body_defect_detect::plane_modelResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::plane_modelResponse
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

(defclass car_body_defect_detect::plane_model
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::plane_model :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::plane_model :datatype-) "car_body_defect_detect/plane_model")
(setf (get car_body_defect_detect::plane_model :request) car_body_defect_detect::plane_modelRequest)
(setf (get car_body_defect_detect::plane_model :response) car_body_defect_detect::plane_modelResponse)

(defmethod car_body_defect_detect::plane_modelRequest
  (:response () (instance car_body_defect_detect::plane_modelResponse :init)))

(setf (get car_body_defect_detect::plane_modelRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::plane_modelRequest :datatype-) "car_body_defect_detect/plane_modelRequest")
(setf (get car_body_defect_detect::plane_modelRequest :definition-)
      "---
")

(setf (get car_body_defect_detect::plane_modelResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::plane_modelResponse :datatype-) "car_body_defect_detect/plane_modelResponse")
(setf (get car_body_defect_detect::plane_modelResponse :definition-)
      "---
")



(provide :car_body_defect_detect/plane_model "d41d8cd98f00b204e9800998ecf8427e")


