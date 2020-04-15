; Auto-generated. Do not edit!


(cl:in-package car_body_defect_detect-srv)


;//! \htmlinclude plane_model-request.msg.html

(cl:defclass <plane_model-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass plane_model-request (<plane_model-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plane_model-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plane_model-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<plane_model-request> is deprecated: use car_body_defect_detect-srv:plane_model-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plane_model-request>) ostream)
  "Serializes a message object of type '<plane_model-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plane_model-request>) istream)
  "Deserializes a message object of type '<plane_model-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plane_model-request>)))
  "Returns string type for a service object of type '<plane_model-request>"
  "car_body_defect_detect/plane_modelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plane_model-request)))
  "Returns string type for a service object of type 'plane_model-request"
  "car_body_defect_detect/plane_modelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plane_model-request>)))
  "Returns md5sum for a message object of type '<plane_model-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plane_model-request)))
  "Returns md5sum for a message object of type 'plane_model-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plane_model-request>)))
  "Returns full string definition for message of type '<plane_model-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plane_model-request)))
  "Returns full string definition for message of type 'plane_model-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plane_model-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plane_model-request>))
  "Converts a ROS message object to a list"
  (cl:list 'plane_model-request
))
;//! \htmlinclude plane_model-response.msg.html

(cl:defclass <plane_model-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass plane_model-response (<plane_model-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plane_model-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plane_model-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_body_defect_detect-srv:<plane_model-response> is deprecated: use car_body_defect_detect-srv:plane_model-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plane_model-response>) ostream)
  "Serializes a message object of type '<plane_model-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plane_model-response>) istream)
  "Deserializes a message object of type '<plane_model-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plane_model-response>)))
  "Returns string type for a service object of type '<plane_model-response>"
  "car_body_defect_detect/plane_modelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plane_model-response)))
  "Returns string type for a service object of type 'plane_model-response"
  "car_body_defect_detect/plane_modelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plane_model-response>)))
  "Returns md5sum for a message object of type '<plane_model-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plane_model-response)))
  "Returns md5sum for a message object of type 'plane_model-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plane_model-response>)))
  "Returns full string definition for message of type '<plane_model-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plane_model-response)))
  "Returns full string definition for message of type 'plane_model-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plane_model-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plane_model-response>))
  "Converts a ROS message object to a list"
  (cl:list 'plane_model-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'plane_model)))
  'plane_model-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'plane_model)))
  'plane_model-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plane_model)))
  "Returns string type for a service object of type '<plane_model>"
  "car_body_defect_detect/plane_model")