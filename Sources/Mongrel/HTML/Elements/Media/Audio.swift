/// The ``Audio`` element is used to embed sound content in
/// in a document. This content can be sources like music and/or
/// other audio streams.
///
/// The content added to this element will be displayed in browsers
/// in which it is not supported.
///
/// For more information about the ``<audio>`` tag,
/// visit https://www.w3schools.com/tags/tag_audio.asp
public struct Audio: Attributable, EventListener {
    public var tag: String = "audio"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an audio element with an optional source and inner content.
    ///
    /// - Parameters:
    ///   - src: The URL of the audio file.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(src: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["src"] = src
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Audio`` element
/// and will return an ``Audio`` element for continued use/updates.
public extension Audio {
    /// Adds a condition that controls whether the element
    /// will start playing as soon as it is ready.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autoplay``
    ///   attribute should be added.
    func allowsAutoplay(_ value: Bool) -> Audio {
        var copy = self

        if value {
            copy.attributes["autoplay"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// should display audio controls.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``controls``
    ///   attribute should be added.
    func hasControls(_ value: Bool) -> Audio {
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
    func loop(_ value: Bool) -> Audio {
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
    func muted(_ value: Bool) -> Audio {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    /// Specifies if and how the author thinks the audio should be loaded
    /// when the page loads.
    ///
    /// - Parameters:
    ///   - type: The type to use as the audio's preload type.
    func preload(_ type: PreloadType) -> Audio {
        var copy = self
        copy.attributes["preload"] = type.rawValue
        return copy
    }
}

extension Audio: HTMLConvertible {
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
