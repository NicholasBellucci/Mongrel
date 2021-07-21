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
