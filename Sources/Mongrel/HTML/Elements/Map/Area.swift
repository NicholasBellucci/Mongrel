/// An ``Anchor`` element defines an area inside an image map.
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
    /// Sets the area's attribute: ``download``.
    ///
    /// - Parameters:
    ///   - file: The filename of the downloadable content.
    func download(_ file: String) -> Area {
        var copy = self
        copy.attributes["download"] = file
        return copy
    }

    /// Sets the area's attributes: ``href`` and ``alt``.
    ///
    /// - Parameters:
    ///   - href: The hyperlink target for the area.
    ///   - alt: The alternate text for the area.
    func href(_ href: String, alt: String) -> Area {
        var copy = self
        copy.attributes["href"] = href
        copy.attributes["alt"] = alt
        return copy
    }

    /// Sets the area's attribute: ``media``.
    ///
    /// - Parameters:
    ///   - query: The media/device the linked document if optimized for.
    func media(_ query: String) -> Area {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    /// Sets the area's attribute: ``referrerpolicy``.
    ///
    /// - Parameters:
    ///   - policy: The referrer information to send with the link.
    func referrerPolicy(_ policy: ReferrerPolicy) -> Area {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    /// Sets the area's attribute: ``rel``.
    ///
    /// - Parameters:
    ///   - relationship: The relationship between the current document
    ///   and the linked document.
    func relationship(_ relationship: Relationship.Area) -> Area {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Sets the area's attribute: ``target``.
    ///
    /// - Parameters:
    ///   - target: The target to open the linked document.
    func target(_ target: Target = .`self`) -> Area {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    /// Sets the area's attribute: ``type``.
    ///
    /// - Parameters:
    ///   - type: The media type of the linked document.
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
