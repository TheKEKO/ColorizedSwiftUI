//
//  ContentView.swift
//  SwiftUIColorized
//
//  Created by Aleksandr F. on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 20
    @State private var green: Double = 60
    @State private var blue: Double = 86
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.17, green: 0.41, blue: 0.74, alpha: 1))
                .ignoresSafeArea()
            VStack {
                ColorView(red: red, green: green, blue: blue)
                
                SliderView(sliderValue: $red, textColor: .red)
                SliderView(sliderValue: $green, textColor: .green)
                SliderView(sliderValue: $blue, textColor: .blue)
                
                Spacer()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
