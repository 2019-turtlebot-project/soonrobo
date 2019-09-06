; Auto-generated. Do not edit!


(cl:in-package newmode-msg)


;//! \htmlinclude msg_detect.msg.html

(cl:defclass <msg_detect> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (bar
    :reader bar
    :initarg :bar
    :type cl:boolean
    :initform cl:nil)
   (traffic_light
    :reader traffic_light
    :initarg :traffic_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass msg_detect (<msg_detect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_detect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_detect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name newmode-msg:<msg_detect> is deprecated: use newmode-msg:msg_detect instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <msg_detect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:mode-val is deprecated.  Use newmode-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'bar-val :lambda-list '(m))
(cl:defmethod bar-val ((m <msg_detect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:bar-val is deprecated.  Use newmode-msg:bar instead.")
  (bar m))

(cl:ensure-generic-function 'traffic_light-val :lambda-list '(m))
(cl:defmethod traffic_light-val ((m <msg_detect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader newmode-msg:traffic_light-val is deprecated.  Use newmode-msg:traffic_light instead.")
  (traffic_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_detect>) ostream)
  "Serializes a message object of type '<msg_detect>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bar) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'traffic_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_detect>) istream)
  "Deserializes a message object of type '<msg_detect>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'bar) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'traffic_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_detect>)))
  "Returns string type for a message object of type '<msg_detect>"
  "newmode/msg_detect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_detect)))
  "Returns string type for a message object of type 'msg_detect"
  "newmode/msg_detect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_detect>)))
  "Returns md5sum for a message object of type '<msg_detect>"
  "f3e619251811de3393b11ebe9613655a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_detect)))
  "Returns md5sum for a message object of type 'msg_detect"
  "f3e619251811de3393b11ebe9613655a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_detect>)))
  "Returns full string definition for message of type '<msg_detect>"
  (cl:format cl:nil "string mode~%bool bar~%bool traffic_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_detect)))
  "Returns full string definition for message of type 'msg_detect"
  (cl:format cl:nil "string mode~%bool bar~%bool traffic_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_detect>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_detect>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_detect
    (cl:cons ':mode (mode msg))
    (cl:cons ':bar (bar msg))
    (cl:cons ':traffic_light (traffic_light msg))
))
