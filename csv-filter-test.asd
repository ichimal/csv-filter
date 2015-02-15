(cl:in-package :cl-user)

(defpackage #:csv-filter-test-asd
  (:use :cl :asdf) )

(in-package #:csv-filter-test-asd)

(defsystem csv-filter-test
  :version "0.0.1"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :depends-on (:csv-filter :rt)
  :components
    ((:module test
      :serial t
      :components
        (;; setup basic test environment
         (:file :packages)
         ;; test suite
         (:file :something-test-suite) ))))

(defmethod perform ((op test-op)
                    (component (eql (find-system :csv-filter-test))) )
  (declare (ignore op component))
  (if (funcall (intern "DO-TESTS" :rt))
    (funcall (intern "REM-ALL-TESTS" :rt)) ))

