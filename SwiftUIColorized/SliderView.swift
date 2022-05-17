//
//  SliderView.swift
//  SwiftUIColorized
//
//  Created by Aleksandr F. on 17.05.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    let textColor: Color
    
    var body: some View {
        HStack(spacing: 20){
            Text("\(lround(sliderValue))")
                .foregroundColor(.white)
                .frame(width: 32, height: 32)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(textColor)
            
            TextField("", value: $sliderValue, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 50, height: 32)
                .foregroundColor(.black)
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(155), textColor: .red)
    }
}

