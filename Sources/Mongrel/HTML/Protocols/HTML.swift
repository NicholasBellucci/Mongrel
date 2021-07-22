public protocol HTML: HTMLConvertible {
    associatedtype Convertible: HTMLConvertible

    @HTMLBuilder var body: Self.Convertible { get }
}

extension HTML {
    public var description: String {
        body.stringValue
    }

    public var debugDescription: String {
        body.stringValue
    }
}
