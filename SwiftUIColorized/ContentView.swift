//
//  ContentView.swift
//  SwiftUIColorized
//
//  Created by Aleksandr F. on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Slider(value: .constant(0.5))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
