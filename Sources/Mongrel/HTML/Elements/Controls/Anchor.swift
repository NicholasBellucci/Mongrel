/// An ``Anchor`` element defines a hyperlink, which is used to link from one
/// page to another.
///
/// If an `Anchor` element is created without a link, it is only a placeholder for a hyperlink.
public struct Anchor: Attributable, EventListener {
    public var tag: String = "a"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an anchor with an optional href.
    ///
    /// - Parameters:
    ///   - href: The optional hyperlink pointing to arbitrary data.
    ///   - content: The HTML inside of the `<a></a>` tags.
    public init(_ href: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        if let href = href {
            attributes["href"] = href
        }

        innerHTML = content().stringValue
    }

    /// Creates an anchor with a `mailto:` href.
    ///
    /// - Parameters:
    ///   - email: The linked email address.
    ///   - content: The HTML inside of the `<a></a>` tags.
    public init(mailTo email: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = "mailto:\(email)"
        innerHTML = content().stringValue
    }

    /// Creates an anchor with a `tel:+` href.
    ///
    /// - Parameters:
    ///   - number: The linked phone number.
    ///   - content: The HTML inside of the `<a></a>` tags.
    public init(call number: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = "tel:+\(number)"
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Anchor`` element
/// and will return an ``Anchor`` element for continued use/updates.
public extension Anchor {
    /// Sets the anchor's attribute: `download`.
    ///
    /// - Parameters:
    ///   - file: The filename of the downloadable content.
    ///
    func download(_ filename: String) -> Anchor {
        var copy = self
        copy.attributes["download"] = filename
        return copy
    }

    /// Sets the anchor's attribute: `hreflang`.
    ///
    /// - Parameters:
    ///   - code: The language code of the linked document.
    ///   - country: The country code of the linked document.
    ///
    func hrefLanguage(_ code: LanguageCode, country: CountryCode? = nil) -> Anchor {
        var copy = self

        if let country = country {
            copy.attributes["hreflang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["hreflang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Sets the anchor's attribute: `media`.
    ///
    /// - Parameters:
    ///   - query: The media/device the linked document if optimized for.
    ///
    func media(_ query: String) -> Anchor {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Sets the anchor's attribute: `ping`.
    ///
    /// - Parameters:
    ///   - list: A space-separated list of URLs to which, when the link is followed,
    ///   post requests with the body ping will be sent by the browser
    ///
    func ping(_ list: String...) -> Anchor {
        var copy = self
        copy.attributes["ping"] = list.map { $0 }.joined(separator: " ")
        return copy
    }

    /// Sets the anchor's attribute: `referrerpolicy`.
    ///
    /// - Parameters:
    ///   - policy: The referrer information to send with the link.
    ///
    func referrerPolicy(_ policy: ReferrerPolicy) -> Anchor {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the anchor's attribute: `rel`.
    ///
    /// - Parameters:
    ///   - relationship: The relationship between the current document and the linked document.
    ///
    func relationship(_ relationship: Relationship.Anchor) -> Anchor {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Sets the anchor's attribute: `target`.
    ///
    /// - Parameters:
    ///   - target: Where to open the linked document.
    ///
    func target(_ target: Target = .`self`) -> Anchor {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    /// Sets the anchor's attribute: `type`.
    ///
    /// - Parameters:
    ///   - type: The media type of the linked document.
    ///
    func type(_ type: String) -> Anchor {
        var copy = self
        copy.attributes["type"] = type
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
