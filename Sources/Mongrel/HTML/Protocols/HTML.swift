public protocol HTML: HTMLConvertible {
    associatedtype ContentBody: HTMLConvertible

    @HTMLBuilder var document: Self.ContentBody { get }
}

extension HTML {
    public var description: String {
        document.stringValue
    }

    public var debugDescription: String {
        document.stringValue
    }
}
