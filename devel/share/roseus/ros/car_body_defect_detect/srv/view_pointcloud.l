;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::view_pointcloud)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'view_pointcloud (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VIEW_POINTCLOUD")
  (make-package "CAR_BODY_DEFECT_DETECT::VIEW_POINTCLOUD"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VIEW_POINTCLOUDREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::VIEW_POINTCLOUDREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VIEW_POINTCLOUDRESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::VIEW_POINTCLOUDRESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::view_pointcloudRequest
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::view_pointcloudRequest
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

(defclass car_body_defect_detect::view_pointcloudResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::view_pointcloudResponse
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

(defclass car_body_defect_detect::view_pointcloud
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::view_pointcloud :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::view_pointcloud :datatype-) "car_body_defect_detect/view_pointcloud")
(setf (get car_body_defect_detect::view_pointcloud :request) car_body_defect_detect::view_pointcloudRequest)
(setf (get car_body_defect_detect::view_pointcloud :response) car_body_defect_detect::view_pointcloudResponse)

(defmethod car_body_defect_detect::view_pointcloudRequest
  (:response () (instance car_body_defect_detect::view_pointcloudResponse :init)))

(setf (get car_body_defect_detect::view_pointcloudRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::view_pointcloudRequest :datatype-) "car_body_defect_detect/view_pointcloudRequest")
(setf (get car_body_defect_detect::view_pointcloudRequest :definition-)
      "---

")

(setf (get car_body_defect_detect::view_pointcloudResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::view_pointcloudResponse :datatype-) "car_body_defect_detect/view_pointcloudResponse")
(setf (get car_body_defect_detect::view_pointcloudResponse :definition-)
      "---

")



(provide :car_body_defect_detect/view_pointcloud "d41d8cd98f00b204e9800998ecf8427e")


