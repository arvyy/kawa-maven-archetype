(import (scheme base)
        (srfi 64))

(define success #t)
(test-begin "Test")

(include "hello-test.scm")

;; these are needed for the application to return non-0 on test failures
;; so that on maven side we can abort execution.
(set! success (= 0 (test-runner-fail-count (test-runner-get))))
(test-end)
(exit success)
