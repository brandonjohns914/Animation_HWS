//
//  AnimationStack.swift
//  Animation
//
//  Created by Brandon Johns on 7/12/23.
//

// order matters
//only changes before animation get animated


import SwiftUI

struct AnimationStack: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        
        .frame(width: 200, height: 200)
        .background( enabled ? .blue : .green)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct AnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStack()
    }
}
