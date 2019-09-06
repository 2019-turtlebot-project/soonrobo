;; Auto-generated. Do not edit!


(when (boundp 'newmode::start)
  (if (not (find-package "NEWMODE"))
    (make-package "NEWMODE"))
  (shadow 'start (find-package "NEWMODE")))
(unless (find-package "NEWMODE::START")
  (make-package "NEWMODE::START"))

(in-package "ROS")
;;//! \htmlinclude start.msg.html


(defclass newmode::start
  :super ros::object
  :slots (_start ))

(defmethod newmode::start
  (:init
   (&key
    ((:start __start) 0)
    )
   (send-super :init)
   (setq _start (round __start))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; int32 _start
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _start
       (write-long _start s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _start
     (setq _start (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get newmode::start :md5sum-) "fedf8f66fec874688fe6555f8f8bb4f4")
(setf (get newmode::start :datatype-) "newmode/start")
(setf (get newmode::start :definition-)
      "int32 start


")



(provide :newmode/start "fedf8f66fec874688fe6555f8f8bb4f4")


