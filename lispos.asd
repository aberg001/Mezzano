;;;; Copyright (c) 2011-2015 Henry Harrington <henry.harrington@gmail.com>
;;;; This code is licensed under the MIT license.

(in-package :asdf)

(defsystem "lispos"
  :description "Lisp operating system."
  :version "0"
  :author "Henry Harrington <henry.harrington@gmail.com>"
  :licence "MIT"
  :depends-on ("lispos-compiler"
               #:nibbles #:cl-ppcre #:iterate
               #:alexandria)
  :components ((:file "tools/build-unicode")
               (:file "tools/build-pci-ids")
               (:file "tools/cold-generator"
                :depends-on ("tools/build-unicode"
                             "tools/build-pci-ids"))))
