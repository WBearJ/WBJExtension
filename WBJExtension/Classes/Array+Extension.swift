//
//  Array+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//

import Foundation

extension Array where Element: Equatable {
    mutating func remove(_ object: Element) {
        if let index = firstIndex(of: object) {
            remove(at: index)
        }
    }
}
