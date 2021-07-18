/// Attribute Modifier
///
/// This generic modifier allows for a quick way to apply any
/// attribute to an HTML element.
///
public extension Node {
    func attributes(@AttributeBuilder _ content: () -> [Attribute]) -> Node {
        var copy = self
        content()
            .forEach {
                if let value: Any = $0.associatedValue() {
                    copy.attributes.append((name: $0.stringValue, value: "\(value)"))
                }
            }
        return copy
    }
}
