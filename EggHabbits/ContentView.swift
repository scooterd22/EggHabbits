//
//  ContentView.swift
//  EggHabbits
//
//  Created by Scott DiBenedetto on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 50))
                        .foregroundStyle(.green)
                        .padding()
                }
            
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
