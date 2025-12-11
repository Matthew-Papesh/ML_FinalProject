
(cl:in-package :asdf)

(defsystem "ROS_SplinePathMotionProfiling-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetNavCriteriaPlan" :depends-on ("_package_GetNavCriteriaPlan"))
    (:file "_package_GetNavCriteriaPlan" :depends-on ("_package"))
    (:file "GetNavSimTest" :depends-on ("_package_GetNavSimTest"))
    (:file "_package_GetNavSimTest" :depends-on ("_package"))
    (:file "GetSimpleSplinePlan" :depends-on ("_package_GetSimpleSplinePlan"))
    (:file "_package_GetSimpleSplinePlan" :depends-on ("_package"))
  ))