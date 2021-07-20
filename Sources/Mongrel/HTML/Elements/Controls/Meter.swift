/// An ``Meter`` element defines a scalar measurement
/// within a known range, or a fractional value.
///
/// Examples:
/// - Disk usage
/// - The relevance of a query result
///
/// The ``Meter``element should not be used to indicate progress.
/// For progress bars, use the ``Progress`` element.
public struct Meter: Attributable, EventListener {
    public var tag: String = "meter"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String = ""

    /// Creates a basic meter with a current value.
    ///
    /// - Parameters:
    ///   - value: The current value of the meter.
    public init(value: Double) {
        attributes["value"] = "\(value)"
    }

    /// Creates a meter with a current value.
    ///
    /// - Parameters:
    ///   - value: The current value of the meter.
    ///   - content: The HTML inside of the `<meter></meter>` tags.
    public init(value: Double, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["value"] = "\(value)"
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Input`` element
/// and will return an ``Input`` element for continued use/updates.
public extension Meter {
    /// Sets the meter's attribute: `form`.
    ///
    /// - Parameters:
    ///   - id: Id of the form in which the meter belongs.
    ///
    func formId(_ id: String) -> Meter {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the meter's attribute: `high`.
    ///
    /// - Parameters:
    ///   - high: The range that is considered to be a high value.
    ///
    func high(_ high: Double) -> Meter {
        var copy = self
        copy.attributes["high"] = "\(high)"
        return copy
    }

    /// Sets the meter's attribute: `low`.
    ///
    /// - Parameters:
    ///   - low: The range that is considered to be a low value.
    ///
    func low(_ low: Double) -> Meter {
        var copy = self
        copy.attributes["low"] = "\(low)"
        return copy
    }

    /// Sets the meter's attribute: `max`.
    ///
    /// - Parameters:
    ///   - max: The maximum value of the range.
    ///
    func max(_ max: Double) -> Meter {
        var copy = self
        copy.attributes["max"] = "\(max)"
        return copy
    }

    /// Sets the meter's attribute: `min`.
    ///
    /// - Parameters:
    ///   - min: The minimum value of the range.
    ///
    func min(_ min: Double) -> Meter {
        var copy = self
        copy.attributes["min"] = "\(min)"
        return copy
    }

    /// Sets the meter's attribute: `optimum`.
    ///
    /// - Parameters:
    ///   - optimum: The optimal value for the meter.
    ///
    func optimum(_ optimum: Double) -> Meter {
        var copy = self
        copy.attributes["optimum"] = "\(optimum)"
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
