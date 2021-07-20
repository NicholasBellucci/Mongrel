/// A ``Canvas`` element is used to draw graphics, on the fly, via scripting.
///
/// Any text inside the ``Canvas`` element will be displayed in browsers
/// with ``JavaScript`` disabled and/or browsers that don't support ``<canvas>``.
public struct Canvas: Attributable, EventListener {
    public var tag: String = "canvas"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    /// Creates a canvas element with a height and width.
    ///
    /// - Parameters:
    ///   - height: The height of the canvas.
    ///   - width: The width of the canvas.
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<canvas></canvas>` tags.
    public init(height: Int = 150, width: Int = 150, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["height"] = "\(height)"
        attributes["width"] = "\(width)"
        innerHTML = content().stringValue
    }
}

extension Canvas: HTMLConvertible {
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
