//
//  ContentView.swift
//  Memorize
//
//  Created by Patrick Frei on 13.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("pie, world!")
            .padding()
            .background().colorInvert()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
