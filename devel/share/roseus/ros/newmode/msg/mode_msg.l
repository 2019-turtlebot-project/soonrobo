;; Auto-generated. Do not edit!


(when (boundp 'newmode::mode_msg)
  (if (not (find-package "NEWMODE"))
    (make-package "NEWMODE"))
  (shadow 'mode_msg (find-package "NEWMODE")))
(unless (find-package "NEWMODE::MODE_MSG")
  (make-package "NEWMODE::MODE_MSG"))

(in-package "ROS")
;;//! \htmlinclude mode_msg.msg.html


(defclass newmode::mode_msg
  :super ros::object
  :slots (_mode _cnt _angle ))

(defmethod newmode::mode_msg
  (:init
   (&key
    ((:mode __mode) 0)
    ((:cnt __cnt) 0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _cnt (round __cnt))
   (setq _angle (float __angle))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:cnt
   (&optional __cnt)
   (if __cnt (setq _cnt __cnt)) _cnt)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; int32 _cnt
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _cnt
       (write-long _cnt s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cnt
     (setq _cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get newmode::mode_msg :md5sum-) "f38f182f4939ebaee1d345a52aa2a3ad")
(setf (get newmode::mode_msg :datatype-) "newmode/mode_msg")
(setf (get newmode::mode_msg :definition-)
      "int32 mode
int32 cnt
float32 angle

")



(provide :newmode/mode_msg "f38f182f4939ebaee1d345a52aa2a3ad")


