//
//  CardView.swift
//  Hike
//
//  Created by Nuno Miranda on 26/12/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorSalmonLight")],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
