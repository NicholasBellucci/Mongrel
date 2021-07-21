/// The ``Root`` element represents the root of an HTML document
/// and is a container for all other HTML elements.
///
/// For more information about the ``<html>`` tag,
/// visit https://www.w3schools.com/tags/tag_html.asp
public struct Root: Attributable, EventListener {
    public var tag: String = "html"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a root element with a language and optional country code.
    ///
    /// - Parameters:
    ///   - language: The language of the document.
    ///   - country: The country code for the document.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(language: LanguageCode = .en, country: CountryCode? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        if let country = country {
            attributes["lang"] = "\(language.rawValue)-\(country.rawValue)"
        } else {
            attributes["lang"] = "\(language.rawValue)"
        }

        innerHTML = content().stringValue
    }
}

extension Root: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        """
        <!-- This document has been autogenerated by Mongrel. -->
        <!DOCTYPE html>
        <\(tag)\(attributesString)>\(innerHTML)</\(tag)>
        """
    }
}
