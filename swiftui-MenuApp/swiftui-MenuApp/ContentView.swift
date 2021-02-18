//
//  ContentView.swift
//  swiftui-MenuApp
//
//  Created by Grids Jivapong on 17/2/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isTitleViewShowing = false
    
    var body: some View {
        ZStack {
            SkyView()
            
            VStack {
                CloudView()
                Spacer()
                
                ShrubberyView(amount: 8, color: Color(#colorLiteral(red: 0, green: 0.3851106167, blue: 0.02300111949, alpha: 1)), padding: -16, yOffset: 158, xOffset: 20, blur: 3)
                ShrubberyView(amount: 8, color: Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1)), padding: -16, yOffset: 125, xOffset: 0, blur: 0.8)
                ShrubberyView(amount: 6, color: Color(#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1)), padding: 15, yOffset: 60, xOffset: 10, blur: 0)
                GroundView()
            }
            .blur(radius: isTitleViewShowing ? 0 : 12)
            
            TitleView(isTitleViewShowing: $isTitleViewShowing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
