(define (f x)
    (display " ")
    (modulo x 3) (if (= (modulo x 3) 0) (display x) (display ""))

  (if (< x 100) (f (+ x 1)) 10))
(f 0)

;(cons `a (cons `b (cons .... (cons `()))))
(define (g x) (if (null? x) 0 (display (car x))) (if (null? x) x (g (cdr x))))
(g (list `a `b `c `d 1 2 3))

(define (forall f l) (if (null? l) l (f (car l))) (if (null? l) l (forall f ( cdr l))))
(newline)
(forall display (list `a `b `c `d 1 2 3))
