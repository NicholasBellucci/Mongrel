public struct HorizontalDivider: Attributable, EventListener {
    public var tag: String = "hr"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    public init() { }
}

extension HorizontalDivider: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
