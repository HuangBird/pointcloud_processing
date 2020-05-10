; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude visualize_defect-request.msg.html

(cl:defclass <visualize_defect-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_defect-request (<visualize_defect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_defect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_defect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_defect-request> is deprecated: use car_body_defect_detect-srv:visualize_defect-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_defect-request>) ostream)
  "Serializes a message object of type '<visualize_defect-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_defect-request>) istream)
  "Deserializes a message object of type '<visualize_defect-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_defect-request>)))
  "Returns string type for a service object of type '<visualize_defect-request>"
  "car_body_defect_detect/visualize_defectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_defect-request)))
  "Returns string type for a service object of type 'visualize_defect-request"
  "car_body_defect_detect/visualize_defectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_defect-request>)))
  "Returns md5sum for a message object of type '<visualize_defect-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_defect-request)))
  "Returns md5sum for a message object of type 'visualize_defect-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_defect-request>)))
  "Returns full string definition for message of type '<visualize_defect-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_defect-request)))
  "Returns full string definition for message of type 'visualize_defect-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_defect-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_defect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_defect-request
))
;//! \htmlinclude visualize_defect-response.msg.html

(cl:defclass <visualize_defect-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_defect-response (<visualize_defect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_defect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_defect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_defect-response> is deprecated: use car_body_defect_detect-srv:visualize_defect-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_defect-response>) ostream)
  "Serializes a message object of type '<visualize_defect-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_defect-response>) istream)
  "Deserializes a message object of type '<visualize_defect-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_defect-response>)))
  "Returns string type for a service object of type '<visualize_defect-response>"
  "car_body_defect_detect/visualize_defectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_defect-response)))
  "Returns string type for a service object of type 'visualize_defect-response"
  "car_body_defect_detect/visualize_defectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_defect-response>)))
  "Returns md5sum for a message object of type '<visualize_defect-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_defect-response)))
  "Returns md5sum for a message object of type 'visualize_defect-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_defect-response>)))
  "Returns full string definition for message of type '<visualize_defect-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_defect-response)))
  "Returns full string definition for message of type 'visualize_defect-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_defect-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_defect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_defect-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visualize_defect)))
  'visualize_defect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visualize_defect)))
  'visualize_defect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_defect)))
  "Returns string type for a service object of type '<visualize_defect>"
  "car_body_defect_detect/visualize_defect")