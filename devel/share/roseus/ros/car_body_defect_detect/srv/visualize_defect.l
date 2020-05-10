;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::visualize_defect)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'visualize_defect (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_DEFECT")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_DEFECT"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_DEFECTREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_DEFECTREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_DEFECTRESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_DEFECTRESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::visualize_defectRequest
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::visualize_defectRequest
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

(defclass car_body_defect_detect::visualize_defectResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::visualize_defectResponse
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

(defclass car_body_defect_detect::visualize_defect
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::visualize_defect :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_defect :datatype-) "car_body_defect_detect/visualize_defect")
(setf (get car_body_defect_detect::visualize_defect :request) car_body_defect_detect::visualize_defectRequest)
(setf (get car_body_defect_detect::visualize_defect :response) car_body_defect_detect::visualize_defectResponse)

(defmethod car_body_defect_detect::visualize_defectRequest
  (:response () (instance car_body_defect_detect::visualize_defectResponse :init)))

(setf (get car_body_defect_detect::visualize_defectRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_defectRequest :datatype-) "car_body_defect_detect/visualize_defectRequest")
(setf (get car_body_defect_detect::visualize_defectRequest :definition-)
      "---
")

(setf (get car_body_defect_detect::visualize_defectResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_defectResponse :datatype-) "car_body_defect_detect/visualize_defectResponse")
(setf (get car_body_defect_detect::visualize_defectResponse :definition-)
      "---
")



(provide :car_body_defect_detect/visualize_defect "d41d8cd98f00b204e9800998ecf8427e")


