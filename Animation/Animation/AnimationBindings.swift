//
//  AnimationBindings.swift
//  Animation
//
//  Created by Brandon Johns on 7/12/23.
//

import SwiftUI

struct AnimationBindings: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
        
    }
}

struct AnimationBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBindings()
    }
}
