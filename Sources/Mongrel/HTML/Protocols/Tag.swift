//
//  Tag.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public protocol Tag {
    var name: String { get }
    var attributes: [(name: String, value: String)] { get set }
}
