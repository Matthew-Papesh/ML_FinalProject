// Auto-generated. Do not edit!

// (in-package ROS_SplinePathMotionProfiling.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetNavSimTestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_kp = null;
      this.linear_ki = null;
      this.linear_kd = null;
      this.angular_kp = null;
      this.angular_ki = null;
      this.angular_kd = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_kp')) {
        this.linear_kp = initObj.linear_kp
      }
      else {
        this.linear_kp = 0.0;
      }
      if (initObj.hasOwnProperty('linear_ki')) {
        this.linear_ki = initObj.linear_ki
      }
      else {
        this.linear_ki = 0.0;
      }
      if (initObj.hasOwnProperty('linear_kd')) {
        this.linear_kd = initObj.linear_kd
      }
      else {
        this.linear_kd = 0.0;
      }
      if (initObj.hasOwnProperty('angular_kp')) {
        this.angular_kp = initObj.angular_kp
      }
      else {
        this.angular_kp = 0.0;
      }
      if (initObj.hasOwnProperty('angular_ki')) {
        this.angular_ki = initObj.angular_ki
      }
      else {
        this.angular_ki = 0.0;
      }
      if (initObj.hasOwnProperty('angular_kd')) {
        this.angular_kd = initObj.angular_kd
      }
      else {
        this.angular_kd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavSimTestRequest
    // Serialize message field [linear_kp]
    bufferOffset = _serializer.float64(obj.linear_kp, buffer, bufferOffset);
    // Serialize message field [linear_ki]
    bufferOffset = _serializer.float64(obj.linear_ki, buffer, bufferOffset);
    // Serialize message field [linear_kd]
    bufferOffset = _serializer.float64(obj.linear_kd, buffer, bufferOffset);
    // Serialize message field [angular_kp]
    bufferOffset = _serializer.float64(obj.angular_kp, buffer, bufferOffset);
    // Serialize message field [angular_ki]
    bufferOffset = _serializer.float64(obj.angular_ki, buffer, bufferOffset);
    // Serialize message field [angular_kd]
    bufferOffset = _serializer.float64(obj.angular_kd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavSimTestRequest
    let len;
    let data = new GetNavSimTestRequest(null);
    // Deserialize message field [linear_kp]
    data.linear_kp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_ki]
    data.linear_ki = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_kd]
    data.linear_kd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_kp]
    data.angular_kp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_ki]
    data.angular_ki = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_kd]
    data.angular_kd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetNavSimTestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfa9d35973564078f2fc6870ea560295';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 linear_kp
    float64 linear_ki
    float64 linear_kd 
    float64 angular_kp
    float64 angular_ki
    float64 angular_kd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavSimTestRequest(null);
    if (msg.linear_kp !== undefined) {
      resolved.linear_kp = msg.linear_kp;
    }
    else {
      resolved.linear_kp = 0.0
    }

    if (msg.linear_ki !== undefined) {
      resolved.linear_ki = msg.linear_ki;
    }
    else {
      resolved.linear_ki = 0.0
    }

    if (msg.linear_kd !== undefined) {
      resolved.linear_kd = msg.linear_kd;
    }
    else {
      resolved.linear_kd = 0.0
    }

    if (msg.angular_kp !== undefined) {
      resolved.angular_kp = msg.angular_kp;
    }
    else {
      resolved.angular_kp = 0.0
    }

    if (msg.angular_ki !== undefined) {
      resolved.angular_ki = msg.angular_ki;
    }
    else {
      resolved.angular_ki = 0.0
    }

    if (msg.angular_kd !== undefined) {
      resolved.angular_kd = msg.angular_kd;
    }
    else {
      resolved.angular_kd = 0.0
    }

    return resolved;
    }
};

class GetNavSimTestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_errors = null;
      this.y_errors = null;
      this.heading_errors = null;
      this.lin_speed_adjs = null;
      this.ang_speed_adjs = null;
    }
    else {
      if (initObj.hasOwnProperty('x_errors')) {
        this.x_errors = initObj.x_errors
      }
      else {
        this.x_errors = [];
      }
      if (initObj.hasOwnProperty('y_errors')) {
        this.y_errors = initObj.y_errors
      }
      else {
        this.y_errors = [];
      }
      if (initObj.hasOwnProperty('heading_errors')) {
        this.heading_errors = initObj.heading_errors
      }
      else {
        this.heading_errors = [];
      }
      if (initObj.hasOwnProperty('lin_speed_adjs')) {
        this.lin_speed_adjs = initObj.lin_speed_adjs
      }
      else {
        this.lin_speed_adjs = [];
      }
      if (initObj.hasOwnProperty('ang_speed_adjs')) {
        this.ang_speed_adjs = initObj.ang_speed_adjs
      }
      else {
        this.ang_speed_adjs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavSimTestResponse
    // Serialize message field [x_errors]
    bufferOffset = _arraySerializer.float64(obj.x_errors, buffer, bufferOffset, null);
    // Serialize message field [y_errors]
    bufferOffset = _arraySerializer.float64(obj.y_errors, buffer, bufferOffset, null);
    // Serialize message field [heading_errors]
    bufferOffset = _arraySerializer.float64(obj.heading_errors, buffer, bufferOffset, null);
    // Serialize message field [lin_speed_adjs]
    bufferOffset = _arraySerializer.float64(obj.lin_speed_adjs, buffer, bufferOffset, null);
    // Serialize message field [ang_speed_adjs]
    bufferOffset = _arraySerializer.float64(obj.ang_speed_adjs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavSimTestResponse
    let len;
    let data = new GetNavSimTestResponse(null);
    // Deserialize message field [x_errors]
    data.x_errors = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y_errors]
    data.y_errors = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [heading_errors]
    data.heading_errors = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lin_speed_adjs]
    data.lin_speed_adjs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ang_speed_adjs]
    data.ang_speed_adjs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.x_errors.length;
    length += 8 * object.y_errors.length;
    length += 8 * object.heading_errors.length;
    length += 8 * object.lin_speed_adjs.length;
    length += 8 * object.ang_speed_adjs.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetNavSimTestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd4ea63b8d9bf4e4666dc2cd5d3af27d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] x_errors
    float64[] y_errors
    float64[] heading_errors
    float64[] lin_speed_adjs 
    float64[] ang_speed_adjs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavSimTestResponse(null);
    if (msg.x_errors !== undefined) {
      resolved.x_errors = msg.x_errors;
    }
    else {
      resolved.x_errors = []
    }

    if (msg.y_errors !== undefined) {
      resolved.y_errors = msg.y_errors;
    }
    else {
      resolved.y_errors = []
    }

    if (msg.heading_errors !== undefined) {
      resolved.heading_errors = msg.heading_errors;
    }
    else {
      resolved.heading_errors = []
    }

    if (msg.lin_speed_adjs !== undefined) {
      resolved.lin_speed_adjs = msg.lin_speed_adjs;
    }
    else {
      resolved.lin_speed_adjs = []
    }

    if (msg.ang_speed_adjs !== undefined) {
      resolved.ang_speed_adjs = msg.ang_speed_adjs;
    }
    else {
      resolved.ang_speed_adjs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNavSimTestRequest,
  Response: GetNavSimTestResponse,
  md5sum() { return 'af597e7527248169acdbd0f263c0d5da'; },
  datatype() { return 'ROS_SplinePathMotionProfiling/GetNavSimTest'; }
};
