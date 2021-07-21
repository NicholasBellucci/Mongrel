/// An ``Anchor`` element defines a hyperlink, which is used to link from one
/// page to another.
///
/// If this element is created without a link, it is only a placeholder for a hyperlink.
///
/// For more information about the ``<anchor>`` tag,
/// visit https://www.w3schools.com/tags/tag_a.asp
public struct Anchor: Attributable, EventListener {
    public var tag: String = "a"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an anchor with an optional href.
    ///
    /// - Parameters:
    ///   - href: The optional hyperlink pointing to arbitrary data.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(_ href: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = href
        innerHTML = content().stringValue
    }

    /// Creates an anchor with a `mailto:` href.
    ///
    /// - Parameters:
    ///   - email: The linked email address.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(mailTo email: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["href"] = "mailto:\(email)"
        innerHTML = content().stringValue
    }

    /// Creates an anchor with a `tel:+` href.
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
    /// Adds a condition that controls whether the target
    /// will be downloaded.
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
    ///   - code: The lcode to use as the anguage code.
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

    /// Sets what media/device the linked document is optimized for.
    ///
    /// - Parameters:
    ///   - query: The query to use as the  media/device query.
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
    ///   - policy: The policy to use as the referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Anchor {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the relationship between the current document and
    /// the linked document.
    ///
    /// - Parameters:
    ///   - relationship: The relationship to use as the relationship.
    func relationship(_ relationship: Relationship.Anchor) -> Anchor {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Specifies where to open the linked document.
    ///
    /// - Parameters:
    ///   - target: The target to use as the target.
    func target(_ target: Target = .`self`) -> Anchor {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    /// Sets the media type of the linked document.
    ///
    /// - Parameters:
    ///   - type: The type to use as the media type.
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
