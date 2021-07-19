public protocol HTMLPage: HTML {
    associatedtype HTMLBody: HTML

    @HTMLBuilder var body: Self.HTMLBody { get }
}

extension HTMLPage {
    public var description: String {
        body.stringValue
    }

    public var debugDescription: String {
        body.stringValue
    }
}
