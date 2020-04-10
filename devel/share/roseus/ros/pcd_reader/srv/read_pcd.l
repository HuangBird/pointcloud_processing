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



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


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
  :slots (_point_cloud ))

(defmethod pcd_reader::read_pcdResponse
  (:init
   (&key
    ((:point_cloud __point_cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _point_cloud __point_cloud)
   self)
  (:point_cloud
   (&rest __point_cloud)
   (if (keywordp (car __point_cloud))
       (send* _point_cloud __point_cloud)
     (progn
       (if __point_cloud (setq _point_cloud (car __point_cloud)))
       _point_cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _point_cloud
    (send _point_cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _point_cloud
       (send _point_cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _point_cloud
     (send _point_cloud :deserialize buf ptr-) (incf ptr- (send _point_cloud :serialization-length))
   ;;
   self)
  )

(defclass pcd_reader::read_pcd
  :super ros::object
  :slots ())

(setf (get pcd_reader::read_pcd :md5sum-) "56f1a0fa28ead46b41096319b59f0aa2")
(setf (get pcd_reader::read_pcd :datatype-) "pcd_reader/read_pcd")
(setf (get pcd_reader::read_pcd :request) pcd_reader::read_pcdRequest)
(setf (get pcd_reader::read_pcd :response) pcd_reader::read_pcdResponse)

(defmethod pcd_reader::read_pcdRequest
  (:response () (instance pcd_reader::read_pcdResponse :init)))

(setf (get pcd_reader::read_pcdRequest :md5sum-) "56f1a0fa28ead46b41096319b59f0aa2")
(setf (get pcd_reader::read_pcdRequest :datatype-) "pcd_reader/read_pcdRequest")
(setf (get pcd_reader::read_pcdRequest :definition-)
      "string file_name
---
sensor_msgs/PointCloud2 point_cloud


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")

(setf (get pcd_reader::read_pcdResponse :md5sum-) "56f1a0fa28ead46b41096319b59f0aa2")
(setf (get pcd_reader::read_pcdResponse :datatype-) "pcd_reader/read_pcdResponse")
(setf (get pcd_reader::read_pcdResponse :definition-)
      "string file_name
---
sensor_msgs/PointCloud2 point_cloud


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")



(provide :pcd_reader/read_pcd "56f1a0fa28ead46b41096319b59f0aa2")


