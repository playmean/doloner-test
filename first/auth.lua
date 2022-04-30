guest = import("guest")
log = import("guest/log")
knock = import("guest/knock")
format = import("guest/format")
variables = import("guest/variables")

log.info("version:", guest.version)

knock.headers.set("Test", "Hello")
variables.set("url", "https://playmean.xyz")

response = knock.hand.get("https://ipinfo.io")

log.info("ip:", format.json.parse(response).ip)
