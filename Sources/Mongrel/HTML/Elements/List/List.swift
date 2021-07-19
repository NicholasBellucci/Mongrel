//
//  List.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct List: Attributable, EventListener {
    public var tag: String
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    public init(_ type: GenericListType, @HTMLBuilder _ content: () -> HTML) {
        self.tag = type.rawValue
        innerHTML = content().stringValue
    }
}

extension List: HTML {
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
