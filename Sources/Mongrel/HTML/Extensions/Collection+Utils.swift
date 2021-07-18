//
//  Collection+Utils.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }

    func element(after index: Int) -> Iterator.Element? {
        return self[safe: index + 1]
    }

    func element(before index: Int) -> Iterator.Element? {
        return self[safe: index - 1]
    }
}
