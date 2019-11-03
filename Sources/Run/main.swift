import Vapor

let app = try Application()
let router = try app.make(Router.self)

//perform a get method
router.get("hello") { request in
    return "Hello, world."
}

//perform a post method. this takes a string and displays it in the response
//router.get("names") { req in
//    guard let name = request.data["name"]?.string else{
//        throw Abort.badRequest
//    }
//    return try JSON(
//        node:[
//        "message":"Hello, \(name)!"])
//}

try app.run()
