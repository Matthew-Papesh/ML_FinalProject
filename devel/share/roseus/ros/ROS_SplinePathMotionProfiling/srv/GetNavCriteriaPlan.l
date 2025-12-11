;; Auto-generated. Do not edit!


(when (boundp 'ROS_SplinePathMotionProfiling::GetNavCriteriaPlan)
  (if (not (find-package "ROS_SPLINEPATHMOTIONPROFILING"))
    (make-package "ROS_SPLINEPATHMOTIONPROFILING"))
  (shadow 'GetNavCriteriaPlan (find-package "ROS_SPLINEPATHMOTIONPROFILING")))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVCRITERIAPLAN")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVCRITERIAPLAN"))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVCRITERIAPLANREQUEST")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVCRITERIAPLANREQUEST"))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVCRITERIAPLANRESPONSE")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETNAVCRITERIAPLANRESPONSE"))

(in-package "ROS")





(defclass ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest
  :super ros::object
  :slots (_acceleration _max_linear_speed _max_angular_speed _max_centripetal_acceleration ))

(defmethod ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest
  (:init
   (&key
    ((:acceleration __acceleration) 0.0)
    ((:max_linear_speed __max_linear_speed) 0.0)
    ((:max_angular_speed __max_angular_speed) 0.0)
    ((:max_centripetal_acceleration __max_centripetal_acceleration) 0.0)
    )
   (send-super :init)
   (setq _acceleration (float __acceleration))
   (setq _max_linear_speed (float __max_linear_speed))
   (setq _max_angular_speed (float __max_angular_speed))
   (setq _max_centripetal_acceleration (float __max_centripetal_acceleration))
   self)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:max_linear_speed
   (&optional __max_linear_speed)
   (if __max_linear_speed (setq _max_linear_speed __max_linear_speed)) _max_linear_speed)
  (:max_angular_speed
   (&optional __max_angular_speed)
   (if __max_angular_speed (setq _max_angular_speed __max_angular_speed)) _max_angular_speed)
  (:max_centripetal_acceleration
   (&optional __max_centripetal_acceleration)
   (if __max_centripetal_acceleration (setq _max_centripetal_acceleration __max_centripetal_acceleration)) _max_centripetal_acceleration)
  (:serialization-length
   ()
   (+
    ;; float64 _acceleration
    8
    ;; float64 _max_linear_speed
    8
    ;; float64 _max_angular_speed
    8
    ;; float64 _max_centripetal_acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_linear_speed
       (sys::poke _max_linear_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_angular_speed
       (sys::poke _max_angular_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_centripetal_acceleration
       (sys::poke _max_centripetal_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_linear_speed
     (setq _max_linear_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_angular_speed
     (setq _max_angular_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_centripetal_acceleration
     (setq _max_centripetal_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse
  :super ros::object
  :slots ())

(defmethod ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetNavCriteriaPlan
  :super ros::object
  :slots ())

(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlan :md5sum-) "edb38829b81d2cf836e0906f3ace6437")
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlan :datatype-) "ROS_SplinePathMotionProfiling/GetNavCriteriaPlan")
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlan :request) ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest)
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlan :response) ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse)

(defmethod ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest
  (:response () (instance ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse :init)))

(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest :md5sum-) "edb38829b81d2cf836e0906f3ace6437")
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest :datatype-) "ROS_SplinePathMotionProfiling/GetNavCriteriaPlanRequest")
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlanRequest :definition-)
      "float64 acceleration
float64 max_linear_speed
float64 max_angular_speed
float64 max_centripetal_acceleration
---
")

(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse :md5sum-) "edb38829b81d2cf836e0906f3ace6437")
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse :datatype-) "ROS_SplinePathMotionProfiling/GetNavCriteriaPlanResponse")
(setf (get ROS_SplinePathMotionProfiling::GetNavCriteriaPlanResponse :definition-)
      "float64 acceleration
float64 max_linear_speed
float64 max_angular_speed
float64 max_centripetal_acceleration
---
")



(provide :ROS_SplinePathMotionProfiling/GetNavCriteriaPlan "edb38829b81d2cf836e0906f3ace6437")


