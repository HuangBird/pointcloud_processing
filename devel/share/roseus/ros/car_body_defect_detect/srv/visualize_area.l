;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::visualize_area)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'visualize_area (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_AREA")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_AREA"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_AREAREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_AREAREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_AREARESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_AREARESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::visualize_areaRequest
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::visualize_areaRequest
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

(defclass car_body_defect_detect::visualize_areaResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::visualize_areaResponse
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

(defclass car_body_defect_detect::visualize_area
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::visualize_area :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_area :datatype-) "car_body_defect_detect/visualize_area")
(setf (get car_body_defect_detect::visualize_area :request) car_body_defect_detect::visualize_areaRequest)
(setf (get car_body_defect_detect::visualize_area :response) car_body_defect_detect::visualize_areaResponse)

(defmethod car_body_defect_detect::visualize_areaRequest
  (:response () (instance car_body_defect_detect::visualize_areaResponse :init)))

(setf (get car_body_defect_detect::visualize_areaRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_areaRequest :datatype-) "car_body_defect_detect/visualize_areaRequest")
(setf (get car_body_defect_detect::visualize_areaRequest :definition-)
      "---
")

(setf (get car_body_defect_detect::visualize_areaResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_areaResponse :datatype-) "car_body_defect_detect/visualize_areaResponse")
(setf (get car_body_defect_detect::visualize_areaResponse :definition-)
      "---
")



(provide :car_body_defect_detect/visualize_area "d41d8cd98f00b204e9800998ecf8427e")


