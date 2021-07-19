//
//  List.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct List: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var type: GenericListType
    var innerHTML: String

    public init(_ type: GenericListType, @HTMLBuilder _ content: () -> HTMLRepresentable) {
        self.type = type
        innerHTML = content().render()
    }
}

extension List: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        let tag = type.rawValue

        if attributes.isEmpty {
            return "<\(tag)>\(innerHTML)</\(tag)>"
        } else {
            return "<\(tag) \(attributesString)>\(innerHTML)</\(tag)>"
        }
    }
}
