/// The ``Audio`` element is used to embed sound content in
/// in a document. This content can be sources like music and/or
/// other audio streams.
///
/// The content added to the element will be displayed in browsers
/// in which it is not supported.
///
/// For more information about the ``<audio>`` tag,
/// visit https://www.w3schools.com/tags/tag_audio.asp
public struct Audio: Attributable, EventListener {
    public var tag: String = "audio"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an audio element.
    ///
    /// - Parameters:
    ///   - src: The URL of the audio file.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(src: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Audio {
    /// Sets the audio's attribute: ``autoplay``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``autoplay`` should be added
    ///   based on another boolean.
    func allowsAutoplay(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["autoplay"] = ""
        }

        return copy
    }

    /// Sets the audio's attribute: ``controls``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``controls`` should be added
    ///   based on another boolean.
    func allowsControls(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["controls"] = ""
        }

        return copy
    }

    /// Sets the audio's attribute: ``loop``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``loop`` should be added
    ///   based on another boolean.
    func allowsLoop(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["loop"] = ""
        }

        return copy
    }

    /// Sets the audio's attribute: ``muted``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``muted`` should be added
    ///   based on another boolean.
    func muted(if value: Bool = true) -> Audio {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    /// Sets the audio's attribute: ``preload``.
    ///
    /// - Parameters:
    ///   - type: The type that author thinks that audio should be loaded.
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
