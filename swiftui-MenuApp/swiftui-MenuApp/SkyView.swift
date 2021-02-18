//
//  SkyView.swift
//  swiftui-MenuApp
//
//  Created by Grids Jivapong on 17/2/2564 BE.
//

import SwiftUI

struct SkyView: View {
    @AppStorage("isNight") var isNight = false
    
    var body: some View {
        
        VStack {
            
            if isNight {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            } else {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        Stars()
                        Stars()
                            .rotationEffect(.degrees(90))
                            .offset(x: 120)
                        Spacer()
                    }
                    Stars()
                        .rotationEffect(.degrees(-90))
                        .offset(x: -120, y: -200)
                }
            }
            
        }
        .frame(width: UIScreen.main.bounds.width)
        .overlay(Button(action: { isNight.toggle() }, label: {
            Image(systemName: isNight ? "moon.fill" : "sun.max.fill")
                .font(.title)
                .foregroundColor(.white)
                .padding(.trailing, 32)
        }), alignment: .topTrailing)
        
    }
}

struct SkyView_Previews: PreviewProvider {
    static var previews: some View {
        SkyView()
    }
}

struct Stars: View {
    let offsets = [12, 72, -18, 42, 120, 0, 8, -55, 100]
    
    var body: some View {
        HStack {
            ForEach(offsets, id: \.self) { cloudOffset in
                Image(systemName: "star.fill")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(18)
                    .offset(y: CGFloat(cloudOffset))
            }
        }
    }
}
