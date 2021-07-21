/// The ``Source`` element is used to specify multiple media
/// resources for media elements such as ``Video``, ``Audio``, and ``Picture``.
///
/// For more information about the ``<source>`` tag,
/// visit https://www.w3schools.com/tags/tag_source.asp
public struct Source: Attributable, EventListener {
    public var tag: String = "source"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a source element with a source URL and type.
    ///
    /// - Parameters:
    ///   - url: The URL of the media file.
    ///   - type: The MIME-type of the resource.
    public init(url: String, type: String) {
        attributes["src"] = url
        attributes["type"] = type
    }
}

/// These extensions are modifiers for an ``Source`` element
/// and will return an ``Source`` element for continued use/updates.
public extension Source {
    /// Accepts any valid media query that would normally be defined in a CSS.
    ///
    /// - Parameters:
    ///   - query: The query to be used as the script's media query.
    func media(_ query: String) -> Source {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Specifies image sizes for different page layouts.
    ///
    /// - Parameters:
    ///   - sizes: The sizes to be used as the image sizes.
    func sizes(_ sizes: String) -> Source {
        var copy = self
        copy.attributes["sizes"] = sizes
        return copy
    }

    /// Sets the URL of the image to use in different situations.
    /// Required when element is used in a ``Picture`` element.
    ///
    /// - Parameters:
    ///   - srcset: The source set to be used as the source's source set.
    func srcset(_ srcset: String) -> Source {
        var copy = self
        copy.attributes["srcset"] = srcset
        return copy
    }
}

extension Source: HTMLConvertible {
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
