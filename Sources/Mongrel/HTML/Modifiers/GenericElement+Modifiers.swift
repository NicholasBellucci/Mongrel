/// Attribute Modifier
///
/// This generic modifier allows for a quick way to apply any
/// attribute to an HTML element.
///
public extension GenericElement {
    func attributes(_ attributes: Attribute...) -> GenericElement {
        var copy = self

        attributes
            .reversed()
            .forEach {
                if let value: String = $0.associatedValue() {
                    copy.attributes[$0.rawValue] = value
                } else {
                    copy.attributes[$0.rawValue] = ""
                }
            }

        return copy
    }

    func addCustomAttribute(_ attribute: String, value: String) -> GenericElement {
        var copy = self
        copy.attributes[attribute] = value
        return copy
    }
}
