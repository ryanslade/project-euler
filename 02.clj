(def fib-seq (lazy-cat [0 1]
 (map + fib-seq (rest fib-seq))))

(def lessthanfourmillion (take-while #(< % 4000000) fib-seq))

(def numbers (filter #(even? %) lessthanfourmillion))

(println (reduce + numbers))

