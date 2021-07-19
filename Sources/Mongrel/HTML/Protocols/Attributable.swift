//
//  Attributable.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public protocol Attributable: Element { }

public extension Attributable {
    func accessKey(_ key: String) -> Attributable {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    func `class`(_ class: String) -> Attributable {
        var copy = self
        let currentValue: String? = copy.attributes["class"] ?? nil

        if let currentValue = currentValue {
            copy.attributes["class"] = "\(currentValue) \(`class`)"
        } else {
            copy.attributes["class"] = `class`
        }

        return copy
    }

    func contentEditable(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    func draggable(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    func hidden(_ value: Bool) -> Attributable {
        var copy = self

        if value {
            copy.attributes["hidden"] = ""
        }

        return copy
    }

    func id(_ id: String) -> Attributable {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    func language(_ language: String) -> Attributable {
        var copy = self
        copy.attributes["language"] = language
        return copy
    }

    func spellcheck(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    func style(_ style: String) -> Attributable {
        var copy = self
        let currentValue: String? = copy.attributes["style"] ?? nil

        if let currentValue = currentValue {
            copy.attributes["style"] = "\(currentValue) \(style)"
        } else {
            copy.attributes["style"] = style
        }

        return copy
    }

    func tabIndex(_ index: Int) -> Attributable {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    func title(_ title: String) -> Attributable {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    func translate(_ value: Bool) -> Attributable {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}
