//
//  Meter.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Meter: Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(value: Double, @HTMLBuilder _ content: () -> HTML) {
        attributes["value"] = "\(value)"
        innerHTML = content().render()
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
        "<meter \(attributesString)>\(innerHTML)</meter>"
    }
}
