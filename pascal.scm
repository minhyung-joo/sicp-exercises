(define (p n)
    (define height (get-height n))
    (cond 
        ((is-edge n height) 1)
        ((< n 4) 1)
        (else (+ (p (- n height)) (p (+ 1 (- n height)))))
    )
)

(define (series n) (if (< n 2) n (+ n (series (- n 1))))

(define (is-edge n h) (or (= n (+ 1 (series (- h 1)))) (= n (+ h (series (- h 1))))

(define (get-height n)  
    (define (get-height-iter n h)
        (if 
            (or (< n h) (= n h)) 
            h
            (get-height-iter (- n h) (+ h 1))
        )
    )
    (get-height-iter n 1)
)