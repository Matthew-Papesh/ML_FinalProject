; Auto-generated. Do not edit!


(cl:in-package ROS_SplinePathMotionProfiling-srv)


;//! \htmlinclude GetNavCriteriaPlan-request.msg.html

(cl:defclass <GetNavCriteriaPlan-request> (roslisp-msg-protocol:ros-message)
  ((acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (max_linear_speed
    :reader max_linear_speed
    :initarg :max_linear_speed
    :type cl:float
    :initform 0.0)
   (max_angular_speed
    :reader max_angular_speed
    :initarg :max_angular_speed
    :type cl:float
    :initform 0.0)
   (max_centripetal_acceleration
    :reader max_centripetal_acceleration
    :initarg :max_centripetal_acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetNavCriteriaPlan-request (<GetNavCriteriaPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavCriteriaPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavCriteriaPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ROS_SplinePathMotionProfiling-srv:<GetNavCriteriaPlan-request> is deprecated: use ROS_SplinePathMotionProfiling-srv:GetNavCriteriaPlan-request instead.")))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <GetNavCriteriaPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:acceleration-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'max_linear_speed-val :lambda-list '(m))
(cl:defmethod max_linear_speed-val ((m <GetNavCriteriaPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:max_linear_speed-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:max_linear_speed instead.")
  (max_linear_speed m))

(cl:ensure-generic-function 'max_angular_speed-val :lambda-list '(m))
(cl:defmethod max_angular_speed-val ((m <GetNavCriteriaPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:max_angular_speed-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:max_angular_speed instead.")
  (max_angular_speed m))

(cl:ensure-generic-function 'max_centripetal_acceleration-val :lambda-list '(m))
(cl:defmethod max_centripetal_acceleration-val ((m <GetNavCriteriaPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROS_SplinePathMotionProfiling-srv:max_centripetal_acceleration-val is deprecated.  Use ROS_SplinePathMotionProfiling-srv:max_centripetal_acceleration instead.")
  (max_centripetal_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavCriteriaPlan-request>) ostream)
  "Serializes a message object of type '<GetNavCriteriaPlan-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_angular_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_centripetal_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavCriteriaPlan-request>) istream)
  "Deserializes a message object of type '<GetNavCriteriaPlan-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_centripetal_acceleration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavCriteriaPlan-request>)))
  "Returns string type for a service object of type '<GetNavCriteriaPlan-request>"
  "ROS_SplinePathMotionProfiling/GetNavCriteriaPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavCriteriaPlan-request)))
  "Returns string type for a service object of type 'GetNavCriteriaPlan-request"
  "ROS_SplinePathMotionProfiling/GetNavCriteriaPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavCriteriaPlan-request>)))
  "Returns md5sum for a message object of type '<GetNavCriteriaPlan-request>"
  "edb38829b81d2cf836e0906f3ace6437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavCriteriaPlan-request)))
  "Returns md5sum for a message object of type 'GetNavCriteriaPlan-request"
  "edb38829b81d2cf836e0906f3ace6437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavCriteriaPlan-request>)))
  "Returns full string definition for message of type '<GetNavCriteriaPlan-request>"
  (cl:format cl:nil "float64 acceleration~%float64 max_linear_speed~%float64 max_angular_speed~%float64 max_centripetal_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavCriteriaPlan-request)))
  "Returns full string definition for message of type 'GetNavCriteriaPlan-request"
  (cl:format cl:nil "float64 acceleration~%float64 max_linear_speed~%float64 max_angular_speed~%float64 max_centripetal_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavCriteriaPlan-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavCriteriaPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavCriteriaPlan-request
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':max_linear_speed (max_linear_speed msg))
    (cl:cons ':max_angular_speed (max_angular_speed msg))
    (cl:cons ':max_centripetal_acceleration (max_centripetal_acceleration msg))
))
;//! \htmlinclude GetNavCriteriaPlan-response.msg.html

(cl:defclass <GetNavCriteriaPlan-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNavCriteriaPlan-response (<GetNavCriteriaPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavCriteriaPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavCriteriaPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ROS_SplinePathMotionProfiling-srv:<GetNavCriteriaPlan-response> is deprecated: use ROS_SplinePathMotionProfiling-srv:GetNavCriteriaPlan-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavCriteriaPlan-response>) ostream)
  "Serializes a message object of type '<GetNavCriteriaPlan-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavCriteriaPlan-response>) istream)
  "Deserializes a message object of type '<GetNavCriteriaPlan-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavCriteriaPlan-response>)))
  "Returns string type for a service object of type '<GetNavCriteriaPlan-response>"
  "ROS_SplinePathMotionProfiling/GetNavCriteriaPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavCriteriaPlan-response)))
  "Returns string type for a service object of type 'GetNavCriteriaPlan-response"
  "ROS_SplinePathMotionProfiling/GetNavCriteriaPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavCriteriaPlan-response>)))
  "Returns md5sum for a message object of type '<GetNavCriteriaPlan-response>"
  "edb38829b81d2cf836e0906f3ace6437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavCriteriaPlan-response)))
  "Returns md5sum for a message object of type 'GetNavCriteriaPlan-response"
  "edb38829b81d2cf836e0906f3ace6437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavCriteriaPlan-response>)))
  "Returns full string definition for message of type '<GetNavCriteriaPlan-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavCriteriaPlan-response)))
  "Returns full string definition for message of type 'GetNavCriteriaPlan-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavCriteriaPlan-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavCriteriaPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavCriteriaPlan-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNavCriteriaPlan)))
  'GetNavCriteriaPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNavCriteriaPlan)))
  'GetNavCriteriaPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavCriteriaPlan)))
  "Returns string type for a service object of type '<GetNavCriteriaPlan>"
  "ROS_SplinePathMotionProfiling/GetNavCriteriaPlan")