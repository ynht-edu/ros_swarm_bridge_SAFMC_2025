; Auto-generated. Do not edit!


(cl:in-package mission_msgs-msg)


;//! \htmlinclude PayloadDropCommand.msg.html

(cl:defclass <PayloadDropCommand> (roslisp-msg-protocol:ros-message)
  ((drop_command
    :reader drop_command
    :initarg :drop_command
    :type cl:boolean
    :initform cl:nil)
   (drop_time
    :reader drop_time
    :initarg :drop_time
    :type cl:real
    :initform 0)
   (all_ready
    :reader all_ready
    :initarg :all_ready
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PayloadDropCommand (<PayloadDropCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PayloadDropCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PayloadDropCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_msgs-msg:<PayloadDropCommand> is deprecated: use mission_msgs-msg:PayloadDropCommand instead.")))

(cl:ensure-generic-function 'drop_command-val :lambda-list '(m))
(cl:defmethod drop_command-val ((m <PayloadDropCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_msgs-msg:drop_command-val is deprecated.  Use mission_msgs-msg:drop_command instead.")
  (drop_command m))

(cl:ensure-generic-function 'drop_time-val :lambda-list '(m))
(cl:defmethod drop_time-val ((m <PayloadDropCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_msgs-msg:drop_time-val is deprecated.  Use mission_msgs-msg:drop_time instead.")
  (drop_time m))

(cl:ensure-generic-function 'all_ready-val :lambda-list '(m))
(cl:defmethod all_ready-val ((m <PayloadDropCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_msgs-msg:all_ready-val is deprecated.  Use mission_msgs-msg:all_ready instead.")
  (all_ready m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PayloadDropCommand>) ostream)
  "Serializes a message object of type '<PayloadDropCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'drop_command) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'drop_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'drop_time) (cl:floor (cl:slot-value msg 'drop_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'all_ready) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PayloadDropCommand>) istream)
  "Deserializes a message object of type '<PayloadDropCommand>"
    (cl:setf (cl:slot-value msg 'drop_command) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drop_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'all_ready) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PayloadDropCommand>)))
  "Returns string type for a message object of type '<PayloadDropCommand>"
  "mission_msgs/PayloadDropCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PayloadDropCommand)))
  "Returns string type for a message object of type 'PayloadDropCommand"
  "mission_msgs/PayloadDropCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PayloadDropCommand>)))
  "Returns md5sum for a message object of type '<PayloadDropCommand>"
  "04ffbe17e6b5d579006db45905e28b91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PayloadDropCommand)))
  "Returns md5sum for a message object of type 'PayloadDropCommand"
  "04ffbe17e6b5d579006db45905e28b91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PayloadDropCommand>)))
  "Returns full string definition for message of type '<PayloadDropCommand>"
  (cl:format cl:nil "bool drop_command    # True to trigger drop~%time drop_time      # Synchronized drop time~%bool all_ready      # True when all drones are ready~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PayloadDropCommand)))
  "Returns full string definition for message of type 'PayloadDropCommand"
  (cl:format cl:nil "bool drop_command    # True to trigger drop~%time drop_time      # Synchronized drop time~%bool all_ready      # True when all drones are ready~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PayloadDropCommand>))
  (cl:+ 0
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PayloadDropCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PayloadDropCommand
    (cl:cons ':drop_command (drop_command msg))
    (cl:cons ':drop_time (drop_time msg))
    (cl:cons ':all_ready (all_ready msg))
))
