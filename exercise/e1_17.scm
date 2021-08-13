#lang racket/base

(define (fast-muti a b)
    (cond ((= b 0) 0)
          ((even? b) (double (fast-muti a (halve b))))
          (else (+ a (fast-muti a (- b 1))))))

(define (even? n)
    (= (remainder n 2) 0))

(define (double n)
    (* 2 n))

(define (halve n)
    (/ n 2))

(fast-muti 101 1033)