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
    /// Sets the fieldset's attribute: ``disabled``.
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

    /// Sets the fieldset's attribute: ``form``.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the fieldset belongs.
    func formId(_ id: String) -> Fieldset {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the button's attribute: ``name``.
    ///
    /// - Parameters:
    ///   - name: The name of the fieldset.
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
