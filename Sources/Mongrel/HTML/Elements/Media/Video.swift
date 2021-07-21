import Foundation

public struct Video: Attributable, EventListener {
    public var tag: String = "video"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Video {
    func autoplay(_ value: Bool) -> Video {
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

    func hasControls(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["controls"] = ""
        }

        return copy
    }

    func loop(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["loop"] = ""
        }

        return copy
    }

    func muted(_ value: Bool) -> Video {
        var copy = self

        if value {
            copy.attributes["muted"] = ""
        }

        return copy
    }

    func poster(_ poster: String) -> Video {
        var copy = self
        copy.attributes["poster"] = poster
        return copy
    }

    func preload(_ type: PreloadType) -> Video {
        var copy = self
        copy.attributes["preload"] = type.rawValue
        return copy
    }

    func src(_ src: String) -> Video {
        var copy = self
        copy.attributes["src"] = src
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
