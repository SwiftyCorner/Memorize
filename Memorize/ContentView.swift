//
//  ContentView.swift
//  Memorize
//
//  Created by Patrick Frei on 13.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("added voice!")
            .padding()
            .background().colorInvert()
            .shadow(radius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
