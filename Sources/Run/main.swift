import Vapor

let app = try Application()
let router = try app.make(Router.self)

router.get("hello") { request in
    return "Hello, world."
}

router.post("names"){ request in
    return "hi"
}

try app.run()
