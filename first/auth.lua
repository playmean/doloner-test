guest = import("guest")
log = import("guest/log")
knock = import("guest/knock")

log.info("version:", guest.version)

knock.http.headers.set("Test", "Hello")
knock.variables.set("url", "https://playmean.xyz")
