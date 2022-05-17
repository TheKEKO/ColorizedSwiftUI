//
//  ColorView.swift
//  SwiftUIColorized
//
//  Created by Aleksandr F. on 17.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
            Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(width: 320, height: 140)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 4)
                    .foregroundColor(.white))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0.0, green: 0.0, blue: 0.0)
    }
}
