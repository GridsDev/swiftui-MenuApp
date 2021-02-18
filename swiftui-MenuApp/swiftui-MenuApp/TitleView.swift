//
//  TitleView.swift
//  swiftui-MenuApp
//
//  Created by Grids Jivapong on 17/2/2564 BE.
//

import SwiftUI

struct TitleView: View {
    
    @Binding var isTitleViewShowing: Bool
    
    var body: some View {
        VStack {
            if isTitleViewShowing {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 50, weight: .heavy, design: .rounded))
            }
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(isTitleViewShowing: Binding.constant(true))
    }
}
