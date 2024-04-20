//
//  FactorizationView.swift
//  prime
//

import SwiftUI

func primeFactors(of number: Int) -> [Int]{
    var remainder = number
    var divisor = 2
    var result: [Int] = []
    
    while remainder > 1 {
        while remainder % divisor == 0 {
            remainder /= divisor
            result.append(divisor)
        }
        divisor = divisor == 2 ? 3 : divisor + 2
    }
    
    return result
    
}

struct FactorizationView: View {
    @State var input = 10
    var body: some View {
        VStack {
            Label("Primfaktorzerlegung", systemImage: "x.squareroot")
                .font(.largeTitle)
            Spacer()
            TextField("", value: $input, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            Text(input == 1 ? "1 hat keine Primfaktoren." : "Die Primfaktoren von \(input) sind: \(numberList(primeFactors(of: input)))")
            Spacer()
        }
    }
}

#Preview {
    FactorizationView()
}
