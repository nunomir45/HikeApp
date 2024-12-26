//
//  CustomButtonView.swift
//  Hike
//
//  Created by Nuno Miranda on 26/12/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.white, .colorGreenLight, .colorGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom))
                
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                        .colorGrayLight,
                        .colorGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.colorGrayLight, .colorGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
