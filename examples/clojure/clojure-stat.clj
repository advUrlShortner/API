(require '[clj-http.client :as client])

(client/post "http://liil.bid/api/stat/" {:content-type :json
                                          :form-params {:short_url "http://liil.bid/H"
                                                        :pass "aaa"}})
