//
//  PrimeListView.swift
//  prime

import SwiftUI

func primes(in range: ClosedRange<Int>) -> Array<Int> {
    var returnValue: [Int] = []
    for num in range {
        if isPrime(number: num) == true {
            returnValue.append(num)
        }
    }
    return returnValue
}

func numberList(_ from: [Int]) -> String {
    return from.map({num in String(num)}).joined(separator: ", ")
}

struct PrimeListView: View {
    @State var from = 1
    @State var to = 10
    var body: some View {
        VStack {
            Label("Ausrechnen", systemImage: "function")
                .font(.largeTitle)
            Spacer()
            TextField("Von", value: $from, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            TextField("Bis", value: $to, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            Text("Die Primzahlen von \(from) bis \(to) sind: \(numberList(primes(in: from...to)))")
            Spacer()
        }
    }
    
    struct PrimeListView_Previews: PreviewProvider {
        static var previews: some View {
            PrimeListView()
        }
    }
}

#Preview {
    PrimeListView()
}
