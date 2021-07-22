import Foundation

/// The ``Text`` element displays read-only text.
///
/// Many different modifiers have been provided in order
/// to quickly and easily format the text.
///
/// Text without modifiers will render as raw text.
///
/// For more information about text formatting,
/// visit https://www.w3schools.com/html/html_formatting.asp
public struct Text: Attributable {
    public var tag: String = ""
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var value: String

    private var tags: [String] = []
    private var attributesCollection: [String: [String: String]] = [:]

    /// Creates a text element that displays a string.
    ///
    /// - Parameters:
    ///   - value: The string to display.
    public init(_ value: String) {
        self.value = value.escaped
    }
}

/// These extensions are modifiers for an ``Text`` element
/// and will return an ``Text`` element for continued use/updates.
public extension Text {
    /// Defines the text as an abbreviation/acronym.
    ///
    /// - Parameters:
    ///   - title: Used to show the description for the abbreviation/acronym.
    func abbreviated(title: String) -> Text {
        var copy = self
        copy.tags.append("abbr")
        copy.attributesCollection["abbr"] = ["title": title]
        return copy
    }

    /// Sets the text to bold.
    func bold() -> Text {
        var copy = self
        copy.tags.append("b")
        return copy
    }

    /// Defines the text as a title of creative work. Browsers will
    /// usually render the text as italicized.
    func cited() -> Text {
        var copy = self
        copy.tags.append("cite")
        return copy
    }

    /// Defines the text as being deleted from the document. Browsers will
    /// usually strike a line through deleted text.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``del``
    ///   attribute should be added.
    func deleted(_ active: Bool = true) -> Text {
        var copy = self

        if active {
            copy.tags.append("del")
        }

        return copy
    }

    /// Defines the direction the text draws.
    ///
    /// - Parameters:
    ///   - direction: The direction to use as the text direction.
    func direction(_ direction: Direction) -> Text {
        var copy = self
        copy.tags.append("bdo")
        copy.attributesCollection["bdo"] = ["dir": direction.rawValue]
        return copy
    }

    /// Defines the text as emphasized. This will make the text italic and
    /// screen readers will pronounce the text with emphasis.
    func emphasized() -> Text {
        var copy = self
        copy.tags.append("em")
        return copy
    }

    /// Defines the text as a heading, h1-h6.
    ///
    /// - Parameters:
    ///   - direction: The heading to use as the text heading value.
    func heading(_ heading: Heading) -> Text {
        var copy = self
        copy.tags.append("\(heading.rawValue)")
        return copy
    }

    /// Defines the text with strong importance. Browsers will
    /// usually bolden the text.
    func important() -> Text {
        var copy = self
        copy.tags.append("strong")
        return copy
    }

    /// Defines the text as being inserted into the document. Browsers will
    /// usually underline inserted text.
    func inserted() -> Text {
        var copy = self
        copy.tags.append("ins")
        return copy
    }

    /// Sets the text to italic.
    func italic() -> Text {
        var copy = self
        copy.tags.append("i")
        return copy
    }

    /// Sets the text to marked or highlighted.
    func marked() -> Text {
        var copy = self
        copy.tags.append("mark")
        return copy
    }

    /// Defines the text inside of a paragraph.
    func paragraph() -> Text {
        var copy = self
        copy.tags.append("p")
        return copy
    }

    /// Defines the text as small.
    func small() -> Text {
        var copy = self
        copy.tags.append("small")
        return copy
    }

    /// Defines the text inside of a span.
    func span() -> Text {
        var copy = self
        copy.tags.append("span")
        return copy
    }

    /// Defines the text as a subscript. Subscript text appears half a
    /// character below the normal line, and is sometimes rendered in a smaller font.
    func `subscript`() -> Text {
        var copy = self
        copy.tags.append("sub")
        return copy
    }

    /// Defines the text as a superscript. Subscript text appears half a
    /// character above the normal line, and is sometimes rendered in a smaller font.
    func superscript() -> Text {
        var copy = self
        copy.tags.append("sup")
        return copy
    }

    /// Adds quotation marks around the text.
    func quoted() -> Text {
        var copy = self
        copy.tags.append("q")
        return copy
    }

    /// Adds a line below the text.
    func underlined() -> Text {
        var copy = self
        copy.tags.append("u")
        return copy
    }
}

public extension Text {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Text {
        guard let copy: Self = self.accessKey(key) else { return self }
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> Text {
        guard let copy: Self = self.allowsSpellcheck(value) else { return self }
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Text {
        guard let copy: Self = self.class(name) else { return self }
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Text {
        guard let copy: Self = self.contentEditable(value) else { return self }
        return copy
    }

    /// Sets an attribute value for a given key.
    ///
    /// - Parameters:
    ///   - key: The key to use as the attribute key.
    ///   - value: The value to use as the attribute value.
    func customAttribute(key: String, value: String) -> Text {
        guard let copy: Self = self.customAttribute(key: key, value: value) else { return self }
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Text {
        guard let copy: Self = self.draggable(value) else { return self }
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Text {
        guard let copy: Self = self.hidden(value) else { return self }
        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> Text {
        guard let copy: Self = self.id(id) else { return self }
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Text {
        guard let copy: Self = self.language(code, country: country) else { return self }
        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Text {
        guard let copy: Self = self.setMargins(edges, length: length) else { return self }
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Text {
        guard let copy: Self = self.setPadding(edges, length: length) else { return self }
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Text {
        guard let copy: Self = self.setStyles(styles: styles) else { return self }
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Text {
        guard let copy: Self = self.tabIndex(index) else { return self }
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Text {
        guard let copy: Self = self.title(title) else { return self }
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Text {
        guard let copy: Self = self.translated(value) else { return self }
        return copy
    }
}

extension Text: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        var html: String = value
        var tags: [String] = tags

        if tags.isEmpty, !attributes.isEmpty {
            tags.append("span")
        } else if tags.isEmpty, !styles.isEmpty {
            tags.append("span")
        }
        
        tags
            .reversed()
            .enumerated()
            .forEach { index, tag in
                if index == 0 {
                    html = "<\(tag)\(attributesString)\(attributes(for: tag))>\(html)</\(tag)>"
                } else {
                    html = "<\(tag)\(attributes(for: tag))>\(html)</\(tag)>"
                }
            }

        return html
    }

    private func attributes(for tag: String) -> String {
        guard let array = attributesCollection[tag] else { return "" }

        return " " + array
            .map { attribute in "\(attribute.key)=\"\(attribute.value)\"" }
            .joined(separator: " ")
    }
}
