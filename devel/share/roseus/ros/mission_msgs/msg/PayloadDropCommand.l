;; Auto-generated. Do not edit!


(when (boundp 'mission_msgs::PayloadDropCommand)
  (if (not (find-package "MISSION_MSGS"))
    (make-package "MISSION_MSGS"))
  (shadow 'PayloadDropCommand (find-package "MISSION_MSGS")))
(unless (find-package "MISSION_MSGS::PAYLOADDROPCOMMAND")
  (make-package "MISSION_MSGS::PAYLOADDROPCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PayloadDropCommand.msg.html


(defclass mission_msgs::PayloadDropCommand
  :super ros::object
  :slots (_drop_command _drop_time _all_ready ))

(defmethod mission_msgs::PayloadDropCommand
  (:init
   (&key
    ((:drop_command __drop_command) nil)
    ((:drop_time __drop_time) (instance ros::time :init))
    ((:all_ready __all_ready) nil)
    )
   (send-super :init)
   (setq _drop_command __drop_command)
   (setq _drop_time __drop_time)
   (setq _all_ready __all_ready)
   self)
  (:drop_command
   (&optional (__drop_command :null))
   (if (not (eq __drop_command :null)) (setq _drop_command __drop_command)) _drop_command)
  (:drop_time
   (&optional __drop_time)
   (if __drop_time (setq _drop_time __drop_time)) _drop_time)
  (:all_ready
   (&optional (__all_ready :null))
   (if (not (eq __all_ready :null)) (setq _all_ready __all_ready)) _all_ready)
  (:serialization-length
   ()
   (+
    ;; bool _drop_command
    1
    ;; time _drop_time
    8
    ;; bool _all_ready
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _drop_command
       (if _drop_command (write-byte -1 s) (write-byte 0 s))
     ;; time _drop_time
       (write-long (send _drop_time :sec) s) (write-long (send _drop_time :nsec) s)
     ;; bool _all_ready
       (if _all_ready (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _drop_command
     (setq _drop_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _drop_time
     (send _drop_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _drop_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _all_ready
     (setq _all_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mission_msgs::PayloadDropCommand :md5sum-) "04ffbe17e6b5d579006db45905e28b91")
(setf (get mission_msgs::PayloadDropCommand :datatype-) "mission_msgs/PayloadDropCommand")
(setf (get mission_msgs::PayloadDropCommand :definition-)
      "bool drop_command    # True to trigger drop
time drop_time      # Synchronized drop time
bool all_ready      # True when all drones are ready

")



(provide :mission_msgs/PayloadDropCommand "04ffbe17e6b5d579006db45905e28b91")


