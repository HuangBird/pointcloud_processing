; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude visualize_input-request.msg.html

(cl:defclass <visualize_input-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_input-request (<visualize_input-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_input-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_input-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_input-request> is deprecated: use car_body_defect_detect-srv:visualize_input-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_input-request>) ostream)
  "Serializes a message object of type '<visualize_input-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_input-request>) istream)
  "Deserializes a message object of type '<visualize_input-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_input-request>)))
  "Returns string type for a service object of type '<visualize_input-request>"
  "car_body_defect_detect/visualize_inputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_input-request)))
  "Returns string type for a service object of type 'visualize_input-request"
  "car_body_defect_detect/visualize_inputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_input-request>)))
  "Returns md5sum for a message object of type '<visualize_input-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_input-request)))
  "Returns md5sum for a message object of type 'visualize_input-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_input-request>)))
  "Returns full string definition for message of type '<visualize_input-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_input-request)))
  "Returns full string definition for message of type 'visualize_input-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_input-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_input-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_input-request
))
;//! \htmlinclude visualize_input-response.msg.html

(cl:defclass <visualize_input-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_input-response (<visualize_input-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_input-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_input-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_input-response> is deprecated: use car_body_defect_detect-srv:visualize_input-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_input-response>) ostream)
  "Serializes a message object of type '<visualize_input-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_input-response>) istream)
  "Deserializes a message object of type '<visualize_input-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_input-response>)))
  "Returns string type for a service object of type '<visualize_input-response>"
  "car_body_defect_detect/visualize_inputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_input-response)))
  "Returns string type for a service object of type 'visualize_input-response"
  "car_body_defect_detect/visualize_inputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_input-response>)))
  "Returns md5sum for a message object of type '<visualize_input-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_input-response)))
  "Returns md5sum for a message object of type 'visualize_input-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_input-response>)))
  "Returns full string definition for message of type '<visualize_input-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_input-response)))
  "Returns full string definition for message of type 'visualize_input-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_input-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_input-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_input-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visualize_input)))
  'visualize_input-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visualize_input)))
  'visualize_input-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_input)))
  "Returns string type for a service object of type '<visualize_input>"
  "car_body_defect_detect/visualize_input")