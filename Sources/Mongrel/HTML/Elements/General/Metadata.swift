import Foundation

/// The ``Metadata`` element defines metadata about the HTML document.
///
/// This element goes inside the head of the document and will not
/// be displayed on the page.
///
/// For more information about the ``<meta>`` tag,
/// visit https://www.w3schools.com/tags/tag_meta.asp
public struct Metadata: Attributable {
    public var tag: String = "meta"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a metadata element with a name and content.
    ///
    /// - Parameters:
    ///   - name: The name of the metadata.
    ///   - content: The value associated with the ``name`` attribute.
    public init(name: MetadataName, content: String) {
        attributes["name"] = name.rawValue
        attributes["content"] = content
    }

    /// Creates a metadata element with an http-equiv and content.
    ///
    /// - Parameters:
    ///   - httpEquiv: The HTTP header for the information/value.
    ///   - content: The value associated with the ``http-equiv`` attribute.
    public init(httpEquiv: HTTPEquiv, content: String) {
        attributes["http-equiv"] = httpEquiv.rawValue
        attributes["content"] = content
    }
}

/// These extensions are modifiers for an ``Metadata`` element
/// and will return an ``Metadata`` element for continued use/updates.
public extension Metadata {
    /// Sets the character encoding for the document.
    ///
    /// - Parameters:
    ///   - charset: The charset to be used as the metadata charset.
    func charset(_ charset: String) -> Metadata {
        var copy = self
        copy.attributes["charset"] = charset
        return copy
    }
}

public extension Metadata {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Metadata {
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
    func allowsSpellcheck(_ value: Bool) -> Metadata {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Metadata {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Metadata {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Metadata {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Metadata {
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
    func id(_ id: String) -> Metadata {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Metadata {
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
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Metadata {
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
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Metadata {
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
    func styles(_ styles: CSSProperty...) -> Metadata {
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
    func tabIndex(_ index: Int) -> Metadata {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Metadata {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Metadata {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Metadata: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
