//
//  GroundView.swift
//  swiftui-MenuApp
//
//  Created by Grids Jivapong on 17/2/2564 BE.
//

import SwiftUI

struct GroundView: View {
    var body: some View {
        Color(#colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1))
            .frame(height: 170)
            .offset(y: 44)
            .overlay(
                ShrubberyView(amount: 8, color: Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)), padding: -16, yOffset: -38, xOffset: 0, blur: 0)
                    .rotationEffect(.degrees(180)), alignment: .top
            )
        
    }
}

struct GroundView_Previews: PreviewProvider {
    static var previews: some View {
        GroundView()
    }
}
    
