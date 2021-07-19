//
//  OrderedList.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct OrderedList: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
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
        if attributes.isEmpty {
            return "<ol>\(innerHTML)</ol>"
        } else {
            return "<ol \(attributesString)>\(innerHTML)</ol>"
        }
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
