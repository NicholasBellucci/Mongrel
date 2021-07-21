/// An ``Area`` element defines an area inside an image map.
///
/// This element should always be nested in ``Map``.
///
/// For more information about the ``<area>`` tag,
/// visit https://www.w3schools.com/tags/tag_area.asp
public struct Area: Attributable, EventListener {
    public var tag: String = "area"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates an area element with a shape and coordinates.
    ///
    /// - Parameters:
    ///   - shape: The shape of the area.
    ///   - coordinates: The coordinates of the area.
    public init(shape: Shape, coordinates: String) {
        attributes["shape"] = shape.rawValue
        attributes["coords"] = coordinates
    }
}

/// These extensions are modifiers for an ``Area`` element
/// and will return an ``Area`` element for continued use/updates.
public extension Area {
    /// Adds a condition that controls whether the element
    /// can be downloaded.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``download``
    ///   attribute should be added.
    func downloadable(_ value: Bool) -> Area {
        var copy = self

        if value {
            copy.attributes["download"] = ""
        }

        return copy
    }

    /// Specifies the hyperlink target and alternate text for the area.
    ///
    /// - Parameters:
    ///   - href: The href to be used as the area's hyperlink.
    ///   - alt: The alternate text to be used as the area's alternate text.
    func href(_ href: String, alt: String) -> Area {
        var copy = self
        copy.attributes["href"] = href
        copy.attributes["alt"] = alt
        return copy
    }

    /// Specifies what media/device the target URL is optimized.
    ///
    /// - Parameters:
    ///   - query: The query to use as the area's media/device query.
    func media(_ query: String) -> Area {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Specifies which referrer information to send with the link.
    ///
    /// - Parameters:
    ///   - policy: The policy to use as the area's referrer policy.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Area {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Specifies the relationship between the current document and
    /// the target URL.
    ///
    /// - Parameters:
    ///   - relationship: The relationship to use as the area's relationship.
    func relationship(_ relationship: Relationship.Area) -> Area {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Specifies where to open the target URL.
    ///
    /// - Parameters:
    ///   - target: The target to use as the area's target.
    func target(_ target: Target = .`self`) -> Area {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    /// Sets the media type of the target URL.
    ///
    /// - Parameters:
    ///   - type: The type to use as the area's media type.
    func type(_ type: String) -> Area {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}

extension Area: HTMLConvertible {
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
