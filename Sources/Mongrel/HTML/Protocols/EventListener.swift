public protocol EventListener: Element { }

public extension EventListener {
    func on(_ action: EventAttribute, _ script: MongrelJS) -> EventListener {
        var copy = self
        copy.attributes["on\(action.rawValue)"] = script.stringValue
        return copy
    }
}
