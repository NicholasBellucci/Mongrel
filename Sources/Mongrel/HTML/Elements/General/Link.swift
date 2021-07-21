/// The ``Link`` element links external resources.
///
/// For more information about the ``<link>`` tag,
/// visit https://www.w3schools.com/tags/tag_link.asp
public struct Link: Attributable, EventListener {
    public var tag: String = "link"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a link element with an href and a relationship.
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
    /// Specifies how the element handles cross-origin requests.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the link's cross-origin type.
    func crossorigin(_ type: CrossOriginType) -> Link {
        var copy = self
        copy.attributes["crossorigin"] = type.rawValue
        return copy
    }

    /// Sets the language of the text in the linked document.
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func hrefLanguage(_ code: LanguageCode, country: CountryCode? = nil) -> Link {
        var copy = self

        if let country = country {
            copy.attributes["hreflang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["hreflang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Allows a browser to check the fetched link to ensure that the file
    /// is never loaded if the source has been manipulated.
    ///
    /// - Parameters:
    ///   - integrity: The hash to be used as the link's integrity.
    func integrity(_ integrity: String) -> Link {
        var copy = self
        copy.attributes["integrity"] = integrity
        return copy
    }

    /// Specifies what device the linked document will be displayed.
    ///
    /// - Parameters:
    ///   - query: The query to use as the link's media/device query.
    func media(_ query: String) -> Link {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Specifies which referrer to use when fetching the resource.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the link's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Link {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the media type of the linked document.
    ///
    /// - Parameters:
    ///   - type: The type to use as the link's media type.
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
