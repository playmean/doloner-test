guest = import("guest")
log = import("guest/log")
knock = import("guest/knock")
format = import("guest/format")

log.info("version:", guest.version)

knock.http.headers.set("Test", "Hello")
knock.variables.set("url", "https://playmean.xyz")

response = knock.http.hand.get("https://ipinfo.io")

log.info("ip:", format.json.parse(response).ip)
