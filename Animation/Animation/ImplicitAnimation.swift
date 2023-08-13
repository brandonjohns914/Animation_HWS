//
//  ImplicitAnimation.swift
//  Animation
//
//  Created by Brandon Johns on 7/12/23.
//

import SwiftUI

struct ImplicitAnimation: View {
    
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap me") {
       animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct ImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimation()
    }
}
