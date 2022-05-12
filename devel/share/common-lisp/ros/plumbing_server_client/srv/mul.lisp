; Auto-generated. Do not edit!


(cl:in-package plumbing_server_client-srv)


;//! \htmlinclude mul-request.msg.html

(cl:defclass <mul-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass mul-request (<mul-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mul-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mul-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_server_client-srv:<mul-request> is deprecated: use plumbing_server_client-srv:mul-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <mul-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_server_client-srv:num1-val is deprecated.  Use plumbing_server_client-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <mul-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_server_client-srv:num2-val is deprecated.  Use plumbing_server_client-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mul-request>) ostream)
  "Serializes a message object of type '<mul-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mul-request>) istream)
  "Deserializes a message object of type '<mul-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mul-request>)))
  "Returns string type for a service object of type '<mul-request>"
  "plumbing_server_client/mulRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mul-request)))
  "Returns string type for a service object of type 'mul-request"
  "plumbing_server_client/mulRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mul-request>)))
  "Returns md5sum for a message object of type '<mul-request>"
  "61cc73773f0784551098a676ab62dc95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mul-request)))
  "Returns md5sum for a message object of type 'mul-request"
  "61cc73773f0784551098a676ab62dc95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mul-request>)))
  "Returns full string definition for message of type '<mul-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mul-request)))
  "Returns full string definition for message of type 'mul-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mul-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mul-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mul-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude mul-response.msg.html

(cl:defclass <mul-response> (roslisp-msg-protocol:ros-message)
  ((mul
    :reader mul
    :initarg :mul
    :type cl:integer
    :initform 0))
)

(cl:defclass mul-response (<mul-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mul-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mul-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_server_client-srv:<mul-response> is deprecated: use plumbing_server_client-srv:mul-response instead.")))

(cl:ensure-generic-function 'mul-val :lambda-list '(m))
(cl:defmethod mul-val ((m <mul-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_server_client-srv:mul-val is deprecated.  Use plumbing_server_client-srv:mul instead.")
  (mul m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mul-response>) ostream)
  "Serializes a message object of type '<mul-response>"
  (cl:let* ((signed (cl:slot-value msg 'mul)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mul-response>) istream)
  "Deserializes a message object of type '<mul-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mul) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mul-response>)))
  "Returns string type for a service object of type '<mul-response>"
  "plumbing_server_client/mulResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mul-response)))
  "Returns string type for a service object of type 'mul-response"
  "plumbing_server_client/mulResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mul-response>)))
  "Returns md5sum for a message object of type '<mul-response>"
  "61cc73773f0784551098a676ab62dc95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mul-response)))
  "Returns md5sum for a message object of type 'mul-response"
  "61cc73773f0784551098a676ab62dc95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mul-response>)))
  "Returns full string definition for message of type '<mul-response>"
  (cl:format cl:nil "int32 mul~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mul-response)))
  "Returns full string definition for message of type 'mul-response"
  (cl:format cl:nil "int32 mul~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mul-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mul-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mul-response
    (cl:cons ':mul (mul msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mul)))
  'mul-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mul)))
  'mul-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mul)))
  "Returns string type for a service object of type '<mul>"
  "plumbing_server_client/mul")