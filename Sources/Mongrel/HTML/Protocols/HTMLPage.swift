public protocol HTMLView: HTML {
    associatedtype ContentBody: HTML

    @HTMLBuilder var body: Self.ContentBody { get }
}

extension HTMLView {
    public var description: String {
        body.stringValue
    }

    public var debugDescription: String {
        body.stringValue
    }
}
