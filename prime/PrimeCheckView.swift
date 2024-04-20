//
//  PrimeCheckView.swift
//  prime
//

import SwiftUI

struct PrimeCheckView: View {
    @State var input = 2
    var body: some View {
        VStack{
            Label("Check", systemImage: "checkmark.circle")
                .font(.largeTitle)
            Spacer()
            TextField("", value: $input, formatter: NumberFormatter())
                .padding()
                .background(.tertiary)
                .cornerRadius(5.0)
            if input.isPrime() {
                Text("\(input) is a prime number.")
            } else {
                Text("\(input) is not a prime number.")
            }
            Spacer()
        }
    }
}

#Preview {
    PrimeCheckView()
}
