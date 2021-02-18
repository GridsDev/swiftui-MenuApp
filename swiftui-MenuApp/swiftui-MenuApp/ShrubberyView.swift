//
//  ShrubberyView.swift
//  swiftui-MenuApp
//
//  Created by Grids Jivapong on 17/2/2564 BE.
//

import SwiftUI

struct ShrubberyView: View {
    
    let amount: Int
    let color: Color
    let padding: CGFloat
    let yOffset: CGFloat
    let xOffset: CGFloat
    let blur: CGFloat
    
    var body: some View {
        HStack {
            ForEach(0 ..< amount) { _ in
                
                Image(systemName: "cloud.fill")
                    .font(.system(size: 72))
                    .foregroundColor(color)
                    .padding(.horizontal, padding)
                    .offset(y: yOffset)
                    .blur(radius: blur)
            }
        }
        .offset(x: xOffset)
    }
}

struct ShrubberyView_Previews: PreviewProvider {
    static var previews: some View {
        ShrubberyView(amount: 8, color: Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)), padding: -16, yOffset: 130, xOffset: 20, blur: 0)
    }
}
