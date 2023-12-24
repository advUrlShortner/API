(require '[clj-http.client :as client])

(client/post "http://illi.cfd/api/newurl/" {:content-type :json
                                            :form-params {:url "http://google.com/?z=1"
                                                          :second_url "http://yahoo.com/"
                                                          :pass "aaa"}})
