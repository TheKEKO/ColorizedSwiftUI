//
//  ColorView.swift
//  SwiftUIColorized
//
//  Created by Aleksandr F. on 17.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 280, height: 150)
            .foregroundColor(Color(red: red / 255,
                                   green: green / 255,
                                   blue: blue / 255))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 4)
                    .foregroundColor(.white))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: .constant(10.0), green: .constant(10.0), blue: .constant(10.0))
    }
}
