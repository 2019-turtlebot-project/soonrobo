;; Auto-generated. Do not edit!


(when (boundp 'laser::st)
  (if (not (find-package "LASER"))
    (make-package "LASER"))
  (shadow 'st (find-package "LASER")))
(unless (find-package "LASER::ST")
  (make-package "LASER::ST"))

(in-package "ROS")
;;//! \htmlinclude st.msg.html


(defclass laser::st
  :super ros::object
  :slots (_a ))

(defmethod laser::st
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laser::st :md5sum-) "5c9fb1a886e81e3162a5c87bf55c072b")
(setf (get laser::st :datatype-) "laser/st")
(setf (get laser::st :definition-)
      "int32 a

")



(provide :laser/st "5c9fb1a886e81e3162a5c87bf55c072b")


