/// The ``GenericElement`` element is used for HTML tags that only
/// have attributes that are considered global.
///
/// This element can not be used directly. Instead use an element created in
/// the ``TagList.swift`` file.
public struct GenericElement: Attributable, EventListener {
    public var tag: String
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    init(tag: String) {
        self.tag = tag
    }

    public func callAsFunction(_ class: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) -> GenericElement {
        var copy = self

        if let `class` = `class` {
            copy.attributes["class"] = `class`
        }

        copy.innerHTML = content().stringValue
        return copy
    }
}

extension GenericElement: HTMLConvertible {
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
