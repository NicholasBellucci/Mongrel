/// A ``Canvas`` element is used to draw graphics, on the fly, via scripting.
///
/// Any text inside this element will be displayed in browsers with
/// ``JavaScript`` disabled and/or browsers that don't support ``<canvas>``.
///
/// For more information about the ``<canvas>`` tag,
/// visit https://www.w3schools.com/tags/tag_canvas.asp
public struct Canvas: Attributable {
    public var tag: String = "canvas"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a canvas element with a height, a width and inner content.
    ///
    /// - Parameters:
    ///   - height: The height of the canvas.
    ///   - width: The width of the canvas.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
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
