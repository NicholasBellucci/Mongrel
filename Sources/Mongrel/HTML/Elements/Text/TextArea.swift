import Foundation

/// The ``TextArea`` element defines a multi-line text input control.
///
/// This element can hold an unlimited number of characters, and the
/// text renders in a fixed-width font.
///
/// For more information about the ``<textarea>`` tag,
/// visit https://www.w3schools.com/tags/tag_textarea.asp
public struct TextArea: Attributable {
    public var tag: String = "textarea"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a text area element with inner content.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``TextArea`` element
/// and will return an ``TextArea`` element for continued use/updates.
public extension TextArea {
    /// Adds a condition that controls whether the element
    /// will be focused automatically on page load.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func autofocus(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be disabled.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``disabled``
    ///   attribute should be added.
    func disabled(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Specifies which form the text area belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> TextArea {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the maximum number of characters allowed in the text area element.
    ///
    /// - Parameters:
    ///   - length: The length to be used as the text area's max length.
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

    /// Specifies a short hint that describes the expected value of the text area element.
    ///
    /// - Parameters:
    ///   - text: The text to be used as the text area's placeholder.
    func placeholder(_ text: String) -> TextArea {
        var copy = self
        copy.attributes["placeholder"] = text
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be read-only.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``readonly``
    ///   attribute should be added.
    func readonly(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["readonly"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// must be filled out before submitting.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``required``
    ///   attribute should be added.
    func required(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    /// Specifies the visible number of lines in the text area.
    ///
    /// - Parameters:
    ///   - rows: The amount of rows to be used as the text area's row count.
    func rows(_ count: Int) -> TextArea {
        var copy = self
        copy.attributes["rows"] = "\(count)"
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

    /// Specifies how the text in the text area is to be wrapped when submitted
    /// in a form.
    ///
    /// - Parameters:
    ///   - wrap: The wrap to be used as the text area's wrap.
    func wrap(_ wrap: TextWrap) -> TextArea {
        var copy = self
        copy.attributes["wrap"] = wrap.rawValue
        return copy
    }
}

public extension TextArea {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> TextArea {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> TextArea {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> TextArea {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> TextArea {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> TextArea {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["hidden"] = ""
        }

        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> TextArea {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> TextArea {
        var copy = self

        if let country = country {
            copy.attributes["lang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["lang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> TextArea {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> TextArea {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> TextArea {
        var copy = self

        styles
            .sorted()
            .forEach {
                switch $0 {
                case let .custom(key, value):
                    copy.styles[key] = "\(value)"
                default:
                    guard let value: String = $0.associatedValue() else { return }
                    copy.styles[$0.stringValue] = "\(value)"
                }
            }

        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> TextArea {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> TextArea {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> TextArea {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
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
