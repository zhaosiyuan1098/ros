;; Auto-generated. Do not edit!


(when (boundp 'plumbing_server_client::mul)
  (if (not (find-package "PLUMBING_SERVER_CLIENT"))
    (make-package "PLUMBING_SERVER_CLIENT"))
  (shadow 'mul (find-package "PLUMBING_SERVER_CLIENT")))
(unless (find-package "PLUMBING_SERVER_CLIENT::MUL")
  (make-package "PLUMBING_SERVER_CLIENT::MUL"))
(unless (find-package "PLUMBING_SERVER_CLIENT::MULREQUEST")
  (make-package "PLUMBING_SERVER_CLIENT::MULREQUEST"))
(unless (find-package "PLUMBING_SERVER_CLIENT::MULRESPONSE")
  (make-package "PLUMBING_SERVER_CLIENT::MULRESPONSE"))

(in-package "ROS")





(defclass plumbing_server_client::mulRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_server_client::mulRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::mulResponse
  :super ros::object
  :slots (_mul ))

(defmethod plumbing_server_client::mulResponse
  (:init
   (&key
    ((:mul __mul) 0)
    )
   (send-super :init)
   (setq _mul (round __mul))
   self)
  (:mul
   (&optional __mul)
   (if __mul (setq _mul __mul)) _mul)
  (:serialization-length
   ()
   (+
    ;; int32 _mul
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mul
       (write-long _mul s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mul
     (setq _mul (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::mul
  :super ros::object
  :slots ())

(setf (get plumbing_server_client::mul :md5sum-) "61cc73773f0784551098a676ab62dc95")
(setf (get plumbing_server_client::mul :datatype-) "plumbing_server_client/mul")
(setf (get plumbing_server_client::mul :request) plumbing_server_client::mulRequest)
(setf (get plumbing_server_client::mul :response) plumbing_server_client::mulResponse)

(defmethod plumbing_server_client::mulRequest
  (:response () (instance plumbing_server_client::mulResponse :init)))

(setf (get plumbing_server_client::mulRequest :md5sum-) "61cc73773f0784551098a676ab62dc95")
(setf (get plumbing_server_client::mulRequest :datatype-) "plumbing_server_client/mulRequest")
(setf (get plumbing_server_client::mulRequest :definition-)
      "int32 num1
int32 num2
---
int32 mul
")

(setf (get plumbing_server_client::mulResponse :md5sum-) "61cc73773f0784551098a676ab62dc95")
(setf (get plumbing_server_client::mulResponse :datatype-) "plumbing_server_client/mulResponse")
(setf (get plumbing_server_client::mulResponse :definition-)
      "int32 num1
int32 num2
---
int32 mul
")



(provide :plumbing_server_client/mul "61cc73773f0784551098a676ab62dc95")


