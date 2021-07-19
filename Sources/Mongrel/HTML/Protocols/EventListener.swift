public protocol EventListener: Element { }

public extension EventListener {
    func on(_ action: EventAttribute, _ script: String) -> EventListener {
        var copy = self
        copy.attributes["on\(action.rawValue)"] = script
        return copy
    }
}
