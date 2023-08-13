//
//  ShowingandHidingViews.swift
//  Animation
//
//  Created by Brandon Johns on 7/12/23.
//

import SwiftUI

struct ShowingandHidingViews: View {
    
    @State private var isShowingBlue = false
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingBlue.toggle()
                }
            }
            if isShowingBlue {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ShowingandHidingViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowingandHidingViews()
    }
}
