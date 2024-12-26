//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Nuno Miranda on 26/12/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
        ZStack {
            
            // MARK: 3 - Depth
            
            Color("ColorGreenDark")
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: 2 - Light
            
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: 1 - Surface
        
        
            LinearGradient(
                colors: [
                    Color("ColorGreenLight"),
                    Color("ColorGreenMedium")],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
