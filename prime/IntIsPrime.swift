//
//  IntIsPrime.swift
//  prime
//
//  Created by Linus Warnatz on 20.04.24.
//

import Foundation

extension Int {
    func isPrime() -> Bool {
        if self < 2{
            return false
        }
        if self == 2 {
            return true
        }
        
        if self % 2 == 0 {
            return false
        }
        
        let lastDivisor = Int(ceil(sqrt(Double(self))))
        
        for d in stride(from: 3, to: lastDivisor+1, by: 2) {
            if self % d == 0 {
                return false
            }
        }
        
        return true
    }
}
