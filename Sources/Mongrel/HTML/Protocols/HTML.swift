public protocol HTML: HTMLConvertible {
    associatedtype ContentBody: HTMLConvertible

    @HTMLBuilder var body: Self.ContentBody { get }
}

extension HTML {
    public var description: String {
        body.stringValue
    }

    public var debugDescription: String {
        body.stringValue
    }
}
