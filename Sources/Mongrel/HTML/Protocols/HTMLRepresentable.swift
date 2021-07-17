//
//  HTMLRepresentable.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public protocol HTMLRepresentable: CustomStringConvertible, CustomDebugStringConvertible {
    func renderHTML() -> String
}

extension Node: HTMLRepresentable {
    public func renderHTML() -> String {
        String(describing: self)
    }

    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }
}

extension String: HTMLRepresentable {
    public func renderHTML() -> String {
        String(describing: self)
    }
}

extension Array: HTMLRepresentable where Element == HTMLRepresentable {
    public func renderHTML() -> String {
        return self
            .enumerated()
            .map { index, element in
                if let value = element as? String {
                    return self.element(before: index) is String ?
                        " \(value.escaped)" :
                        value.escaped
                }

                return String(describing: element)
            }
            .joined()
    }
}
