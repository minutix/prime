//
//  ContentView.swift
//  prime
//
//  Created by Linus Warnatz on 20.04.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            PrimeCheckView()
                .tabItem({
                    Image(systemName: "checkmark.circle")
                    Text("Check")
                    })
                .navigationTitle("Check")
                .padding()
            PrimeListView()
                .tabItem({
                    Image(systemName: "function")
                    Text("Calculate")
                })
                .navigationTitle("Calculate")
                .padding()
            FactorizationView()
                .tabItem({
                    Image(systemName: "x.squareroot")
                    Text("Factors")
                })
                .navigationTitle("Prime factorization")
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
