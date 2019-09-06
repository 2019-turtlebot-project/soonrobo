; Auto-generated. Do not edit!


(cl:in-package newmode-msg)


;//! \htmlinclude twist.msg.html

(cl:defclass <twist> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type newmode-msg:xyz
    :initform (cl:make-instance 'newmode-msg:xyz))
   (angular
    :reader angular
    :initarg :angular
    :type newmode-msg:xyz
    :initform (cl:make-instance 'newmode-msg:xyz)))
)

(cl:defclass twist (<twist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <twist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'twist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name newmode-msg:<twist> is deprecated: use newmode-msg:twist instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:linear-val is deprecated.  Use newmode-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:angular-val is deprecated.  Use newmode-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <twist>) ostream)
  "Serializes a message object of type '<twist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <twist>) istream)
  "Deserializes a message object of type '<twist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<twist>)))
  "Returns string type for a message object of type '<twist>"
  "newmode/twist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'twist)))
  "Returns string type for a message object of type 'twist"
  "newmode/twist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<twist>)))
  "Returns md5sum for a message object of type '<twist>"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'twist)))
  "Returns md5sum for a message object of type 'twist"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<twist>)))
  "Returns full string definition for message of type '<twist>"
  (cl:format cl:nil "xyz linear~%xyz angular~%~%================================================================================~%MSG: newmode/xyz~%float64 x~%float64 y~%float64 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'twist)))
  "Returns full string definition for message of type 'twist"
  (cl:format cl:nil "xyz linear~%xyz angular~%~%================================================================================~%MSG: newmode/xyz~%float64 x~%float64 y~%float64 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <twist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <twist>))
  "Converts a ROS message object to a list"
  (cl:list 'twist
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
