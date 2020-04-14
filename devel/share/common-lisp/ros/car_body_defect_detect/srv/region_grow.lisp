; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude region_grow-request.msg.html

(cl:defclass <region_grow-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass region_grow-request (<region_grow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <region_grow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'region_grow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<region_grow-request> is deprecated: use car_body_defect_detect-srv:region_grow-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <region_grow-request>) ostream)
  "Serializes a message object of type '<region_grow-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <region_grow-request>) istream)
  "Deserializes a message object of type '<region_grow-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<region_grow-request>)))
  "Returns string type for a service object of type '<region_grow-request>"
  "car_body_defect_detect/region_growRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'region_grow-request)))
  "Returns string type for a service object of type 'region_grow-request"
  "car_body_defect_detect/region_growRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<region_grow-request>)))
  "Returns md5sum for a message object of type '<region_grow-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'region_grow-request)))
  "Returns md5sum for a message object of type 'region_grow-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<region_grow-request>)))
  "Returns full string definition for message of type '<region_grow-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'region_grow-request)))
  "Returns full string definition for message of type 'region_grow-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <region_grow-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <region_grow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'region_grow-request
))
;//! \htmlinclude region_grow-response.msg.html

(cl:defclass <region_grow-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass region_grow-response (<region_grow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <region_grow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'region_grow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<region_grow-response> is deprecated: use car_body_defect_detect-srv:region_grow-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <region_grow-response>) ostream)
  "Serializes a message object of type '<region_grow-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <region_grow-response>) istream)
  "Deserializes a message object of type '<region_grow-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<region_grow-response>)))
  "Returns string type for a service object of type '<region_grow-response>"
  "car_body_defect_detect/region_growResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'region_grow-response)))
  "Returns string type for a service object of type 'region_grow-response"
  "car_body_defect_detect/region_growResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<region_grow-response>)))
  "Returns md5sum for a message object of type '<region_grow-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'region_grow-response)))
  "Returns md5sum for a message object of type 'region_grow-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<region_grow-response>)))
  "Returns full string definition for message of type '<region_grow-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'region_grow-response)))
  "Returns full string definition for message of type 'region_grow-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <region_grow-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <region_grow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'region_grow-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'region_grow)))
  'region_grow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'region_grow)))
  'region_grow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'region_grow)))
  "Returns string type for a service object of type '<region_grow>"
  "car_body_defect_detect/region_grow")