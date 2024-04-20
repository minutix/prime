//
//  PrimeCheckView.swift
//  prime
//

import SwiftUI

func isPrime(number: Int) -> Bool {
    if number < 2{
        return false
    }
    if number == 2 {
        return true
    }
    
    if number % 2 == 0 {
        return false
    }
    
    let lastDivisor = Int(ceil(sqrt(Double(number))))
    
    for d in stride(from: 3, to: lastDivisor+1, by: 2) {
        if number % d == 0 {
            return false
        }
    }
    
    return true
}

struct PrimeCheckView: View {
    @State var input = 2
    var body: some View {
        VStack{
            Label("Prüfen", systemImage: "checkmark.circle")
                .font(.largeTitle)
            Spacer()
            TextField("", value: $input, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            Text("\(input) ist \(isPrime(number: input) ? "eine" : "keine") Primzahl")
            Spacer()
        }.padding()
    }
}

#Preview {
    PrimeCheckView()
}
