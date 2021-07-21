/// The ``Output`` element represents the results of a calculation.
///
/// For more information about the ``<output>`` tag,
/// visit https://www.w3schools.com/tags/tag_output.asp
public struct Output: Attributable {
    public var tag: String = "output"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates an output element with a name, relationship ids and inner content.
    ///
    /// - Parameters:
    ///   - name: The name of the output.
    ///   - ids: The element ids of the relating elements.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(name: String, for ids: [String], @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["name"] = name
        attributes["for"] = ids
            .sorted()
            .map { $0 }.joined(separator: " ")

        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Output`` element
/// and will return an ``Output`` element for continued use/updates.
public extension Output {
    /// Specifies which form the output element belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> Output {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }
}

extension Output: HTMLConvertible {
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
