//
//  ContentView.swift
//  Memorize
//
//  Created by Patrick Frei on 13.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            
            
        }
        
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}
struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(lineWidth: 3)
            Text("✈️")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
