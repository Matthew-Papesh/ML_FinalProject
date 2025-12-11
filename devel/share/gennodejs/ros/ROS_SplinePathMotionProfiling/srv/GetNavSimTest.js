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
      this.position_error = null;
      this.heading_error = null;
    }
    else {
      if (initObj.hasOwnProperty('position_error')) {
        this.position_error = initObj.position_error
      }
      else {
        this.position_error = 0.0;
      }
      if (initObj.hasOwnProperty('heading_error')) {
        this.heading_error = initObj.heading_error
      }
      else {
        this.heading_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavSimTestResponse
    // Serialize message field [position_error]
    bufferOffset = _serializer.float64(obj.position_error, buffer, bufferOffset);
    // Serialize message field [heading_error]
    bufferOffset = _serializer.float64(obj.heading_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavSimTestResponse
    let len;
    let data = new GetNavSimTestResponse(null);
    // Deserialize message field [position_error]
    data.position_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_error]
    data.heading_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetNavSimTestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aff0bad24a3a18f4048667c38924dc82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 position_error
    float64 heading_error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavSimTestResponse(null);
    if (msg.position_error !== undefined) {
      resolved.position_error = msg.position_error;
    }
    else {
      resolved.position_error = 0.0
    }

    if (msg.heading_error !== undefined) {
      resolved.heading_error = msg.heading_error;
    }
    else {
      resolved.heading_error = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNavSimTestRequest,
  Response: GetNavSimTestResponse,
  md5sum() { return '5f1ff2380d967c102097eb58066e53b1'; },
  datatype() { return 'ROS_SplinePathMotionProfiling/GetNavSimTest'; }
};
