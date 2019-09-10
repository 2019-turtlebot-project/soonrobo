;; Auto-generated. Do not edit!


(when (boundp 'newmode::msg_lane)
  (if (not (find-package "NEWMODE"))
    (make-package "NEWMODE"))
  (shadow 'msg_lane (find-package "NEWMODE")))
(unless (find-package "NEWMODE::MSG_LANE")
  (make-package "NEWMODE::MSG_LANE"))

(in-package "ROS")
;;//! \htmlinclude msg_lane.msg.html


(defclass newmode::msg_lane
  :super ros::object
  :slots (_angle _sw ))

(defmethod newmode::msg_lane
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:sw __sw) nil)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _sw __sw)
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:sw
   (&optional __sw)
   (if __sw (setq _sw __sw)) _sw)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; bool _sw
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _sw
       (if _sw (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _sw
     (setq _sw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get newmode::msg_lane :md5sum-) "e30d84a69dca6130a8987a887aa0a0fd")
(setf (get newmode::msg_lane :datatype-) "newmode/msg_lane")
(setf (get newmode::msg_lane :definition-)
      "float32 angle
bool sw

")



(provide :newmode/msg_lane "e30d84a69dca6130a8987a887aa0a0fd")


