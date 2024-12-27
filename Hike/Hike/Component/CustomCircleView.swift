//
//  CustomCircleView.swift
//  Hike
//
//  Created by Nuno Miranda on 26/12/2024.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimatedGradient: Bool = false
    
    var body: some View {
        
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        .colorIndigoMedium,
                        .colorSalmonLight],
                    startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing)
            )
            .onAppear{
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                    isAnimatedGradient.toggle()
                }
            }
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
