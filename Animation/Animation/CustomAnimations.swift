//
//  CustomAnimations.swift
//  Animation
//
//  Created by Brandon Johns on 7/12/23.
//


//implicit animation must always watch an amount

import SwiftUI

struct CustomAnimations: View {
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
        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        
    }
}

struct CustomAnimations_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimations()
    }
}
