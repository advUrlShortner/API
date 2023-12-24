open Cohttp_lwt_unix
open Cohttp
open Lwt

let uri = Uri.of_string "http://illi.cfd/api/newurl/" in
let headers = Header.add (Header.init ()) "Content-Type" "application/json" in
let body = Cohttp_lwt_body.of_string "{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}" in

Client.call ~headers ~body `POST uri
>>= fun (res, body_stream) ->
  (* Do stuff with the result *)
