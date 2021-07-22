import Foundation

/// The ``Video`` element is used to embed video content in
/// a document, such as a movie clip or other video streams.
///
/// The content added to this element will be displayed in browsers
/// in which it is not supported.
///
/// For more information about the ``<video>`` tag,
/// visit https://www.w3schools.com/tags/tag_video.asp
public struct Video: Attributable {
    public var tag: String = "video"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an video element with an optional source and inner content.
    ///
    /// - Parameters:
    ///   - src: The URL of the video file.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(src: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["src"] = src
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Video`` element
/// and will return an ``Video`` element for continued use/updates.
public extension Video {
    /// Adds a condition that controls whether the element
    /// will start playing as soon as it is ready.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autoplay``
    ///   attribute should be added.
    func allowsAutoplay(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["autoplay"] = ""
        }

        return copy
    }

    /// Positions this element in a frame with a specified size.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    ///   - height: The height of the element, in pixels.
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Video {
        var copy = self

        if let width = width {
            copy.attributes["width"] = "\(width)"
        }

        if let height = height {
            copy.attributes["height"] = "\(height)"
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// should display video controls.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``controls``
    ///   attribute should be added.
    func hasControls(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["controls"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will start over again every time it is finished.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``loop``
    ///   attribute should be added.
    func loop(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["loop"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be muted.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``muted``
    ///   attribute should be added.
    func muted(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    /// Specifies an image to be shown while the video is downloading
    /// or until the user hits the play button
    ///
    /// - Parameters:
    ///   - value: The URL to be used as the video's poster URL.
    func poster(_ url: String) -> Video {
        var copy = self
        copy.attributes["poster"] = url
        return copy
    }

    /// Specifies if and how the author thinks the video should be loaded
    /// when the page loads.
    ///
    /// - Parameters:
    ///   - type: The type to use as the video's preload type.
    func preload(_ type: PreloadType) -> Video {
        var copy = self
        copy.attributes["preload"] = type.rawValue
        return copy
    }
}

public extension Video {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Video {
        guard let copy: Self = self.accessKey(key) else { return self }
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> Video {
        guard let copy: Self = self.allowsSpellcheck(value) else { return self }
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Video {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Video {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Video {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Video {
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
    func id(_ id: String) -> Video {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Video {
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
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Video {
        guard let copy: Self = self.setMargins(edges, length: length) else { return self }
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Video {
        guard let copy: Self = self.setPadding(edges, length: length) else { return self }
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Video {
        guard let copy: Self = self.setStyles(styles: styles) else { return self }
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Video {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Video {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Video {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Video: HTMLConvertible {
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
