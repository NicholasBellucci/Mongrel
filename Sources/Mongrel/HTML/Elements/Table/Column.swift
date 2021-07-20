//
//  Column.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Column: Attributable, EventListener {
    public var tag: String = "col"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    public init(span: Int? = nil) {
        if let span = span {
            attributes["span"] = "\(span)"
        }
    }
}

extension Column: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
