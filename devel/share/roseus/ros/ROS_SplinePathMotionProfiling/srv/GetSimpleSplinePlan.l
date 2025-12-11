;; Auto-generated. Do not edit!


(when (boundp 'ROS_SplinePathMotionProfiling::GetSimpleSplinePlan)
  (if (not (find-package "ROS_SPLINEPATHMOTIONPROFILING"))
    (make-package "ROS_SPLINEPATHMOTIONPROFILING"))
  (shadow 'GetSimpleSplinePlan (find-package "ROS_SPLINEPATHMOTIONPROFILING")))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETSIMPLESPLINEPLAN")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETSIMPLESPLINEPLAN"))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETSIMPLESPLINEPLANREQUEST")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETSIMPLESPLINEPLANREQUEST"))
(unless (find-package "ROS_SPLINEPATHMOTIONPROFILING::GETSIMPLESPLINEPLANRESPONSE")
  (make-package "ROS_SPLINEPATHMOTIONPROFILING::GETSIMPLESPLINEPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest
  :super ros::object
  :slots (_waypoints_path ))

(defmethod ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest
  (:init
   (&key
    ((:waypoints_path __waypoints_path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _waypoints_path __waypoints_path)
   self)
  (:waypoints_path
   (&rest __waypoints_path)
   (if (keywordp (car __waypoints_path))
       (send* _waypoints_path __waypoints_path)
     (progn
       (if __waypoints_path (setq _waypoints_path (car __waypoints_path)))
       _waypoints_path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _waypoints_path
    (send _waypoints_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _waypoints_path
       (send _waypoints_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _waypoints_path
     (send _waypoints_path :deserialize buf ptr-) (incf ptr- (send _waypoints_path :serialization-length))
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse
  :super ros::object
  :slots (_spline_path _sd_steps _cumulative_sd_steps ))

(defmethod ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse
  (:init
   (&key
    ((:spline_path __spline_path) (instance nav_msgs::Path :init))
    ((:sd_steps __sd_steps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cumulative_sd_steps __cumulative_sd_steps) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _spline_path __spline_path)
   (setq _sd_steps __sd_steps)
   (setq _cumulative_sd_steps __cumulative_sd_steps)
   self)
  (:spline_path
   (&rest __spline_path)
   (if (keywordp (car __spline_path))
       (send* _spline_path __spline_path)
     (progn
       (if __spline_path (setq _spline_path (car __spline_path)))
       _spline_path)))
  (:sd_steps
   (&optional __sd_steps)
   (if __sd_steps (setq _sd_steps __sd_steps)) _sd_steps)
  (:cumulative_sd_steps
   (&optional __cumulative_sd_steps)
   (if __cumulative_sd_steps (setq _cumulative_sd_steps __cumulative_sd_steps)) _cumulative_sd_steps)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _spline_path
    (send _spline_path :serialization-length)
    ;; float64[] _sd_steps
    (* 8    (length _sd_steps)) 4
    ;; float64[] _cumulative_sd_steps
    (* 8    (length _cumulative_sd_steps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _spline_path
       (send _spline_path :serialize s)
     ;; float64[] _sd_steps
     (write-long (length _sd_steps) s)
     (dotimes (i (length _sd_steps))
       (sys::poke (elt _sd_steps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cumulative_sd_steps
     (write-long (length _cumulative_sd_steps) s)
     (dotimes (i (length _cumulative_sd_steps))
       (sys::poke (elt _cumulative_sd_steps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _spline_path
     (send _spline_path :deserialize buf ptr-) (incf ptr- (send _spline_path :serialization-length))
   ;; float64[] _sd_steps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sd_steps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sd_steps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cumulative_sd_steps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cumulative_sd_steps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cumulative_sd_steps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass ROS_SplinePathMotionProfiling::GetSimpleSplinePlan
  :super ros::object
  :slots ())

(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlan :md5sum-) "e353426b0fcb97acfb6082534ab67613")
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlan :datatype-) "ROS_SplinePathMotionProfiling/GetSimpleSplinePlan")
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlan :request) ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest)
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlan :response) ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse)

(defmethod ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest
  (:response () (instance ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse :init)))

(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest :md5sum-) "e353426b0fcb97acfb6082534ab67613")
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest :datatype-) "ROS_SplinePathMotionProfiling/GetSimpleSplinePlanRequest")
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlanRequest :definition-)
      "nav_msgs/Path waypoints_path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
nav_msgs/Path spline_path
float64[] sd_steps 
float64[] cumulative_sd_steps

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse :md5sum-) "e353426b0fcb97acfb6082534ab67613")
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse :datatype-) "ROS_SplinePathMotionProfiling/GetSimpleSplinePlanResponse")
(setf (get ROS_SplinePathMotionProfiling::GetSimpleSplinePlanResponse :definition-)
      "nav_msgs/Path waypoints_path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
nav_msgs/Path spline_path
float64[] sd_steps 
float64[] cumulative_sd_steps

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :ROS_SplinePathMotionProfiling/GetSimpleSplinePlan "e353426b0fcb97acfb6082534ab67613")


