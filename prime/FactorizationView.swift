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
            Label("Prime factorization", systemImage: "x.squareroot")
                .font(.largeTitle)
            Spacer()
            TextField("", value: $input, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            if [0, 1].contains(input) {
                Text("\(input) does not have any factors.")
            } else if input >= 1_000_000 {
                Text("This number is too large.")
            } else {
                Text("The prime factors of \(input) are: \(primeFactors(of: input).stringify())")
            }
            Spacer()
        }
    }
}

#Preview {
    FactorizationView()
}
