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
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'read_pcd-request)))
  "Returns md5sum for a message object of type 'read_pcd-request"
  "2415261c9605b9f38867ffbbe495fc04")
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
  ()
)

(cl:defclass read_pcd-response (<read_pcd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <read_pcd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'read_pcd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcd_reader-srv:<read_pcd-response> is deprecated: use pcd_reader-srv:read_pcd-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <read_pcd-response>) ostream)
  "Serializes a message object of type '<read_pcd-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <read_pcd-response>) istream)
  "Deserializes a message object of type '<read_pcd-response>"
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
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'read_pcd-response)))
  "Returns md5sum for a message object of type 'read_pcd-response"
  "2415261c9605b9f38867ffbbe495fc04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<read_pcd-response>)))
  "Returns full string definition for message of type '<read_pcd-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'read_pcd-response)))
  "Returns full string definition for message of type 'read_pcd-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <read_pcd-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <read_pcd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'read_pcd-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'read_pcd)))
  'read_pcd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'read_pcd)))
  'read_pcd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'read_pcd)))
  "Returns string type for a service object of type '<read_pcd>"
  "pcd_reader/read_pcd")