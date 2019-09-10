;; Auto-generated. Do not edit!


(when (boundp 'newmode::msg_sine)
  (if (not (find-package "NEWMODE"))
    (make-package "NEWMODE"))
  (shadow 'msg_sine (find-package "NEWMODE")))
(unless (find-package "NEWMODE::MSG_SINE")
  (make-package "NEWMODE::MSG_SINE"))

(in-package "ROS")
;;//! \htmlinclude msg_sine.msg.html


(defclass newmode::msg_sine
  :super ros::object
  :slots (_data ))

(defmethod newmode::msg_sine
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get newmode::msg_sine :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get newmode::msg_sine :datatype-) "newmode/msg_sine")
(setf (get newmode::msg_sine :definition-)
      "string data

")



(provide :newmode/msg_sine "992ce8a1687cec8c8bd883ec73ca41d1")


