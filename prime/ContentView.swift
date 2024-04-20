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
                    Text("Prüfen")
                    })
                .navigationTitle("Prüfen")
            PrimeListView()
                .tabItem({
                    Image(systemName: "function")
                    Text("Ausrechnen")
                })
                .navigationTitle("Ausrechnen")
            FactorizationView()
                .tabItem({
                    Image(systemName: "x.squareroot")
                    Text("Primfaktorzerlegung")
                })
                .navigationTitle("Primfaktorzerlegung")
        }
    }
}

#Preview {
    ContentView()
}
