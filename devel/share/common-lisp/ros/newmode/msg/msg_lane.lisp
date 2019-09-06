; Auto-generated. Do not edit!


(cl:in-package newmode-msg)


;//! \htmlinclude msg_lane.msg.html

(cl:defclass <msg_lane> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (sw
    :reader sw
    :initarg :sw
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass msg_lane (<msg_lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name newmode-msg:<msg_lane> is deprecated: use newmode-msg:msg_lane instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <msg_lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:angle-val is deprecated.  Use newmode-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'sw-val :lambda-list '(m))
(cl:defmethod sw-val ((m <msg_lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:sw-val is deprecated.  Use newmode-msg:sw instead.")
  (sw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_lane>) ostream)
  "Serializes a message object of type '<msg_lane>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sw) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_lane>) istream)
  "Deserializes a message object of type '<msg_lane>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'sw) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_lane>)))
  "Returns string type for a message object of type '<msg_lane>"
  "newmode/msg_lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_lane)))
  "Returns string type for a message object of type 'msg_lane"
  "newmode/msg_lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_lane>)))
  "Returns md5sum for a message object of type '<msg_lane>"
  "e30d84a69dca6130a8987a887aa0a0fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_lane)))
  "Returns md5sum for a message object of type 'msg_lane"
  "e30d84a69dca6130a8987a887aa0a0fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_lane>)))
  "Returns full string definition for message of type '<msg_lane>"
  (cl:format cl:nil "float32 angle~%bool sw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_lane)))
  "Returns full string definition for message of type 'msg_lane"
  (cl:format cl:nil "float32 angle~%bool sw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_lane>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_lane>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_lane
    (cl:cons ':angle (angle msg))
    (cl:cons ':sw (sw msg))
))
