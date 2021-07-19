//
//  Anchor.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Anchor: Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension Anchor: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<a>\(innerHTML)</a>"
        } else {
            return "<a \(attributesString)>\(innerHTML)</a>"
        }
    }
}

public extension Anchor {
    func download(_ file: String) -> Anchor {
        var copy = self
        copy.attributes["download"] = file
        return copy
    }

    func call(_ number: String) -> Anchor {
        var copy = self
        copy.attributes["href"] = "tel:+\(number)"
        return copy
    }

    func href(_ href: String) -> Anchor {
        var copy = self
        copy.attributes["href"] = href
        return copy
    }

    func hrefLanguage(_ language: String) -> Anchor {
        var copy = self
        copy.attributes["hreflang"] = language
        return copy
    }

    func mailTo(_ email: String) -> Anchor {
        var copy = self
        copy.attributes["href"] = "mailto:\(email)"
        return copy
    }

    func media(_ query: String) -> Anchor {
        var copy = self
        copy.attributes["media"] = query
        return copy
    }

    func ping(_ list: String...) -> Anchor {
        var copy = self
        copy.attributes["ping"] = list.map { $0 }.joined(separator: " ")
        return copy
    }

    func referrerPolicy(_ policy: ReferrerPolicy) -> Anchor {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    func relationship(_ relationship: Relationship.Anchor) -> Anchor {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    func target(_ target: Target = .`self`) -> Anchor {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }

    func type(_ type: String) -> Anchor {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}
