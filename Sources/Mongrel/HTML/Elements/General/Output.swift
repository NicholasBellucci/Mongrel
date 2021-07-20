/// The ``Output`` element represents the results of a calculation.
///
/// For more information about the ``<output>`` tag,
/// visit https://www.w3schools.com/tags/tag_output.asp
public struct Output: Attributable {
    public var tag: String = "output"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates an output element with a name and relationship ids.
    ///
    /// - Parameters:
    ///   - name: The name of the output.
    ///   - ids: The element ids of the relating elements.
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<output></output>` tags.
    public init(name: String, for ids: [String], @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["name"] = name
        attributes["for"] = ids
            .sorted()
            .map { $0 }.joined(separator: " ")

        innerHTML = content().stringValue
    }
}

public extension Output {
    /// Sets the button's attribute: `form`.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the output belongs.
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
