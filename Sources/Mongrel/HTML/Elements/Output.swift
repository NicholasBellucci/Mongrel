//
//  Output.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Output: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String = ""

    public init() { }

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().stringValue
    }
}

extension Output: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<output>\(innerHTML)</output>"
        } else {
            return "<output \(attributesString)>\(innerHTML)</output>"
        }
    }
}

public extension Output {
    func `for`(_ classes: String...) -> Attributable {
        var copy = self

        copy.attributes["for"] = classes
            .sorted()
            .map { $0 }.joined(separator: " ")

        return copy
    }

    func formId(_ id: String) -> Output {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func name(_ name: String) -> Output {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }
}
