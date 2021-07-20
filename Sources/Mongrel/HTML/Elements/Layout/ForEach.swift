//
//  ForEach.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct ForEach {
    private var objects: [Element] = []

    public init<T>(_ array: [T], content: @escaping (T) -> Element) {
        array.forEach { objects.append(content($0)) }
    }
}

extension ForEach: HTML {
    public var description: String {
        stringValue
    }

    public var debugDescription: String {
        stringValue
    }

    private var html: String {
        objects
            .enumerated()
            .map { index, element in
                if let text = element as? Text {
                    return objects.element(before: index) is Text ?
                        " \(text)" :
                        String(describing: text)
                }

                return String(describing: element)
            }
            .joined()
    }
}
