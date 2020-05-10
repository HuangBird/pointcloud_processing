;; Auto-generated. Do not edit!


(when (boundp 'car_body_defect_detect::visualize_input)
  (if (not (find-package "CAR_BODY_DEFECT_DETECT"))
    (make-package "CAR_BODY_DEFECT_DETECT"))
  (shadow 'visualize_input (find-package "CAR_BODY_DEFECT_DETECT")))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_INPUT")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_INPUT"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_INPUTREQUEST")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_INPUTREQUEST"))
(unless (find-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_INPUTRESPONSE")
  (make-package "CAR_BODY_DEFECT_DETECT::VISUALIZE_INPUTRESPONSE"))

(in-package "ROS")





(defclass car_body_defect_detect::visualize_inputRequest
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::visualize_inputRequest
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

(defclass car_body_defect_detect::visualize_inputResponse
  :super ros::object
  :slots ())

(defmethod car_body_defect_detect::visualize_inputResponse
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

(defclass car_body_defect_detect::visualize_input
  :super ros::object
  :slots ())

(setf (get car_body_defect_detect::visualize_input :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_input :datatype-) "car_body_defect_detect/visualize_input")
(setf (get car_body_defect_detect::visualize_input :request) car_body_defect_detect::visualize_inputRequest)
(setf (get car_body_defect_detect::visualize_input :response) car_body_defect_detect::visualize_inputResponse)

(defmethod car_body_defect_detect::visualize_inputRequest
  (:response () (instance car_body_defect_detect::visualize_inputResponse :init)))

(setf (get car_body_defect_detect::visualize_inputRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_inputRequest :datatype-) "car_body_defect_detect/visualize_inputRequest")
(setf (get car_body_defect_detect::visualize_inputRequest :definition-)
      "---
")

(setf (get car_body_defect_detect::visualize_inputResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_body_defect_detect::visualize_inputResponse :datatype-) "car_body_defect_detect/visualize_inputResponse")
(setf (get car_body_defect_detect::visualize_inputResponse :definition-)
      "---
")



(provide :car_body_defect_detect/visualize_input "d41d8cd98f00b204e9800998ecf8427e")


