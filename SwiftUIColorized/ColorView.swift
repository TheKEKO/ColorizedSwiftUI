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
            .frame(height: 130)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color .white, lineWidth: 4)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
