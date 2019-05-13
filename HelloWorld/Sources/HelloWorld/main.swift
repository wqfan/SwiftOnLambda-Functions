import SwiftOnLambda

struct Event: Codable {
    let name: String?
}

struct Response: Codable {
    let body: String
}

try startEventLoop(on: { (event: Event) -> Response in
    Response(body: "Hello \(event.name ?? "World")!")
})
