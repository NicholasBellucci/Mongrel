public struct RawHTML {
    private var html: String

    public init(html: String) {
        self.html = html
    }
}

extension RawHTML: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }
}
