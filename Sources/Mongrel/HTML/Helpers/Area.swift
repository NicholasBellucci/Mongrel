//
//  Area.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Area: HTMLElement {
    public var attributes: [String: String] = [:]

    public init(shape: Shape, coordinates: String) {
        attributes["shape"] = shape.rawValue
        attributes["coords"] = coordinates
    }
}

extension Area: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<area \(attributesString)>"
    }

    private var attributesString: String {
        attributes
            .map { attribute in "\(attribute.key)=\"\(attribute.value)\"" }
            .joined(separator: " ")
    }
}
