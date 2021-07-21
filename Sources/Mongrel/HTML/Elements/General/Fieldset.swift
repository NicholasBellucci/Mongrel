/// The ``Fieldset`` element is used to group related elements
/// in a form.
///
/// This element draws a box around it's content.
///
/// For more information about the ``<fieldset>`` tag,
/// visit https://www.w3schools.com/tags/tag_fieldset.asp
public struct Fieldset: Attributable, EventListener {
    public var tag: String = "fieldset"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a fieldset element.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Fieldset {
    /// Specifies that a group of related form elements should be disabled.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``disabled``
    ///   attribute should be added.
    func disabled(_ value: Bool) -> Fieldset {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Specifies which form the fieldset belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the fieldset belongs.
    func formId(_ id: String) -> Fieldset {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the name of the fieldset.
    ///
    /// - Parameters:
    ///   - name: The name to use as the fieldset name.
    func name(_ name: String) -> Fieldset {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }
}

extension Fieldset: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}
