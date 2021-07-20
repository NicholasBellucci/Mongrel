//
//  Time.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Time: Attributable, EventListener {
    public var tag: String = "time"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    public init(format: String? = nil) {
        if let format = format {
            attributes["datetime"] = format
        }
    }
}

extension Time: HTMLConvertible {
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
