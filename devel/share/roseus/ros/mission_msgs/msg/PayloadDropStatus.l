;; Auto-generated. Do not edit!


(when (boundp 'mission_msgs::PayloadDropStatus)
  (if (not (find-package "MISSION_MSGS"))
    (make-package "MISSION_MSGS"))
  (shadow 'PayloadDropStatus (find-package "MISSION_MSGS")))
(unless (find-package "MISSION_MSGS::PAYLOADDROPSTATUS")
  (make-package "MISSION_MSGS::PAYLOADDROPSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PayloadDropStatus.msg.html


(defclass mission_msgs::PayloadDropStatus
  :super ros::object
  :slots (_is_ready _drone_id _stamp ))

(defmethod mission_msgs::PayloadDropStatus
  (:init
   (&key
    ((:is_ready __is_ready) nil)
    ((:drone_id __drone_id) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _is_ready __is_ready)
   (setq _drone_id (round __drone_id))
   (setq _stamp __stamp)
   self)
  (:is_ready
   (&optional (__is_ready :null))
   (if (not (eq __is_ready :null)) (setq _is_ready __is_ready)) _is_ready)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; bool _is_ready
    1
    ;; int32 _drone_id
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_ready
       (if _is_ready (write-byte -1 s) (write-byte 0 s))
     ;; int32 _drone_id
       (write-long _drone_id s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_ready
     (setq _is_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mission_msgs::PayloadDropStatus :md5sum-) "ef1328b167874a2395c4858aac30705e")
(setf (get mission_msgs::PayloadDropStatus :datatype-) "mission_msgs/PayloadDropStatus")
(setf (get mission_msgs::PayloadDropStatus :definition-)
      "bool is_ready        # Drone ready status
int32 drone_id       # Identifier for the drone
time stamp          # Time when ready status was set

")



(provide :mission_msgs/PayloadDropStatus "ef1328b167874a2395c4858aac30705e")


