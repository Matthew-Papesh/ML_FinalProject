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

class GetNavCriteriaPlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acceleration = null;
      this.max_linear_speed = null;
      this.max_angular_speed = null;
      this.max_centripetal_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_speed')) {
        this.max_linear_speed = initObj.max_linear_speed
      }
      else {
        this.max_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_angular_speed')) {
        this.max_angular_speed = initObj.max_angular_speed
      }
      else {
        this.max_angular_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_centripetal_acceleration')) {
        this.max_centripetal_acceleration = initObj.max_centripetal_acceleration
      }
      else {
        this.max_centripetal_acceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavCriteriaPlanRequest
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float64(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [max_linear_speed]
    bufferOffset = _serializer.float64(obj.max_linear_speed, buffer, bufferOffset);
    // Serialize message field [max_angular_speed]
    bufferOffset = _serializer.float64(obj.max_angular_speed, buffer, bufferOffset);
    // Serialize message field [max_centripetal_acceleration]
    bufferOffset = _serializer.float64(obj.max_centripetal_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavCriteriaPlanRequest
    let len;
    let data = new GetNavCriteriaPlanRequest(null);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_linear_speed]
    data.max_linear_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_angular_speed]
    data.max_angular_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_centripetal_acceleration]
    data.max_centripetal_acceleration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetNavCriteriaPlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edb38829b81d2cf836e0906f3ace6437';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 acceleration
    float64 max_linear_speed
    float64 max_angular_speed
    float64 max_centripetal_acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavCriteriaPlanRequest(null);
    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    if (msg.max_linear_speed !== undefined) {
      resolved.max_linear_speed = msg.max_linear_speed;
    }
    else {
      resolved.max_linear_speed = 0.0
    }

    if (msg.max_angular_speed !== undefined) {
      resolved.max_angular_speed = msg.max_angular_speed;
    }
    else {
      resolved.max_angular_speed = 0.0
    }

    if (msg.max_centripetal_acceleration !== undefined) {
      resolved.max_centripetal_acceleration = msg.max_centripetal_acceleration;
    }
    else {
      resolved.max_centripetal_acceleration = 0.0
    }

    return resolved;
    }
};

class GetNavCriteriaPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavCriteriaPlanResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavCriteriaPlanResponse
    let len;
    let data = new GetNavCriteriaPlanResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ROS_SplinePathMotionProfiling/GetNavCriteriaPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavCriteriaPlanResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: GetNavCriteriaPlanRequest,
  Response: GetNavCriteriaPlanResponse,
  md5sum() { return 'edb38829b81d2cf836e0906f3ace6437'; },
  datatype() { return 'ROS_SplinePathMotionProfiling/GetNavCriteriaPlan'; }
};
