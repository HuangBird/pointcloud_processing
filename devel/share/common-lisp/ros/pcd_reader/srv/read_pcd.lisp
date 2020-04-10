; Auto-generated. Do not edit!


(cl:in-package pcd_reader-srv)


;//! \htmlinclude read_pcd-request.msg.html

(cl:defclass <read_pcd-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform ""))
)

(cl:defclass read_pcd-request (<read_pcd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <read_pcd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'read_pcd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcd_reader-srv:<read_pcd-request> is deprecated: use pcd_reader-srv:read_pcd-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <read_pcd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcd_reader-srv:file_name-val is deprecated.  Use pcd_reader-srv:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <read_pcd-request>) ostream)
  "Serializes a message object of type '<read_pcd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <read_pcd-request>) istream)
  "Deserializes a message object of type '<read_pcd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<read_pcd-request>)))
  "Returns string type for a service object of type '<read_pcd-request>"
  "pcd_reader/read_pcdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_pcd-request)))
  "Returns string type for a service object of type 'read_pcd-request"
  "pcd_reader/read_pcdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<read_pcd-request>)))
  "Returns md5sum for a message object of type '<read_pcd-request>"
  "56f1a0fa28ead46b41096319b59f0aa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'read_pcd-request)))
  "Returns md5sum for a message object of type 'read_pcd-request"
  "56f1a0fa28ead46b41096319b59f0aa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<read_pcd-request>)))
  "Returns full string definition for message of type '<read_pcd-request>"
  (cl:format cl:nil "string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'read_pcd-request)))
  "Returns full string definition for message of type 'read_pcd-request"
  (cl:format cl:nil "string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <read_pcd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <read_pcd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'read_pcd-request
    (cl:cons ':file_name (file_name msg))
))
;//! \htmlinclude read_pcd-response.msg.html

(cl:defclass <read_pcd-response> (roslisp-msg-protocol:ros-message)
  ((point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass read_pcd-response (<read_pcd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <read_pcd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'read_pcd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcd_reader-srv:<read_pcd-response> is deprecated: use pcd_reader-srv:read_pcd-response instead.")))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <read_pcd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcd_reader-srv:point_cloud-val is deprecated.  Use pcd_reader-srv:point_cloud instead.")
  (point_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <read_pcd-response>) ostream)
  "Serializes a message object of type '<read_pcd-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <read_pcd-response>) istream)
  "Deserializes a message object of type '<read_pcd-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<read_pcd-response>)))
  "Returns string type for a service object of type '<read_pcd-response>"
  "pcd_reader/read_pcdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_pcd-response)))
  "Returns string type for a service object of type 'read_pcd-response"
  "pcd_reader/read_pcdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<read_pcd-response>)))
  "Returns md5sum for a message object of type '<read_pcd-response>"
  "56f1a0fa28ead46b41096319b59f0aa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'read_pcd-response)))
  "Returns md5sum for a message object of type 'read_pcd-response"
  "56f1a0fa28ead46b41096319b59f0aa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<read_pcd-response>)))
  "Returns full string definition for message of type '<read_pcd-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 point_cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'read_pcd-response)))
  "Returns full string definition for message of type 'read_pcd-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 point_cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <read_pcd-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <read_pcd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'read_pcd-response
    (cl:cons ':point_cloud (point_cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'read_pcd)))
  'read_pcd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'read_pcd)))
  'read_pcd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_pcd)))
  "Returns string type for a service object of type '<read_pcd>"
  "pcd_reader/read_pcd")