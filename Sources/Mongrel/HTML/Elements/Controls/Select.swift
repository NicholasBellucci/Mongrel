//
//  Select.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Select: Attributable, EventListener {
    public var tag: String = "select"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().stringValue
    }
}

extension Select: HTML {
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

public extension Select {
    func autofocus(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    func disabled(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> Select {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func multiple(_ value: Bool) -> Select {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    func name(_ name: String) -> Select {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func required(_ value: Bool) -> Select {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    func size(_ size: Int) -> Select {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }
}
