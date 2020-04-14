// Auto-generated. Do not edit!

// (in-package car_body_defect_detect.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class read_pcdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_name = null;
    }
    else {
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type read_pcdRequest
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type read_pcdRequest
    let len;
    let data = new read_pcdRequest(null);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'car_body_defect_detect/read_pcdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2415261c9605b9f38867ffbbe495fc04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new read_pcdRequest(null);
    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    return resolved;
    }
};

class read_pcdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type read_pcdResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type read_pcdResponse
    let len;
    let data = new read_pcdResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'car_body_defect_detect/read_pcdResponse';
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
    const resolved = new read_pcdResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: read_pcdRequest,
  Response: read_pcdResponse,
  md5sum() { return '2415261c9605b9f38867ffbbe495fc04'; },
  datatype() { return 'car_body_defect_detect/read_pcd'; }
};
