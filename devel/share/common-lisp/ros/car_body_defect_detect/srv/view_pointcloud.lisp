; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude view_pointcloud-request.msg.html

(cl:defclass <view_pointcloud-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass view_pointcloud-request (<view_pointcloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <view_pointcloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'view_pointcloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<view_pointcloud-request> is deprecated: use car_body_defect_detect-srv:view_pointcloud-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <view_pointcloud-request>) ostream)
  "Serializes a message object of type '<view_pointcloud-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <view_pointcloud-request>) istream)
  "Deserializes a message object of type '<view_pointcloud-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<view_pointcloud-request>)))
  "Returns string type for a service object of type '<view_pointcloud-request>"
  "car_body_defect_detect/view_pointcloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'view_pointcloud-request)))
  "Returns string type for a service object of type 'view_pointcloud-request"
  "car_body_defect_detect/view_pointcloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<view_pointcloud-request>)))
  "Returns md5sum for a message object of type '<view_pointcloud-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'view_pointcloud-request)))
  "Returns md5sum for a message object of type 'view_pointcloud-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<view_pointcloud-request>)))
  "Returns full string definition for message of type '<view_pointcloud-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'view_pointcloud-request)))
  "Returns full string definition for message of type 'view_pointcloud-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <view_pointcloud-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <view_pointcloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'view_pointcloud-request
))
;//! \htmlinclude view_pointcloud-response.msg.html

(cl:defclass <view_pointcloud-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass view_pointcloud-response (<view_pointcloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <view_pointcloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'view_pointcloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<view_pointcloud-response> is deprecated: use car_body_defect_detect-srv:view_pointcloud-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <view_pointcloud-response>) ostream)
  "Serializes a message object of type '<view_pointcloud-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <view_pointcloud-response>) istream)
  "Deserializes a message object of type '<view_pointcloud-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<view_pointcloud-response>)))
  "Returns string type for a service object of type '<view_pointcloud-response>"
  "car_body_defect_detect/view_pointcloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'view_pointcloud-response)))
  "Returns string type for a service object of type 'view_pointcloud-response"
  "car_body_defect_detect/view_pointcloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<view_pointcloud-response>)))
  "Returns md5sum for a message object of type '<view_pointcloud-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'view_pointcloud-response)))
  "Returns md5sum for a message object of type 'view_pointcloud-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<view_pointcloud-response>)))
  "Returns full string definition for message of type '<view_pointcloud-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'view_pointcloud-response)))
  "Returns full string definition for message of type 'view_pointcloud-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <view_pointcloud-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <view_pointcloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'view_pointcloud-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'view_pointcloud)))
  'view_pointcloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'view_pointcloud)))
  'view_pointcloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'view_pointcloud)))
  "Returns string type for a service object of type '<view_pointcloud>"
  "car_body_defect_detect/view_pointcloud")