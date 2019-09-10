; Auto-generated. Do not edit!


(cl:in-package laser-msg)


;//! \htmlinclude st.msg.html

(cl:defclass <st> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass st (<st>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <st>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'st)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser-msg:<st> is deprecated: use laser-msg:st instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <st>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser-msg:a-val is deprecated.  Use laser-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <st>) ostream)
  "Serializes a message object of type '<st>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <st>) istream)
  "Deserializes a message object of type '<st>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<st>)))
  "Returns string type for a message object of type '<st>"
  "laser/st")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'st)))
  "Returns string type for a message object of type 'st"
  "laser/st")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<st>)))
  "Returns md5sum for a message object of type '<st>"
  "5c9fb1a886e81e3162a5c87bf55c072b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'st)))
  "Returns md5sum for a message object of type 'st"
  "5c9fb1a886e81e3162a5c87bf55c072b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<st>)))
  "Returns full string definition for message of type '<st>"
  (cl:format cl:nil "int32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'st)))
  "Returns full string definition for message of type 'st"
  (cl:format cl:nil "int32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <st>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <st>))
  "Converts a ROS message object to a list"
  (cl:list 'st
    (cl:cons ':a (a msg))
))
