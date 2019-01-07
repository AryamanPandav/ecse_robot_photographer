; Auto-generated. Do not edit!


(cl:in-package take_picture-msg)


;//! \htmlinclude photo.msg.html

(cl:defclass <photo> (roslisp-msg-protocol:ros-message)
  ((candid
    :reader candid
    :initarg :candid
    :type cl:boolean
    :initform cl:nil)
   (faces
    :reader faces
    :initarg :faces
    :type cl:integer
    :initform 0))
)

(cl:defclass photo (<photo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <photo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'photo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name take_picture-msg:<photo> is deprecated: use take_picture-msg:photo instead.")))

(cl:ensure-generic-function 'candid-val :lambda-list '(m))
(cl:defmethod candid-val ((m <photo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader take_picture-msg:candid-val is deprecated.  Use take_picture-msg:candid instead.")
  (candid m))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <photo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader take_picture-msg:faces-val is deprecated.  Use take_picture-msg:faces instead.")
  (faces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <photo>) ostream)
  "Serializes a message object of type '<photo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'candid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'faces)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <photo>) istream)
  "Deserializes a message object of type '<photo>"
    (cl:setf (cl:slot-value msg 'candid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'faces) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<photo>)))
  "Returns string type for a message object of type '<photo>"
  "take_picture/photo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'photo)))
  "Returns string type for a message object of type 'photo"
  "take_picture/photo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<photo>)))
  "Returns md5sum for a message object of type '<photo>"
  "9a5048f904b00d6276bafa771ddb0e5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'photo)))
  "Returns md5sum for a message object of type 'photo"
  "9a5048f904b00d6276bafa771ddb0e5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<photo>)))
  "Returns full string definition for message of type '<photo>"
  (cl:format cl:nil "bool candid~%int32 faces ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'photo)))
  "Returns full string definition for message of type 'photo"
  (cl:format cl:nil "bool candid~%int32 faces ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <photo>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <photo>))
  "Converts a ROS message object to a list"
  (cl:list 'photo
    (cl:cons ':candid (candid msg))
    (cl:cons ':faces (faces msg))
))
