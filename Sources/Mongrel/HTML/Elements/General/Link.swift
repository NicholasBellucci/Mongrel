/// The ``Link`` element links external resources.
///
/// For more information about the ``<link>`` tag,
/// visit https://www.w3schools.com/tags/tag_link.asp
public struct Link: Attributable, EventListener {
    public var tag: String = "link"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a link with an href and a relationship.
    ///
    /// - Parameters:
    ///   - href: The location of the linked document.
    ///   - rel: The relationship between the current and linked document.
    public init(href: String, rel: String) {
        attributes["href"] = href
        attributes["rel"] = rel
    }
}

/// These extensions are modifiers for an ``Link`` element
/// and will return an ``Link`` element for continued use/updates.
public extension Link {
    /// Sets the link's attribute: `crossorigin`.
    ///
    /// - Parameters:
    ///   - type: Specifies handling with cross-origin requests.
    func crossorigin(_ type: CrossOriginType) -> Link {
        var copy = self
        copy.attributes["crossorigin"] = type.rawValue
        return copy
    }

    /// Sets the link's attribute: `hreflang`.
    ///
    /// - Parameters:
    ///   - code: The language code of the linked document.
    ///   - country: The country code of the linked document.
    func hrefLanguage(_ code: LanguageCode, country: CountryCode? = nil) -> Link {
        var copy = self

        if let country = country {
            copy.attributes["hreflang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["hreflang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Sets the link's attribute: `integrity`.
    ///
    /// - Parameters:
    ///   - integrity: The file hashing value of the external file.
    func integrity(_ integrity: String) -> Link {
        var copy = self
        copy.attributes["integrity"] = integrity
        return copy
    }

    /// Sets the link's attribute: `media`.
    ///
    /// - Parameters:
    ///   - query: The device on which the linked document will be displayed.
    func media(_ query: String) -> Link {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Sets the link's attribute: `referrerpolicy`.
    ///
    /// - Parameters:
    ///   - policy: The referrer to use when fetching the resource.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Link {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the link's attribute: `type`.
    ///
    /// - Parameters:
    ///   - type: The media type of the linked document.
    func type(_ type: String) -> Link {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}

extension Link: HTMLConvertible {
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
