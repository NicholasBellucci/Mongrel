import Foundation

/// An ``Anchor`` element defines a hyperlink, which is used to link from one
/// page to another.
///
/// If this element is created without a link, it is only a placeholder for a hyperlink.
///
/// For more information about the ``<anchor>`` tag,
/// visit https://www.w3schools.com/tags/tag_a.asp
public struct Anchor: Attributable {
    public var tag: String = "a"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an anchor with an optional href and inner content.
    ///
    /// - Parameters:
    ///   - href: The optional hyperlink pointing to arbitrary data.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(_ href: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = href
        innerHTML = content().stringValue
    }

    /// Creates an anchor with a `mailto:` href and inner content.
    ///
    /// - Parameters:
    ///   - email: The linked email address.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(mailTo email: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = "mailto:\(email)"
        innerHTML = content().stringValue
    }

    /// Creates an anchor with a `tel:+` href and inner content.
    ///
    /// - Parameters:
    ///   - number: The linked phone number.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(call number: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = "tel:+\(number)"
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Anchor`` element
/// and will return an ``Anchor`` element for continued use/updates.
public extension Anchor {
    /// Adds a condition that controls whether the element
    /// can be downloaded.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``download``
    ///   attribute should be added.
    func downloadable(_ value: Bool) -> Anchor {
        var copy = self

        if value {
            copy.attributes["download"] = ""
        }

        return copy
    }

    /// Sets the language of the linked document.
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func hrefLanguage(_ code: LanguageCode, _ country: CountryCode? = nil) -> Anchor {
        var copy = self

        if let country = country {
            copy.attributes["hreflang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["hreflang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Specifies what media/device the linked document is optimized.
    ///
    /// - Parameters:
    ///   - query: The query to use as the anchor's media/device query.
    func media(_ query: String) -> Anchor {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Specifies the URLs to which post requests with the body
    /// ping will be sent by the browser.
    ///
    /// - Parameters:
    ///   - list: The list to use as the ping list.
    func ping(_ list: String...) -> Anchor {
        var copy = self
        copy.attributes["ping"] = list.map { $0 }.joined(separator: " ")
        return copy
    }

    /// Specifies which referrer information to send with the link.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the anchor's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Anchor {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Specifies the relationship between the current document and
    /// the linked document.
    ///
    /// - Parameters:
    ///   - relationship: The relationship to use as the anchor's relationship.
    func relationship(_ relationship: Relationship.Anchor) -> Anchor {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Specifies where to open the linked document.
    ///
    /// - Parameters:
    ///   - target: The target to use as the anchor's target.
    func target(_ target: Target = .`self`) -> Anchor {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    /// Sets the media type of the linked document.
    ///
    /// - Parameters:
    ///   - type: The type to use as the anchor's media type.
    func type(_ type: String) -> Anchor {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}

public extension Anchor {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Anchor {
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
    func allowsSpellcheck(_ value: Bool) -> Anchor {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Anchor {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Anchor {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Anchor {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Anchor {
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
    func id(_ id: String) -> Anchor {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Anchor {
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
    /// - Parameters:margin(_ edges: Edge.Margin...
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Anchor {
        var copy = self
        Margin.set(for: &copy, edges, length: length)
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Anchor {
        var copy = self
        Padding.set(for: &copy, edges, length: length)
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Anchor {
        var copy = self
        CSSProperty.set(for: &copy, styles: styles)
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Anchor {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Anchor {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Anchor {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Anchor: HTMLConvertible {
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
