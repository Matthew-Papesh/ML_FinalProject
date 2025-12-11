// Auto-generated. Do not edit!

// (in-package ROS_SplinePathMotionProfiling.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetSimpleSplinePlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoints_path = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoints_path')) {
        this.waypoints_path = initObj.waypoints_path
      }
      else {
        this.waypoints_path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSimpleSplinePlanRequest
    // Serialize message field [waypoints_path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.waypoints_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSimpleSplinePlanRequest
    let len;
    let data = new GetSimpleSplinePlanRequest(null);
    // Deserialize message field [waypoints_path]
    data.waypoints_path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.waypoints_path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetSimpleSplinePlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8513d5adc60aaa265ef7eb12426b376c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path waypoints_path
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSimpleSplinePlanRequest(null);
    if (msg.waypoints_path !== undefined) {
      resolved.waypoints_path = nav_msgs.msg.Path.Resolve(msg.waypoints_path)
    }
    else {
      resolved.waypoints_path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

class GetSimpleSplinePlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.spline_path = null;
      this.sd_steps = null;
      this.cumulative_sd_steps = null;
    }
    else {
      if (initObj.hasOwnProperty('spline_path')) {
        this.spline_path = initObj.spline_path
      }
      else {
        this.spline_path = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('sd_steps')) {
        this.sd_steps = initObj.sd_steps
      }
      else {
        this.sd_steps = [];
      }
      if (initObj.hasOwnProperty('cumulative_sd_steps')) {
        this.cumulative_sd_steps = initObj.cumulative_sd_steps
      }
      else {
        this.cumulative_sd_steps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSimpleSplinePlanResponse
    // Serialize message field [spline_path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.spline_path, buffer, bufferOffset);
    // Serialize message field [sd_steps]
    bufferOffset = _arraySerializer.float64(obj.sd_steps, buffer, bufferOffset, null);
    // Serialize message field [cumulative_sd_steps]
    bufferOffset = _arraySerializer.float64(obj.cumulative_sd_steps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSimpleSplinePlanResponse
    let len;
    let data = new GetSimpleSplinePlanResponse(null);
    // Deserialize message field [spline_path]
    data.spline_path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [sd_steps]
    data.sd_steps = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cumulative_sd_steps]
    data.cumulative_sd_steps = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.spline_path);
    length += 8 * object.sd_steps.length;
    length += 8 * object.cumulative_sd_steps.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetSimpleSplinePlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfa6242b0f40a356164a25a6d0f02974';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSimpleSplinePlanResponse(null);
    if (msg.spline_path !== undefined) {
      resolved.spline_path = nav_msgs.msg.Path.Resolve(msg.spline_path)
    }
    else {
      resolved.spline_path = new nav_msgs.msg.Path()
    }

    if (msg.sd_steps !== undefined) {
      resolved.sd_steps = msg.sd_steps;
    }
    else {
      resolved.sd_steps = []
    }

    if (msg.cumulative_sd_steps !== undefined) {
      resolved.cumulative_sd_steps = msg.cumulative_sd_steps;
    }
    else {
      resolved.cumulative_sd_steps = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSimpleSplinePlanRequest,
  Response: GetSimpleSplinePlanResponse,
  md5sum() { return 'e353426b0fcb97acfb6082534ab67613'; },
  datatype() { return 'ROS_SplinePathMotionProfiling/GetSimpleSplinePlan'; }
};
