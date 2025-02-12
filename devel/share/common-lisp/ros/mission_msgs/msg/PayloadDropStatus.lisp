; Auto-generated. Do not edit!


(cl:in-package mission_msgs-msg)


;//! \htmlinclude PayloadDropStatus.msg.html

(cl:defclass <PayloadDropStatus> (roslisp-msg-protocol:ros-message)
  ((is_ready
    :reader is_ready
    :initarg :is_ready
    :type cl:boolean
    :initform cl:nil)
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass PayloadDropStatus (<PayloadDropStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PayloadDropStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PayloadDropStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_msgs-msg:<PayloadDropStatus> is deprecated: use mission_msgs-msg:PayloadDropStatus instead.")))

(cl:ensure-generic-function 'is_ready-val :lambda-list '(m))
(cl:defmethod is_ready-val ((m <PayloadDropStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_msgs-msg:is_ready-val is deprecated.  Use mission_msgs-msg:is_ready instead.")
  (is_ready m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <PayloadDropStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_msgs-msg:drone_id-val is deprecated.  Use mission_msgs-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PayloadDropStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_msgs-msg:stamp-val is deprecated.  Use mission_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PayloadDropStatus>) ostream)
  "Serializes a message object of type '<PayloadDropStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ready) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PayloadDropStatus>) istream)
  "Deserializes a message object of type '<PayloadDropStatus>"
    (cl:setf (cl:slot-value msg 'is_ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PayloadDropStatus>)))
  "Returns string type for a message object of type '<PayloadDropStatus>"
  "mission_msgs/PayloadDropStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PayloadDropStatus)))
  "Returns string type for a message object of type 'PayloadDropStatus"
  "mission_msgs/PayloadDropStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PayloadDropStatus>)))
  "Returns md5sum for a message object of type '<PayloadDropStatus>"
  "ef1328b167874a2395c4858aac30705e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PayloadDropStatus)))
  "Returns md5sum for a message object of type 'PayloadDropStatus"
  "ef1328b167874a2395c4858aac30705e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PayloadDropStatus>)))
  "Returns full string definition for message of type '<PayloadDropStatus>"
  (cl:format cl:nil "bool is_ready        # Drone ready status~%int32 drone_id       # Identifier for the drone~%time stamp          # Time when ready status was set~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PayloadDropStatus)))
  "Returns full string definition for message of type 'PayloadDropStatus"
  (cl:format cl:nil "bool is_ready        # Drone ready status~%int32 drone_id       # Identifier for the drone~%time stamp          # Time when ready status was set~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PayloadDropStatus>))
  (cl:+ 0
     1
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PayloadDropStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PayloadDropStatus
    (cl:cons ':is_ready (is_ready msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':stamp (stamp msg))
))
