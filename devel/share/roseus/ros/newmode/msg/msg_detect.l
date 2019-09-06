;; Auto-generated. Do not edit!


(when (boundp 'newmode::msg_detect)
  (if (not (find-package "NEWMODE"))
    (make-package "NEWMODE"))
  (shadow 'msg_detect (find-package "NEWMODE")))
(unless (find-package "NEWMODE::MSG_DETECT")
  (make-package "NEWMODE::MSG_DETECT"))

(in-package "ROS")
;;//! \htmlinclude msg_detect.msg.html


(defclass newmode::msg_detect
  :super ros::object
  :slots (_mode _bar _traffic_light ))

(defmethod newmode::msg_detect
  (:init
   (&key
    ((:mode __mode) "")
    ((:bar __bar) nil)
    ((:traffic_light __traffic_light) nil)
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _bar __bar)
   (setq _traffic_light __traffic_light)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:bar
   (&optional __bar)
   (if __bar (setq _bar __bar)) _bar)
  (:traffic_light
   (&optional __traffic_light)
   (if __traffic_light (setq _traffic_light __traffic_light)) _traffic_light)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; bool _bar
    1
    ;; bool _traffic_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; bool _bar
       (if _bar (write-byte -1 s) (write-byte 0 s))
     ;; bool _traffic_light
       (if _traffic_light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _bar
     (setq _bar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _traffic_light
     (setq _traffic_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get newmode::msg_detect :md5sum-) "f3e619251811de3393b11ebe9613655a")
(setf (get newmode::msg_detect :datatype-) "newmode/msg_detect")
(setf (get newmode::msg_detect :definition-)
      "string mode
bool bar
bool traffic_light

")



(provide :newmode/msg_detect "f3e619251811de3393b11ebe9613655a")


