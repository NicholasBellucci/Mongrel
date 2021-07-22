import Foundation

/// An ``Meter`` element defines a scalar measurement
/// within a known range, or a fractional value.
///
/// Examples:
/// - Disk usage
/// - The relevance of a query result
///
/// This element should not be used to indicate progress.
/// For progress bars, use the ``Progress`` element.
///
/// For more information about the ``<meter>`` tag,
/// visit https://www.w3schools.com/tags/tag_meter.asp
public struct Meter: Attributable {
    public var tag: String = "meter"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates a basic meter with a current value.
    ///
    /// - Parameters:
    ///   - value: The current value of the meter.
    public init(value: Double) {
        attributes["value"] = "\(value)"
    }

    /// Creates a meter with a current value and inner content.
    ///
    /// - Parameters:
    ///   - value: The current value of the meter.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(value: Double, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["value"] = "\(value)"
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Meter`` element
/// and will return an ``Meter`` element for continued use/updates.
public extension Meter {
    /// Specifies which form the meter belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> Meter {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Specifies the range that is considered to be a high value.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the meter's high value.
    func high(_ value: Double) -> Meter {
        var copy = self
        copy.attributes["high"] = "\(value)"
        return copy
    }

    /// Specifies the range that is considered to be a low value.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the meter's low value.
    func low(_ value: Double) -> Meter {
        var copy = self
        copy.attributes["low"] = "\(value)"
        return copy
    }

    /// Specifies the maximum value of the range.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the meter's max value.
    func max(_ value: Double) -> Meter {
        var copy = self
        copy.attributes["max"] = "\(value)"
        return copy
    }

    /// Specifies the minimum value of the range. Default value
    /// is zero.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the meter's min value.
    func min(_ value: Double) -> Meter {
        var copy = self
        copy.attributes["min"] = "\(value)"
        return copy
    }

    /// Specifies what value is the optimal value for the gauge.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the meter's optimum value.
    func optimum(_ value: Double) -> Meter {
        var copy = self
        copy.attributes["optimum"] = "\(value)"
        return copy
    }
}

public extension Meter {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Meter {
        var copy = self
        copy.attributes["accesskey"] = key
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> Meter {
        var copy = self
        copy.attributes["spellcheck"] = "\(value)"
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Meter {
        var copy = self
        copy.attributes["class"] = name
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Meter {
        var copy = self
        copy.attributes["contenteditable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Meter {
        var copy = self
        copy.attributes["draggable"] = "\(value)"
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Meter {
        var copy = self

        if value {
            copy.attributes["hidden"] = ""
        }

        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> Meter {
        var copy = self
        copy.attributes["id"] = id
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Meter {
        var copy = self

        if let country = country {
            copy.attributes["lang"] = "\(code.rawValue)-\(country.rawValue)"
        } else {
            copy.attributes["lang"] = "\(code.rawValue)"
        }

        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Meter {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Meter {
        var copy = self

        edges.forEach {
            if let length = length, let value: CGFloat = length.associatedValue() {
                copy.styles[$0.rawValue] = "\(value)\(length.label)"
            }
        }

        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Meter {
        var copy = self

        styles
            .sorted()
            .forEach {
                switch $0 {
                case let .custom(key, value):
                    copy.styles[key] = "\(value)"
                default:
                    guard let value: String = $0.associatedValue() else { return }
                    copy.styles[$0.stringValue] = "\(value)"
                }
            }

        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Meter {
        var copy = self
        copy.attributes["tabindex"] = "\(index)"
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Meter {
        var copy = self
        copy.attributes["title"] = title
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Meter {
        var copy = self
        copy.attributes["translate"] = value ? "yes" : "no"
        return copy
    }
}

extension Meter: HTMLConvertible {
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
