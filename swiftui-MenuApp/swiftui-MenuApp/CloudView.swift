//
//  CloudView.swift
//  swiftui-MenuApp
//
//  Created by Grids Jivapong on 17/2/2564 BE.
//

import SwiftUI

struct CloudView: View {
    
    let offsets = [12, 72, -18, 42]
    
    var body: some View {
        HStack {
            ForEach(offsets, id: \.self) { cloudOffset in
                Image(systemName: "cloud.fill")
                    .font(.system(size: 72))
                    .foregroundColor(.white)
                    .padding(18)
                    .offset(y: CGFloat(cloudOffset))
            }
        }
    }
}

struct CloudView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            SkyView()
            CloudView()
        }
        .previewLayout(.sizeThatFits)
    }
}
