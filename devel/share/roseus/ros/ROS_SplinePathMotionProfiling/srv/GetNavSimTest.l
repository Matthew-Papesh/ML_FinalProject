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
  :slots (_x_errors _y_errors _heading_errors _lin_speed_adjs _ang_speed_adjs ))

(defmethod ROS_SplinePathMotionProfiling::GetNavSimTestResponse
  (:init
   (&key
    ((:x_errors __x_errors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_errors __y_errors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading_errors __heading_errors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lin_speed_adjs __lin_speed_adjs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ang_speed_adjs __ang_speed_adjs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_errors __x_errors)
   (setq _y_errors __y_errors)
   (setq _heading_errors __heading_errors)
   (setq _lin_speed_adjs __lin_speed_adjs)
   (setq _ang_speed_adjs __ang_speed_adjs)
   self)
  (:x_errors
   (&optional __x_errors)
   (if __x_errors (setq _x_errors __x_errors)) _x_errors)
  (:y_errors
   (&optional __y_errors)
   (if __y_errors (setq _y_errors __y_errors)) _y_errors)
  (:heading_errors
   (&optional __heading_errors)
   (if __heading_errors (setq _heading_errors __heading_errors)) _heading_errors)
  (:lin_speed_adjs
   (&optional __lin_speed_adjs)
   (if __lin_speed_adjs (setq _lin_speed_adjs __lin_speed_adjs)) _lin_speed_adjs)
  (:ang_speed_adjs
   (&optional __ang_speed_adjs)
   (if __ang_speed_adjs (setq _ang_speed_adjs __ang_speed_adjs)) _ang_speed_adjs)
  (:serialization-length
   ()
   (+
    ;; float64[] _x_errors
    (* 8    (length _x_errors)) 4
    ;; float64[] _y_errors
    (* 8    (length _y_errors)) 4
    ;; float64[] _heading_errors
    (* 8    (length _heading_errors)) 4
    ;; float64[] _lin_speed_adjs
    (* 8    (length _lin_speed_adjs)) 4
    ;; float64[] _ang_speed_adjs
    (* 8    (length _ang_speed_adjs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _x_errors
     (write-long (length _x_errors) s)
     (dotimes (i (length _x_errors))
       (sys::poke (elt _x_errors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y_errors
     (write-long (length _y_errors) s)
     (dotimes (i (length _y_errors))
       (sys::poke (elt _y_errors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _heading_errors
     (write-long (length _heading_errors) s)
     (dotimes (i (length _heading_errors))
       (sys::poke (elt _heading_errors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _lin_speed_adjs
     (write-long (length _lin_speed_adjs) s)
     (dotimes (i (length _lin_speed_adjs))
       (sys::poke (elt _lin_speed_adjs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ang_speed_adjs
     (write-long (length _ang_speed_adjs) s)
     (dotimes (i (length _ang_speed_adjs))
       (sys::poke (elt _ang_speed_adjs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _x_errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_errors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_errors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y_errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_errors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_errors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _heading_errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading_errors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading_errors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _lin_speed_adjs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lin_speed_adjs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lin_speed_adjs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ang_speed_adjs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ang_speed_adjs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ang_speed_adjs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetNavSimTest
  :super ros::object
  :slots ())

(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :md5sum-) "af597e7527248169acdbd0f263c0d5da")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :datatype-) "ROS_SplinePathMotionProfiling/GetNavSimTest")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :request) ROS_SplinePathMotionProfiling::GetNavSimTestRequest)
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTest :response) ROS_SplinePathMotionProfiling::GetNavSimTestResponse)

(defmethod ROS_SplinePathMotionProfiling::GetNavSimTestRequest
  (:response () (instance ROS_SplinePathMotionProfiling::GetNavSimTestResponse :init)))

(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestRequest :md5sum-) "af597e7527248169acdbd0f263c0d5da")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestRequest :datatype-) "ROS_SplinePathMotionProfiling/GetNavSimTestRequest")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestRequest :definition-)
      "float64 linear_kp
float64 linear_ki
float64 linear_kd 
float64 angular_kp
float64 angular_ki
float64 angular_kd
---
float64[] x_errors
float64[] y_errors
float64[] heading_errors
float64[] lin_speed_adjs 
float64[] ang_speed_adjs
")

(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestResponse :md5sum-) "af597e7527248169acdbd0f263c0d5da")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestResponse :datatype-) "ROS_SplinePathMotionProfiling/GetNavSimTestResponse")
(setf (get ROS_SplinePathMotionProfiling::GetNavSimTestResponse :definition-)
      "float64 linear_kp
float64 linear_ki
float64 linear_kd 
float64 angular_kp
float64 angular_ki
float64 angular_kd
---
float64[] x_errors
float64[] y_errors
float64[] heading_errors
float64[] lin_speed_adjs 
float64[] ang_speed_adjs
")



(provide :ROS_SplinePathMotionProfiling/GetNavSimTest "af597e7527248169acdbd0f263c0d5da")


