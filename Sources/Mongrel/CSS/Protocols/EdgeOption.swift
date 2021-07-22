public protocol EdgeOption: RawRepresentable, Hashable, CaseIterable {}

extension Set where Element: EdgeOption {
    var rawValue: Int {
        var rawValue = 0

        Element.allCases
            .enumerated()
            .forEach {
                if self.contains($1) {
                    rawValue |= (1 << $0)
                }
            }

        return rawValue
    }
}
