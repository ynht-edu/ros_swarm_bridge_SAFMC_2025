// Auto-generated. Do not edit!

// (in-package mission_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PayloadDropStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_ready = null;
      this.drone_id = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('is_ready')) {
        this.is_ready = initObj.is_ready
      }
      else {
        this.is_ready = false;
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PayloadDropStatus
    // Serialize message field [is_ready]
    bufferOffset = _serializer.bool(obj.is_ready, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.int32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PayloadDropStatus
    let len;
    let data = new PayloadDropStatus(null);
    // Deserialize message field [is_ready]
    data.is_ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mission_msgs/PayloadDropStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef1328b167874a2395c4858aac30705e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_ready        # Drone ready status
    int32 drone_id       # Identifier for the drone
    time stamp          # Time when ready status was set
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PayloadDropStatus(null);
    if (msg.is_ready !== undefined) {
      resolved.is_ready = msg.is_ready;
    }
    else {
      resolved.is_ready = false
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = PayloadDropStatus;
