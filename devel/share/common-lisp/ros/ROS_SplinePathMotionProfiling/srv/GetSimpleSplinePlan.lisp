; Auto-generated. Do not edit!


(cl:in-package ROS_SplinePathMotionProfiling-srv)


;//! \htmlinclude GetSimpleSplinePlan-request.msg.html

(cl:defclass <GetSimpleSplinePlan-request> (roslisp-msg-protocol:ros-message)
  ((waypoints_path
    :reader waypoints_path
    :initarg :waypoints_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass GetSimpleSplinePlan-request (<GetSimpleSplinePlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSimpleSplinePlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSimpleSplinePlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ROS_SplinePathMotionProfiling-srv:<GetSimpleSplinePlan-request> is deprecated: use ROS_SplinePathMotionProfiling-srv:GetSimpleSplinePlan-request instead.")))

(cl:ensure-generic-function 'waypoints_path-val :lambda-list '(m))
(cl:defmethod waypoints_path-val ((m <GetSimpleSplinePlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:waypoints_path-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:waypoints_path instead.")
  (waypoints_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSimpleSplinePlan-request>) ostream)
  "Serializes a message object of type '<GetSimpleSplinePlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSimpleSplinePlan-request>) istream)
  "Deserializes a message object of type '<GetSimpleSplinePlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSimpleSplinePlan-request>)))
  "Returns string type for a service object of type '<GetSimpleSplinePlan-request>"
  "ROS_SplinePathMotionProfiling/GetSimpleSplinePlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSimpleSplinePlan-request)))
  "Returns string type for a service object of type 'GetSimpleSplinePlan-request"
  "ROS_SplinePathMotionProfiling/GetSimpleSplinePlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSimpleSplinePlan-request>)))
  "Returns md5sum for a message object of type '<GetSimpleSplinePlan-request>"
  "e353426b0fcb97acfb6082534ab67613")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSimpleSplinePlan-request)))
  "Returns md5sum for a message object of type 'GetSimpleSplinePlan-request"
  "e353426b0fcb97acfb6082534ab67613")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSimpleSplinePlan-request>)))
  "Returns full string definition for message of type '<GetSimpleSplinePlan-request>"
  (cl:format cl:nil "nav_msgs/Path waypoints_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSimpleSplinePlan-request)))
  "Returns full string definition for message of type 'GetSimpleSplinePlan-request"
  (cl:format cl:nil "nav_msgs/Path waypoints_path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSimpleSplinePlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSimpleSplinePlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSimpleSplinePlan-request
    (cl:cons ':waypoints_path (waypoints_path msg))
))
;//! \htmlinclude GetSimpleSplinePlan-response.msg.html

(cl:defclass <GetSimpleSplinePlan-response> (roslisp-msg-protocol:ros-message)
  ((spline_path
    :reader spline_path
    :initarg :spline_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (sd_steps
    :reader sd_steps
    :initarg :sd_steps
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cumulative_sd_steps
    :reader cumulative_sd_steps
    :initarg :cumulative_sd_steps
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetSimpleSplinePlan-response (<GetSimpleSplinePlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSimpleSplinePlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSimpleSplinePlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ROS_SplinePathMotionProfiling-srv:<GetSimpleSplinePlan-response> is deprecated: use ROS_SplinePathMotionProfiling-srv:GetSimpleSplinePlan-response instead.")))

(cl:ensure-generic-function 'spline_path-val :lambda-list '(m))
(cl:defmethod spline_path-val ((m <GetSimpleSplinePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:spline_path-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:spline_path instead.")
  (spline_path m))

(cl:ensure-generic-function 'sd_steps-val :lambda-list '(m))
(cl:defmethod sd_steps-val ((m <GetSimpleSplinePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:sd_steps-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:sd_steps instead.")
  (sd_steps m))

(cl:ensure-generic-function 'cumulative_sd_steps-val :lambda-list '(m))
(cl:defmethod cumulative_sd_steps-val ((m <GetSimpleSplinePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:cumulative_sd_steps-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:cumulative_sd_steps instead.")
  (cumulative_sd_steps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSimpleSplinePlan-response>) ostream)
  "Serializes a message object of type '<GetSimpleSplinePlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spline_path) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sd_steps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'sd_steps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cumulative_sd_steps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cumulative_sd_steps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSimpleSplinePlan-response>) istream)
  "Deserializes a message object of type '<GetSimpleSplinePlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spline_path) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sd_steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sd_steps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cumulative_sd_steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cumulative_sd_steps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSimpleSplinePlan-response>)))
  "Returns string type for a service object of type '<GetSimpleSplinePlan-response>"
  "ROS_SplinePathMotionProfiling/GetSimpleSplinePlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSimpleSplinePlan-response)))
  "Returns string type for a service object of type 'GetSimpleSplinePlan-response"
  "ROS_SplinePathMotionProfiling/GetSimpleSplinePlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSimpleSplinePlan-response>)))
  "Returns md5sum for a message object of type '<GetSimpleSplinePlan-response>"
  "e353426b0fcb97acfb6082534ab67613")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSimpleSplinePlan-response)))
  "Returns md5sum for a message object of type 'GetSimpleSplinePlan-response"
  "e353426b0fcb97acfb6082534ab67613")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSimpleSplinePlan-response>)))
  "Returns full string definition for message of type '<GetSimpleSplinePlan-response>"
  (cl:format cl:nil "nav_msgs/Path spline_path~%float64[] sd_steps ~%float64[] cumulative_sd_steps~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSimpleSplinePlan-response)))
  "Returns full string definition for message of type 'GetSimpleSplinePlan-response"
  (cl:format cl:nil "nav_msgs/Path spline_path~%float64[] sd_steps ~%float64[] cumulative_sd_steps~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSimpleSplinePlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spline_path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sd_steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cumulative_sd_steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSimpleSplinePlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSimpleSplinePlan-response
    (cl:cons ':spline_path (spline_path msg))
    (cl:cons ':sd_steps (sd_steps msg))
    (cl:cons ':cumulative_sd_steps (cumulative_sd_steps msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSimpleSplinePlan)))
  'GetSimpleSplinePlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSimpleSplinePlan)))
  'GetSimpleSplinePlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSimpleSplinePlan)))
  "Returns string type for a service object of type '<GetSimpleSplinePlan>"
  "ROS_SplinePathMotionProfiling/GetSimpleSplinePlan")