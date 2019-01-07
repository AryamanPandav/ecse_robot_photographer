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
  :slots (_candid _faces _boundingboxes ))

(defmethod take_picture::photo
  (:init
   (&key
    ((:candid __candid) nil)
    ((:faces __faces) 0)
    ((:boundingboxes __boundingboxes) (let (r) (dotimes (i 0) (push (instance take_picture::BoundingBox :init) r)) r))
    )
   (send-super :init)
   (setq _candid __candid)
   (setq _faces (round __faces))
   (setq _boundingboxes __boundingboxes)
   self)
  (:candid
   (&optional __candid)
   (if __candid (setq _candid __candid)) _candid)
  (:faces
   (&optional __faces)
   (if __faces (setq _faces __faces)) _faces)
  (:boundingboxes
   (&rest __boundingboxes)
   (if (keywordp (car __boundingboxes))
       (send* _boundingboxes __boundingboxes)
     (progn
       (if __boundingboxes (setq _boundingboxes (car __boundingboxes)))
       _boundingboxes)))
  (:serialization-length
   ()
   (+
    ;; bool _candid
    1
    ;; int32 _faces
    4
    ;; take_picture/BoundingBox[] _boundingboxes
    (apply #'+ (send-all _boundingboxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _candid
       (if _candid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _faces
       (write-long _faces s)
     ;; take_picture/BoundingBox[] _boundingboxes
     (write-long (length _boundingboxes) s)
     (dolist (elem _boundingboxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _candid
     (setq _candid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _faces
     (setq _faces (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; take_picture/BoundingBox[] _boundingboxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boundingboxes (let (r) (dotimes (i n) (push (instance take_picture::BoundingBox :init) r)) r))
     (dolist (elem- _boundingboxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get take_picture::photo :md5sum-) "73107e627d00c84fe1b7898bd9bdf0c8")
(setf (get take_picture::photo :datatype-) "take_picture/photo")
(setf (get take_picture::photo :definition-)
      "bool candid
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


")



(provide :take_picture/photo "73107e627d00c84fe1b7898bd9bdf0c8")


