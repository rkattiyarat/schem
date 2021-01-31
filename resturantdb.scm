#lang racket
(require db)
(define dbcon (sqlite3-connect #:database "C:/sqlite/sqlite-tools-win32-x86-3330000/r.db"))


(define (keepr name)(query dbcon "insert into restaurants(name) values(?)" name))
                    

(define (keepd name price RID)  (query dbcon "insert into dishes(name,price,storeID) values(?,?,?)" name price RID) )
(define (keepo rid did adress) (query dbcon "insert into orders(RID,DID,adress) values(?,?,?)" rid did adress))
(define (cleanresault r) (display (vector-ref (struct->vector r) 2)))
(define (showmenu rid) (cleanresault (query dbcon "select * from dishes where storeID is ?" rid)))



(define (order)
  (define select "")
  (define ds "")
  (define adress "")
  (display (cleanresault(query dbcon "select * from restaurants")))
  (set! select(read))
  (display (showmenu select))
(set! ds(read))
  (set! adress(read))
  (keepo select ds adress)
  
  
  )
 
