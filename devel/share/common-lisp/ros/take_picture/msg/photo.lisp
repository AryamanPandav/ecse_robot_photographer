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
    :initform 0)
   (boundingboxes
    :reader boundingboxes
    :initarg :boundingboxes
    :type (cl:vector take_picture-msg:BoundingBox)
   :initform (cl:make-array 0 :element-type 'take_picture-msg:BoundingBox :initial-element (cl:make-instance 'take_picture-msg:BoundingBox))))
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

(cl:ensure-generic-function 'boundingboxes-val :lambda-list '(m))
(cl:defmethod boundingboxes-val ((m <photo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader take_picture-msg:boundingboxes-val is deprecated.  Use take_picture-msg:boundingboxes instead.")
  (boundingboxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <photo>) ostream)
  "Serializes a message object of type '<photo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'candid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'faces)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boundingboxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boundingboxes))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boundingboxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boundingboxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'take_picture-msg:BoundingBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
  "73107e627d00c84fe1b7898bd9bdf0c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'photo)))
  "Returns md5sum for a message object of type 'photo"
  "73107e627d00c84fe1b7898bd9bdf0c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<photo>)))
  "Returns full string definition for message of type '<photo>"
  (cl:format cl:nil "bool candid~%int32 faces ~%BoundingBox[] boundingboxes~%~%================================================================================~%MSG: take_picture/BoundingBox~%string Class~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'photo)))
  "Returns full string definition for message of type 'photo"
  (cl:format cl:nil "bool candid~%int32 faces ~%BoundingBox[] boundingboxes~%~%================================================================================~%MSG: take_picture/BoundingBox~%string Class~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <photo>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boundingboxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <photo>))
  "Converts a ROS message object to a list"
  (cl:list 'photo
    (cl:cons ':candid (candid msg))
    (cl:cons ':faces (faces msg))
    (cl:cons ':boundingboxes (boundingboxes msg))
))
