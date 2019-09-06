; Auto-generated. Do not edit!


(cl:in-package newmode-msg)


;//! \htmlinclude start.msg.html

(cl:defclass <start> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:integer
    :initform 0))
)

(cl:defclass start (<start>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name newmode-msg:<start> is deprecated: use newmode-msg:start instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:start-val is deprecated.  Use newmode-msg:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start>) ostream)
  "Serializes a message object of type '<start>"
  (cl:let* ((signed (cl:slot-value msg 'start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start>) istream)
  "Deserializes a message object of type '<start>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start>)))
  "Returns string type for a message object of type '<start>"
  "newmode/start")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start)))
  "Returns string type for a message object of type 'start"
  "newmode/start")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start>)))
  "Returns md5sum for a message object of type '<start>"
  "fedf8f66fec874688fe6555f8f8bb4f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start)))
  "Returns md5sum for a message object of type 'start"
  "fedf8f66fec874688fe6555f8f8bb4f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start>)))
  "Returns full string definition for message of type '<start>"
  (cl:format cl:nil "int32 start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start)))
  "Returns full string definition for message of type 'start"
  (cl:format cl:nil "int32 start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start>))
  "Converts a ROS message object to a list"
  (cl:list 'start
    (cl:cons ':start (start msg))
))
