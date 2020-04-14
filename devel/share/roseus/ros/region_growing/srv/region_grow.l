;; Auto-generated. Do not edit!


(when (boundp 'region_growing::region_grow)
  (if (not (find-package "REGION_GROWING"))
    (make-package "REGION_GROWING"))
  (shadow 'region_grow (find-package "REGION_GROWING")))
(unless (find-package "REGION_GROWING::REGION_GROW")
  (make-package "REGION_GROWING::REGION_GROW"))
(unless (find-package "REGION_GROWING::REGION_GROWREQUEST")
  (make-package "REGION_GROWING::REGION_GROWREQUEST"))
(unless (find-package "REGION_GROWING::REGION_GROWRESPONSE")
  (make-package "REGION_GROWING::REGION_GROWRESPONSE"))

(in-package "ROS")





(defclass region_growing::region_growRequest
  :super ros::object
  :slots ())

(defmethod region_growing::region_growRequest
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

(defclass region_growing::region_growResponse
  :super ros::object
  :slots ())

(defmethod region_growing::region_growResponse
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

(defclass region_growing::region_grow
  :super ros::object
  :slots ())

(setf (get region_growing::region_grow :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get region_growing::region_grow :datatype-) "region_growing/region_grow")
(setf (get region_growing::region_grow :request) region_growing::region_growRequest)
(setf (get region_growing::region_grow :response) region_growing::region_growResponse)

(defmethod region_growing::region_growRequest
  (:response () (instance region_growing::region_growResponse :init)))

(setf (get region_growing::region_growRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get region_growing::region_growRequest :datatype-) "region_growing/region_growRequest")
(setf (get region_growing::region_growRequest :definition-)
      "---

")

(setf (get region_growing::region_growResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get region_growing::region_growResponse :datatype-) "region_growing/region_growResponse")
(setf (get region_growing::region_growResponse :definition-)
      "---

")



(provide :region_growing/region_grow "d41d8cd98f00b204e9800998ecf8427e")


