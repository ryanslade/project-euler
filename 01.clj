(defn result [limit]
  (reduce + (filter #(or (zero? (mod % 3))
             (zero? (mod % 5)))
            (take (- limit 1) (iterate inc 1)))))
(println (result 1000))

