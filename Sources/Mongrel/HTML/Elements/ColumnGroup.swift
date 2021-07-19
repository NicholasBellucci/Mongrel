//
//  ColumnGroup.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct ColumnGroup: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var span: Int? = nil
    var innerHTML: String

    public init(_ span: Int? = nil, @HTMLBuilder _ content: () -> HTML) {
        if let span = span {
            attributes["span"] = "\(span)"
        }

        innerHTML = content().render()
    }
}

extension ColumnGroup: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributes.isEmpty {
            return "<colgroup>\(innerHTML)</colgroup>"
        } else {
            return "<colgroup \(attributesString)>\(innerHTML)</colgroup>"
        }
    }
}
