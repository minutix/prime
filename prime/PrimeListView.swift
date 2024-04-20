//
//  PrimeListView.swift
//  prime

import SwiftUI

func primes(in range: ClosedRange<Int>) -> Array<Int> {
    var returnValue: [Int] = []
    for num in range {
        if num.isPrime() == true {
            returnValue.append(num)
        }
    }
    return returnValue
}

struct PrimeListView: View {
    @State var from = 1
    @State var to = 10
    var body: some View {
        VStack {
            Label("Calculate", systemImage: "function")
                .font(.largeTitle)
            Spacer()
            TextField("From", value: $from, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            TextField("To", value: $to, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            Text("Primes between \(from) and \(to) are: \(primes(in: from...to).stringify())")
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
