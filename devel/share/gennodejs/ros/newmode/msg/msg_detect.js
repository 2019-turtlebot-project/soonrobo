// Auto-generated. Do not edit!

// (in-package newmode.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msg_detect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.bar = null;
      this.traffic_light = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('bar')) {
        this.bar = initObj.bar
      }
      else {
        this.bar = false;
      }
      if (initObj.hasOwnProperty('traffic_light')) {
        this.traffic_light = initObj.traffic_light
      }
      else {
        this.traffic_light = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg_detect
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [bar]
    bufferOffset = _serializer.bool(obj.bar, buffer, bufferOffset);
    // Serialize message field [traffic_light]
    bufferOffset = _serializer.bool(obj.traffic_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg_detect
    let len;
    let data = new msg_detect(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bar]
    data.bar = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [traffic_light]
    data.traffic_light = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'newmode/msg_detect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3e619251811de3393b11ebe9613655a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode
    bool bar
    bool traffic_light
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg_detect(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.bar !== undefined) {
      resolved.bar = msg.bar;
    }
    else {
      resolved.bar = false
    }

    if (msg.traffic_light !== undefined) {
      resolved.traffic_light = msg.traffic_light;
    }
    else {
      resolved.traffic_light = false
    }

    return resolved;
    }
};

module.exports = msg_detect;
