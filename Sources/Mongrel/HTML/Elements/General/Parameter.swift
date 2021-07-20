/// The ``Parameter`` element is used to define parameters for
/// an ``Object`` element.
///
/// For more information about the ``<param>`` tag,
/// visit https://www.w3schools.com/tags/tag_param.asp
public struct Parameter: Attributable, EventListener {
    public var tag: String = "param"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a parameter element with a name and value.
    ///
    /// - Parameters:
    ///   - name: The name of the parameter.
    ///   - value: The value of the parameter.
    public init(name: String, value: String) {
        attributes["name"] = name
        attributes["value"] = value
    }
}

extension Parameter: HTMLConvertible {
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
