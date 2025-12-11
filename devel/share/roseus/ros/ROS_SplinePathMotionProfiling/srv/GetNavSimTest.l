;; Auto-generated. Do not edit!


(when (boundp 'ROS_SplinePathMotionProfiling::GetNavSimTest)
  (if (not (find-package "ROS_SPLINEPATHMOTIONPROFILING"))
    (make-package "ROS_SPLINEPATHMOTIONPROFILING"))
  (shadow 'GetNavSimTest (find-package "ROS_SPLINEPATHMOTIONPROFILING")))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVSIMTEST")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVSIMTEST"))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVSIMTESTREQUEST")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVSIMTESTREQUEST"))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVSIMTESTRESPONSE")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVSIMTESTRESPONSE"))

(in-package "ROS")





(defclass ROS_SplinePathMotionProfiling::GetNavSimTestRequest
  :super ros::object
  :slots (_linear_kp _linear_ki _linear_kd _angular_kp _angular_ki _angular_kd ))

(defmethod ROS_SplinePathMotionProfiling::GetNavSimTestRequest
  (:init
   (&key
    ((:linear_kp __linear_kp) 0.0)
    ((:linear_ki __linear_ki) 0.0)
    ((:linear_kd __linear_kd) 0.0)
    ((:angular_kp __angular_kp) 0.0)
    ((:angular_ki __angular_ki) 0.0)
    ((:angular_kd __angular_kd) 0.0)
    )
   (send-super :init)
   (setq _linear_kp (float __linear_kp))
   (setq _linear_ki (float __linear_ki))
   (setq _linear_kd (float __linear_kd))
   (setq _angular_kp (float __angular_kp))
   (setq _angular_ki (float __angular_ki))
   (setq _angular_kd (float __angular_kd))
   self)
  (:linear_kp
   (&optional __linear_kp)
   (if __linear_kp (setq _linear_kp __linear_kp)) _linear_kp)
  (:linear_ki
   (&optional __linear_ki)
   (if __linear_ki (setq _linear_ki __linear_ki)) _linear_ki)
  (:linear_kd
   (&optional __linear_kd)
   (if __linear_kd (setq _linear_kd __linear_kd)) _linear_kd)
  (:angular_kp
   (&optional __angular_kp)
   (if __angular_kp (setq _angular_kp __angular_kp)) _angular_kp)
  (:angular_ki
   (&optional __angular_ki)
   (if __angular_ki (setq _angular_ki __angular_ki)) _angular_ki)
  (:angular_kd
   (&optional __angular_kd)
   (if __angular_kd (setq _angular_kd __angular_kd)) _angular_kd)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_kp
    8
    ;; float64 _linear_ki
    8
    ;; float64 _linear_kd
    8
    ;; float64 _angular_kp
    8
    ;; float64 _angular_ki
    8
    ;; float64 _angular_kd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_kp
       (sys::poke _linear_kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_ki
       (sys::poke _linear_ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_kd
       (sys::poke _linear_kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_kp
       (sys::poke _angular_kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_ki
       (sys::poke _angular_ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_kd
       (sys::poke _angular_kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_kp
     (setq _linear_kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_ki
     (setq _linear_ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_kd
     (setq _linear_kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_kp
     (setq _angular_kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_ki
     (setq _angular_ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_kd
     (setq _angular_kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetNavSimTestResponse
  :super ros::object
  :slots (_position_error _heading_error ))

(defmethod ROS_SplinePathMotionProfiling::GetNavSimTestResponse
  (:init
   (&key
    ((:position_error __position_error) 0.0)
    ((:heading_error __heading_error) 0.0)
    )
   (send-super :init)
   (setq _position_error (float __position_error))
   (setq _heading_error (float __heading_error))
   self)
  (:position_error
   (&optional __position_error)
   (if __position_error (setq _position_error __position_error)) _position_error)
  (:heading_error
   (&optional __heading_error)
   (if __heading_error (setq _heading_error __heading_error)) _heading_error)
  (:serialization-length
   ()
   (+
    ;; float64 _position_error
    8
    ;; float64 _heading_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position_error
       (sys::poke _position_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_error
       (sys::poke _heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position_error
     (setq _position_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_error
     (setq _heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetNavSimTest
  :super ros::object
  :slots ())

(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :md5sum-) "5f1ff2380d967c102097eb58066e53b1")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :datatype-) "ROS_SplinePathMotionProfiling/GetNavSimTest")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :request) ROS_SplinePathMotionProfiling::GetNavSimTestRequest)
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :response) ROS_SplinePathMotionProfiling::GetNavSimTestResponse)

(defmethod ROS_SplinePathMotionProfiling::GetNavSimTestRequest
  (:response () (instance ROS_SplinePathMotionProfiling::GetNavSimTestResponse :init)))

(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestRequest :md5sum-) "5f1ff2380d967c102097eb58066e53b1")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestRequest :datatype-) "ROS_SplinePathMotionProfiling/GetNavSimTestRequest")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestRequest :definition-)
      "float64 linear_kp
float64 linear_ki
float64 linear_kd 
float64 angular_kp
float64 angular_ki
float64 angular_kd
---
float64 position_error
float64 heading_error
")

(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestResponse :md5sum-) "5f1ff2380d967c102097eb58066e53b1")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestResponse :datatype-) "ROS_SplinePathMotionProfiling/GetNavSimTestResponse")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestResponse :definition-)
      "float64 linear_kp
float64 linear_ki
float64 linear_kd 
float64 angular_kp
float64 angular_ki
float64 angular_kd
---
float64 position_error
float64 heading_error
")



(provide :ROS_SplinePathMotionProfiling/GetNavSimTest "5f1ff2380d967c102097eb58066e53b1")


