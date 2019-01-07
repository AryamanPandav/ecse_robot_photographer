// Auto-generated. Do not edit!

// (in-package take_picture.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox = require('./BoundingBox.js');

//-----------------------------------------------------------

class photo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.candid = null;
      this.faces = null;
      this.boundingboxes = null;
    }
    else {
      if (initObj.hasOwnProperty('candid')) {
        this.candid = initObj.candid
      }
      else {
        this.candid = false;
      }
      if (initObj.hasOwnProperty('faces')) {
        this.faces = initObj.faces
      }
      else {
        this.faces = 0;
      }
      if (initObj.hasOwnProperty('boundingboxes')) {
        this.boundingboxes = initObj.boundingboxes
      }
      else {
        this.boundingboxes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type photo
    // Serialize message field [candid]
    bufferOffset = _serializer.bool(obj.candid, buffer, bufferOffset);
    // Serialize message field [faces]
    bufferOffset = _serializer.int32(obj.faces, buffer, bufferOffset);
    // Serialize message field [boundingboxes]
    // Serialize the length for message field [boundingboxes]
    bufferOffset = _serializer.uint32(obj.boundingboxes.length, buffer, bufferOffset);
    obj.boundingboxes.forEach((val) => {
      bufferOffset = BoundingBox.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type photo
    let len;
    let data = new photo(null);
    // Deserialize message field [candid]
    data.candid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [faces]
    data.faces = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [boundingboxes]
    // Deserialize array length for message field [boundingboxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boundingboxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boundingboxes[i] = BoundingBox.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.boundingboxes.forEach((val) => {
      length += BoundingBox.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'take_picture/photo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73107e627d00c84fe1b7898bd9bdf0c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool candid
    int32 faces 
    BoundingBox[] boundingboxes
    
    ================================================================================
    MSG: take_picture/BoundingBox
    string Class
    float64 probability
    int64 xmin
    int64 ymin
    int64 xmax
    int64 ymax
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new photo(null);
    if (msg.candid !== undefined) {
      resolved.candid = msg.candid;
    }
    else {
      resolved.candid = false
    }

    if (msg.faces !== undefined) {
      resolved.faces = msg.faces;
    }
    else {
      resolved.faces = 0
    }

    if (msg.boundingboxes !== undefined) {
      resolved.boundingboxes = new Array(msg.boundingboxes.length);
      for (let i = 0; i < resolved.boundingboxes.length; ++i) {
        resolved.boundingboxes[i] = BoundingBox.Resolve(msg.boundingboxes[i]);
      }
    }
    else {
      resolved.boundingboxes = []
    }

    return resolved;
    }
};

module.exports = photo;
