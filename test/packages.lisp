(cl:defpackage :csv-filter-test
  (:use :cl :csv-filter :rt)
  (:import-from :rt #:*expected-failures*) )

(rt:rem-all-tests)

