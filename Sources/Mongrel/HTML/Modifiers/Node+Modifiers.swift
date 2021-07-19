/// Attribute Modifier
///
/// This generic modifier allows for a quick way to apply any
/// attribute to an HTML element.
///
public extension Node {
    func addAttribute(_ attribute: Attribute, value: Any) -> Node {
        var copy = self
        copy.attributes[attribute.rawValue] = "\(value)"
        return copy
    }
}
