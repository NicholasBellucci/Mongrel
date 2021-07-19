//
//  Meter.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public extension Meter {
    func formId(_ id: String) -> Meter {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func high(_ high: Double) -> Meter {
        var copy = self
        copy.attributes["high"] = "\(high)"
        return copy
    }

    func low(_ low: Double) -> Meter {
        var copy = self
        copy.attributes["low"] = "\(low)"
        return copy
    }

    func max(_ max: Double) -> Meter {
        var copy = self
        copy.attributes["max"] = "\(max)"
        return copy
    }

    func min(_ min: Double) -> Meter {
        var copy = self
        copy.attributes["min"] = "\(min)"
        return copy
    }

    func optimum(_ optimum: Double) -> Meter {
        var copy = self
        copy.attributes["optimum"] = "\(optimum)"
        return copy
    }
}
