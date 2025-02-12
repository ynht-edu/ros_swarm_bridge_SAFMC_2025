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

class PayloadDropCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drop_command = null;
      this.drop_time = null;
      this.all_ready = null;
    }
    else {
      if (initObj.hasOwnProperty('drop_command')) {
        this.drop_command = initObj.drop_command
      }
      else {
        this.drop_command = false;
      }
      if (initObj.hasOwnProperty('drop_time')) {
        this.drop_time = initObj.drop_time
      }
      else {
        this.drop_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('all_ready')) {
        this.all_ready = initObj.all_ready
      }
      else {
        this.all_ready = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PayloadDropCommand
    // Serialize message field [drop_command]
    bufferOffset = _serializer.bool(obj.drop_command, buffer, bufferOffset);
    // Serialize message field [drop_time]
    bufferOffset = _serializer.time(obj.drop_time, buffer, bufferOffset);
    // Serialize message field [all_ready]
    bufferOffset = _serializer.bool(obj.all_ready, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PayloadDropCommand
    let len;
    let data = new PayloadDropCommand(null);
    // Deserialize message field [drop_command]
    data.drop_command = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [drop_time]
    data.drop_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [all_ready]
    data.all_ready = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mission_msgs/PayloadDropCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04ffbe17e6b5d579006db45905e28b91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool drop_command    # True to trigger drop
    time drop_time      # Synchronized drop time
    bool all_ready      # True when all drones are ready
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PayloadDropCommand(null);
    if (msg.drop_command !== undefined) {
      resolved.drop_command = msg.drop_command;
    }
    else {
      resolved.drop_command = false
    }

    if (msg.drop_time !== undefined) {
      resolved.drop_time = msg.drop_time;
    }
    else {
      resolved.drop_time = {secs: 0, nsecs: 0}
    }

    if (msg.all_ready !== undefined) {
      resolved.all_ready = msg.all_ready;
    }
    else {
      resolved.all_ready = false
    }

    return resolved;
    }
};

module.exports = PayloadDropCommand;
