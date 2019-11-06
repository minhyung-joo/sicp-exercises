(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))

(define (fast-mult a b)
    (cond
        ((= b 0) 0)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))
    )
)

(define (fast-mult-tail a b)
    (define (fast-mult-iter x a b)
        (cond
            ((= b 0) x)
            ((even? b) (fast-mult-iter x (double a) (halve b)))
            (else (fast-mult-iter (+ x a) a (- b 1)))
        )
    )
    (fast-mult-iter 0 a b)
)