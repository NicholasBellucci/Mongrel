//
//  OrderedList.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct OrderedList: Attributable, EventListener {
    public var tag: String = "ol"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().stringValue
    }
}

extension OrderedList: HTML {
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

public extension OrderedList {
    func reversed(if value: Bool = true) -> OrderedList {
        var copy = self

        if value {
            copy.attributes["reversed"] = ""
        }

        return copy
    }

    func start(_ number: Int) -> OrderedList {
        var copy = self
        copy.attributes["start"] = "\(number)"
        return copy
    }

    func type(_ type: OrderedListType) -> OrderedList {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }
}
