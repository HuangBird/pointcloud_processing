; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude visualize_area-request.msg.html

(cl:defclass <visualize_area-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_area-request (<visualize_area-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_area-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_area-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_area-request> is deprecated: use car_body_defect_detect-srv:visualize_area-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_area-request>) ostream)
  "Serializes a message object of type '<visualize_area-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_area-request>) istream)
  "Deserializes a message object of type '<visualize_area-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_area-request>)))
  "Returns string type for a service object of type '<visualize_area-request>"
  "car_body_defect_detect/visualize_areaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_area-request)))
  "Returns string type for a service object of type 'visualize_area-request"
  "car_body_defect_detect/visualize_areaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_area-request>)))
  "Returns md5sum for a message object of type '<visualize_area-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_area-request)))
  "Returns md5sum for a message object of type 'visualize_area-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_area-request>)))
  "Returns full string definition for message of type '<visualize_area-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_area-request)))
  "Returns full string definition for message of type 'visualize_area-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_area-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_area-request>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_area-request
))
;//! \htmlinclude visualize_area-response.msg.html

(cl:defclass <visualize_area-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass visualize_area-response (<visualize_area-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <visualize_area-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'visualize_area-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<visualize_area-response> is deprecated: use car_body_defect_detect-srv:visualize_area-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <visualize_area-response>) ostream)
  "Serializes a message object of type '<visualize_area-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <visualize_area-response>) istream)
  "Deserializes a message object of type '<visualize_area-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<visualize_area-response>)))
  "Returns string type for a service object of type '<visualize_area-response>"
  "car_body_defect_detect/visualize_areaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_area-response)))
  "Returns string type for a service object of type 'visualize_area-response"
  "car_body_defect_detect/visualize_areaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<visualize_area-response>)))
  "Returns md5sum for a message object of type '<visualize_area-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'visualize_area-response)))
  "Returns md5sum for a message object of type 'visualize_area-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<visualize_area-response>)))
  "Returns full string definition for message of type '<visualize_area-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'visualize_area-response)))
  "Returns full string definition for message of type 'visualize_area-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <visualize_area-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <visualize_area-response>))
  "Converts a ROS message object to a list"
  (cl:list 'visualize_area-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'visualize_area)))
  'visualize_area-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'visualize_area)))
  'visualize_area-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'visualize_area)))
  "Returns string type for a service object of type '<visualize_area>"
  "car_body_defect_detect/visualize_area")