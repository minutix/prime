//
//  NumberList.swift
//  prime
//
//  Created by Linus Warnatz on 20.04.24.
//

import Foundation

extension Array<Int> {
    func stringify() -> String {
        return self.map({num in String(num)}).joined(separator: ", ")
    }
}
