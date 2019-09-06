; Auto-generated. Do not edit!


(cl:in-package newmode-msg)


;//! \htmlinclude mode_msg.msg.html

(cl:defclass <mode_msg> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (cnt
    :reader cnt
    :initarg :cnt
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass mode_msg (<mode_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name newmode-msg:<mode_msg> is deprecated: use newmode-msg:mode_msg instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <mode_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:mode-val is deprecated.  Use newmode-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'cnt-val :lambda-list '(m))
(cl:defmethod cnt-val ((m <mode_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:cnt-val is deprecated.  Use newmode-msg:cnt instead.")
  (cnt m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <mode_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:angle-val is deprecated.  Use newmode-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode_msg>) ostream)
  "Serializes a message object of type '<mode_msg>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode_msg>) istream)
  "Deserializes a message object of type '<mode_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode_msg>)))
  "Returns string type for a message object of type '<mode_msg>"
  "newmode/mode_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode_msg)))
  "Returns string type for a message object of type 'mode_msg"
  "newmode/mode_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode_msg>)))
  "Returns md5sum for a message object of type '<mode_msg>"
  "f38f182f4939ebaee1d345a52aa2a3ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode_msg)))
  "Returns md5sum for a message object of type 'mode_msg"
  "f38f182f4939ebaee1d345a52aa2a3ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode_msg>)))
  "Returns full string definition for message of type '<mode_msg>"
  (cl:format cl:nil "int32 mode~%int32 cnt~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode_msg)))
  "Returns full string definition for message of type 'mode_msg"
  (cl:format cl:nil "int32 mode~%int32 cnt~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode_msg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'mode_msg
    (cl:cons ':mode (mode msg))
    (cl:cons ':cnt (cnt msg))
    (cl:cons ':angle (angle msg))
))
