; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude visualize_region_grow-request.msg.html

(cl:defclass <visualize_region_grow-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_region_grow-request (<visualize_region_grow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_region_grow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_region_grow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_region_grow-request> is deprecated: use car_body_defect_detect-srv:visualize_region_grow-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_region_grow-request>) ostream)
  "Serializes a message object of type '<visualize_region_grow-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_region_grow-request>) istream)
  "Deserializes a message object of type '<visualize_region_grow-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_region_grow-request>)))
  "Returns string type for a service object of type '<visualize_region_grow-request>"
  "car_body_defect_detect/visualize_region_growRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_region_grow-request)))
  "Returns string type for a service object of type 'visualize_region_grow-request"
  "car_body_defect_detect/visualize_region_growRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_region_grow-request>)))
  "Returns md5sum for a message object of type '<visualize_region_grow-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_region_grow-request)))
  "Returns md5sum for a message object of type 'visualize_region_grow-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_region_grow-request>)))
  "Returns full string definition for message of type '<visualize_region_grow-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_region_grow-request)))
  "Returns full string definition for message of type 'visualize_region_grow-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_region_grow-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_region_grow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_region_grow-request
))
;//! \htmlinclude visualize_region_grow-response.msg.html

(cl:defclass <visualize_region_grow-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_region_grow-response (<visualize_region_grow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_region_grow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_region_grow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_region_grow-response> is deprecated: use car_body_defect_detect-srv:visualize_region_grow-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_region_grow-response>) ostream)
  "Serializes a message object of type '<visualize_region_grow-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_region_grow-response>) istream)
  "Deserializes a message object of type '<visualize_region_grow-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_region_grow-response>)))
  "Returns string type for a service object of type '<visualize_region_grow-response>"
  "car_body_defect_detect/visualize_region_growResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_region_grow-response)))
  "Returns string type for a service object of type 'visualize_region_grow-response"
  "car_body_defect_detect/visualize_region_growResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_region_grow-response>)))
  "Returns md5sum for a message object of type '<visualize_region_grow-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_region_grow-response)))
  "Returns md5sum for a message object of type 'visualize_region_grow-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_region_grow-response>)))
  "Returns full string definition for message of type '<visualize_region_grow-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_region_grow-response)))
  "Returns full string definition for message of type 'visualize_region_grow-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_region_grow-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_region_grow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_region_grow-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visualize_region_grow)))
  'visualize_region_grow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visualize_region_grow)))
  'visualize_region_grow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_region_grow)))
  "Returns string type for a service object of type '<visualize_region_grow>"
  "car_body_defect_detect/visualize_region_grow")