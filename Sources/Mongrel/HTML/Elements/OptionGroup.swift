//
//  OptionGroup.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct OptionGroup: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTML) {
        innerHTML = content().render()
    }
}

extension OptionGroup: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<optgroup>\(innerHTML)</optgroup>"
        } else {
            return "<optgroup \(attributesString)>\(innerHTML)</optgroup>"
        }
    }
}
