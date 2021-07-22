import Foundation

/// An ``Area`` element defines an area inside an image map.
///
/// This element should always be nested in ``Map``.
///
/// For more information about the ``<area>`` tag,
/// visit https://www.w3schools.com/tags/tag_area.asp
public struct Area: Attributable {
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

public extension Area {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Attributable {
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
    func allowsSpellcheck(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Attributable {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Attributable {
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
    func id(_ id: String) -> Attributable {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Attributable {
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
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Area {
        var copy = self
        Margin.set(for: &copy, edges, length: length)
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Area {
        var copy = self
        Padding.set(for: &copy, edges, length: length)
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Attributable {
        var copy = self
        CSSProperty.set(for: &copy, styles: styles)
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Attributable {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Attributable {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
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
