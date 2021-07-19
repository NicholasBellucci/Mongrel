/// Attribute Modifier
///
/// This generic modifier allows for a quick way to apply any
/// attribute to an HTML element.
///
public extension GenericElement {
    func addAttribute(_ attribute: Attribute, value: Any) -> GenericElement {
        var copy = self
        copy.attributes[attribute.rawValue] = "\(value)"
        return copy
    }

    func addBooleanAttribute(_ attribute: BooleanAttribute, if value: Bool = true) -> GenericElement {
        var copy = self

        if value {
            copy.attributes[attribute.rawValue] = ""
        }

        return copy
    }
}
