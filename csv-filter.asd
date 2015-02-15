(cl:in-package :cl-user)

(defpackage #:csv-filter-asd
  (:use :cl :asdf) )

(cl:in-package #:csv-filter-asd)

(defsystem csv-filter
  :name "csv-filter"
  :version "0.0.1"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description "A CSV row/column filtering toolbox"
  :depends-on (:cl-csv)
  :components
    ((:module src
      :serial t
      :components ((:file :packages)
                   (:file :others) ))))

(defmethod perform ((op test-op)
                    (component (eql (find-system :csv-filter))) )
  (declare (ignore op component))
  (operate 'load-op :csv-filter-test)
  (operate 'test-op :csv-filter-test :force t) )

