//
//  Meter.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Meter: Attributable, EventListener {
    public var tag: String = "meter"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var innerHTML: String = ""

    public init(value: Double) {
        attributes["value"] = "\(value)"
    }

    public init(value: Double, @HTMLBuilder _ content: () -> HTML) {
        attributes["value"] = "\(value)"
        innerHTML = content().stringValue
    }
}

extension Meter: HTML {
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

public extension Meter {
    func formId(_ id: String) -> Meter {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func high(_ high: Double) -> Meter {
        var copy = self
        copy.attributes["high"] = "\(high)"
        return copy
    }

    func low(_ low: Double) -> Meter {
        var copy = self
        copy.attributes["low"] = "\(low)"
        return copy
    }

    func max(_ max: Double) -> Meter {
        var copy = self
        copy.attributes["max"] = "\(max)"
        return copy
    }

    func min(_ min: Double) -> Meter {
        var copy = self
        copy.attributes["min"] = "\(min)"
        return copy
    }

    func optimum(_ optimum: Double) -> Meter {
        var copy = self
        copy.attributes["optimum"] = "\(optimum)"
        return copy
    }
}
