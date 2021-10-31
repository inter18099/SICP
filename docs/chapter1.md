# Chapter 1

e1_17

```
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
```

Exercise1-11

```
(define (e111 n)
  (cond ((< n 3) n)
        (else (+ (e111 (- n 1)) (* 2 (e111 (- n 2))) (* 3 (e111 (- n 3)))))))

(e111 -100)
```