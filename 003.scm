;; Largest prime factor
;; Problem 3
;;
;; The prime factors of 13195 are 5, 7, 13
;; and 29. What is the largest prime factor
;; of the number 600851475143?

;; implementation
(define (largest-prime-factor n)
  (let loop ((f 2) (i n))
    (cond ((= f i) f)
          ((= (remainder i f) 0) (loop f (quotient i f)))
          (else (loop (+ f 1) i)))))

;; execution
(display (largest-prime-factor 600851475143))

;; SOLUTION: 6857

;; This solution works well because
;; it only calculates each number a single time.
