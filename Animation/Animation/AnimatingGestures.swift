//
//  AnimatingGestures.swift
//  Animation
//
//  Created by Brandon Johns on 7/12/23.
//

import SwiftUI

struct AnimatingGestures: View {
    @State private  var dragAmount = CGSize.zero
    
    let letters = Array("Hello, SwiftUI")
    @State private var enabled = false
    
    
    var body: some View {
        
        HStack(spacing: 0) {
            ForEach(0..<letters.count) {num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue: .green)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged{dragAmount = $0.translation}
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                    
                }
        )
        
        //            LinearGradient(gradient: Gradient(colors: [.gray, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
        //                .frame(width: 300, height: 200)
        //                .clipShape(RoundedRectangle(cornerRadius: 10))
        //                .offset(dragAmount)
        //                .gesture(
        //                DragGesture()
        //                    .onChanged { dragAmount = $0.translation}
        //                    .onEnded { _ in withAnimation // explict animation
        //                        {
        //                        dragAmount = .zero
        //                    }
        //
        //                    }
        //
        //                )
        //                .animation(.spring(), value: dragAmount)  //implict animation
    }
}

struct AnimatingGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures()
    }
}


