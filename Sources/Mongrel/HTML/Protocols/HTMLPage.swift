public protocol HTMLPage: CustomStringConvertible, CustomDebugStringConvertible {
    associatedtype Body: HTML

    @HTMLBuilder var body: Self.Body { get }
}

extension HTMLPage {
    public var description: String {
        body.render()
    }

    public var debugDescription: String {
        body.render()
    }
}
