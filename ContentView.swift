//
//  ContentView.swift
//  GradientColorDemo
//
//  Created by Iapp on 04/07/23.
//

import SwiftUI

struct GradientAnimationView: View {
    
    @State private var animatingProgress: CGFloat = 0

    var body: some View {
        
        Rectangle()
            .animatableGradient(fromGradient:GradientColors.initialGradient, toGradient: GradientColors.finalGradient, progress: animatingProgress)
            .ignoresSafeArea(.all)
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                    self.animatingProgress = 1.0
                }
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GradientAnimationView()
    }
}


