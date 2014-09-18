(defn next_number [x] (if (even? x) (/ x 2) (+ 1 (* x 3))))

(defn create_seq [result] 
  (if (= (last result) 1)
      result
      (recur (concat result (list (next_number (last result)))))
  )
)

(def answer (map (fn [x] (create_seq (list x))) (range 1 1000001)))

(println (count answer))
