;; Auto-generated. Do not edit!


(when (boundp 'take_picture::photo)
  (if (not (find-package "TAKE_PICTURE"))
    (make-package "TAKE_PICTURE"))
  (shadow 'photo (find-package "TAKE_PICTURE")))
(unless (find-package "TAKE_PICTURE::PHOTO")
  (make-package "TAKE_PICTURE::PHOTO"))

(in-package "ROS")
;;//! \htmlinclude photo.msg.html


(defclass take_picture::photo
  :super ros::object
  :slots (_candid _faces ))

(defmethod take_picture::photo
  (:init
   (&key
    ((:candid __candid) nil)
    ((:faces __faces) 0)
    )
   (send-super :init)
   (setq _candid __candid)
   (setq _faces (round __faces))
   self)
  (:candid
   (&optional __candid)
   (if __candid (setq _candid __candid)) _candid)
  (:faces
   (&optional __faces)
   (if __faces (setq _faces __faces)) _faces)
  (:serialization-length
   ()
   (+
    ;; bool _candid
    1
    ;; int32 _faces
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _candid
       (if _candid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _faces
       (write-long _faces s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _candid
     (setq _candid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _faces
     (setq _faces (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get take_picture::photo :md5sum-) "9a5048f904b00d6276bafa771ddb0e5f")
(setf (get take_picture::photo :datatype-) "take_picture/photo")
(setf (get take_picture::photo :definition-)
      "bool candid
int32 faces 

")



(provide :take_picture/photo "9a5048f904b00d6276bafa771ddb0e5f")


