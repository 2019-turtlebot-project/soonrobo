;; Auto-generated. Do not edit!


(when (boundp 'newmode::twist)
  (if (not (find-package "NEWMODE"))
    (make-package "NEWMODE"))
  (shadow 'twist (find-package "NEWMODE")))
(unless (find-package "NEWMODE::TWIST")
  (make-package "NEWMODE::TWIST"))

(in-package "ROS")
;;//! \htmlinclude twist.msg.html


(defclass newmode::twist
  :super ros::object
  :slots (_linear _angular ))

(defmethod newmode::twist
  (:init
   (&key
    ((:linear __linear) (instance newmode::xyz :init))
    ((:angular __angular) (instance newmode::xyz :init))
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; newmode/xyz _linear
    (send _linear :serialization-length)
    ;; newmode/xyz _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; newmode/xyz _linear
       (send _linear :serialize s)
     ;; newmode/xyz _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; newmode/xyz _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; newmode/xyz _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get newmode::twist :md5sum-) "9f195f881246fdfa2798d1d3eebca84a")
(setf (get newmode::twist :datatype-) "newmode/twist")
(setf (get newmode::twist :definition-)
      "xyz linear
xyz angular

================================================================================
MSG: newmode/xyz
float64 x
float64 y
float64 z


")



(provide :newmode/twist "9f195f881246fdfa2798d1d3eebca84a")


