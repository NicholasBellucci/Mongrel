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
