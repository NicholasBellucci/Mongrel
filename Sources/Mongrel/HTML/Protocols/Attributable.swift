import Foundation

public protocol Attributable: Styleable {
    var tag: String { get }
}

/// These extensions are modifiers for an ``Attributable`` element
/// and will return a optional ``T`` element for continued use/updates.
extension Attributable {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey<T: Attributable>(_ key: String) -> T? {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy as? T
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck<T: Attributable>(_ value: Bool) -> T? {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy as? T
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`<T: Attributable>(_ name: String) -> T? {
        var copy = self
        copy.attributes["class"] = name
        return copy as? T
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable<T: Attributable>(_ value: Bool) -> T? {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy as? T
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable<T: Attributable>(_ value: Bool) -> T? {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy as? T
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden<T: Attributable>(_ value: Bool) -> T? {
        var copy = self

        if value {
            copy.attributes["hidden"] = ""
        }

        return copy as? T
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id<T: Attributable>(_ id: String) -> T? {
        var copy = self
        copy.attributes["id"] = id
        return copy as? T
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language<T: Attributable>(_ code: LanguageCode, country: CountryCode? = nil) -> T? {
        var copy = self

        if let country = country {
            copy.attributes["lang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["lang"] = "\(code.rawValue)"
        }

        return copy as? T
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex<T: Attributable>(_ index: Int) -> T? {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy as? T
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title<T: Attributable>(_ title: String) -> T? {
        var copy = self
        copy.attributes["title"] = title
        return copy as? T
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated<T: Attributable>(_ value: Bool) -> T? {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy as? T
    }
}
