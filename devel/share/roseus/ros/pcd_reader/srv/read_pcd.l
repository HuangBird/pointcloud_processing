;; Auto-generated. Do not edit!


(when (boundp 'pcd_reader::read_pcd)
  (if (not (find-package "PCD_READER"))
    (make-package "PCD_READER"))
  (shadow 'read_pcd (find-package "PCD_READER")))
(unless (find-package "PCD_READER::READ_PCD")
  (make-package "PCD_READER::READ_PCD"))
(unless (find-package "PCD_READER::READ_PCDREQUEST")
  (make-package "PCD_READER::READ_PCDREQUEST"))
(unless (find-package "PCD_READER::READ_PCDRESPONSE")
  (make-package "PCD_READER::READ_PCDRESPONSE"))

(in-package "ROS")





(defclass pcd_reader::read_pcdRequest
  :super ros::object
  :slots (_file_name ))

(defmethod pcd_reader::read_pcdRequest
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

(defclass pcd_reader::read_pcdResponse
  :super ros::object
  :slots ())

(defmethod pcd_reader::read_pcdResponse
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

(defclass pcd_reader::read_pcd
  :super ros::object
  :slots ())

(setf (get pcd_reader::read_pcd :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get pcd_reader::read_pcd :datatype-) "pcd_reader/read_pcd")
(setf (get pcd_reader::read_pcd :request) pcd_reader::read_pcdRequest)
(setf (get pcd_reader::read_pcd :response) pcd_reader::read_pcdResponse)

(defmethod pcd_reader::read_pcdRequest
  (:response () (instance pcd_reader::read_pcdResponse :init)))

(setf (get pcd_reader::read_pcdRequest :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get pcd_reader::read_pcdRequest :datatype-) "pcd_reader/read_pcdRequest")
(setf (get pcd_reader::read_pcdRequest :definition-)
      "string file_name
---

")

(setf (get pcd_reader::read_pcdResponse :md5sum-) "2415261c9605b9f38867ffbbe495fc04")
(setf (get pcd_reader::read_pcdResponse :datatype-) "pcd_reader/read_pcdResponse")
(setf (get pcd_reader::read_pcdResponse :definition-)
      "string file_name
---

")



(provide :pcd_reader/read_pcd "2415261c9605b9f38867ffbbe495fc04")


