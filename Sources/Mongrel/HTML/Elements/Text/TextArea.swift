/// The ``TextArea`` element defines a multi-line text input control.
///
/// This element can hold an unlimited number of characters, and the
/// text renders in a fixed-width font.
///
/// For more information about the ``<textarea>`` tag,
/// visit https://www.w3schools.com/tags/tag_textarea.asp
public struct TextArea: Attributable, EventListener {
    public var tag: String = "textarea"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a text area element.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension TextArea {
    func autofocus(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    func disabled(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> TextArea {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func maxLength(_ length: Int) -> TextArea {
        var copy = self
        copy.attributes["maxlength"] = "\(length)"
        return copy
    }

    /// Sets the name for the text area.
    ///
    /// - Parameters:
    ///   - name: The name to use as the button's name.
    func name(_ name: String) -> TextArea {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func placeholder(_ text: String) -> TextArea {
        var copy = self
        copy.attributes["placeholder"] = text
        return copy
    }

    func readonly(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["readonly"] = ""
        }

        return copy
    }

    func required(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    func rows(_ rows: Int) -> TextArea {
        var copy = self
        copy.attributes["rows"] = "\(rows)"
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will submit text direction.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``dirname``
    ///   attribute should be added.
    func submitTextDirection(_ value: Bool) -> TextArea {
        var copy = self

        if let name = copy.attributes["name"] {
            copy.attributes["dirname"] = "\(name).dir"
        }

        return copy
    }

    func wrap(_ wrap: TextWrap) -> TextArea {
        var copy = self
        copy.attributes["wrap"] = wrap.rawValue
        return copy
    }
}

extension TextArea: HTMLConvertible {
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
