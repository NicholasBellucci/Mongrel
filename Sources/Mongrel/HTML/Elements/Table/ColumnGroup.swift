//
//  ColumnGroup.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct ColumnGroup: Attributable, EventListener {
    public var tag: String = "colgroup"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var span: Int? = nil
    var innerHTML: String

    public init(_ span: Int? = nil, @HTMLBuilder _ content: () -> HTML) {
        if let span = span {
            attributes["span"] = "\(span)"
        }

        innerHTML = content().stringValue
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
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}
