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
            
            CustomBackgroundView()
            
            VStack {
                
                // MARK: - 🌟 HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .colorGrayLight,
                                        .colorGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                        
                        Spacer()
                        
                        Button{
                            //Action: show a sheet
                            print("The button was pressed!")
                            
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .italic()
                        .foregroundColor(.colorGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MAIN CONTENT
                
                ZStack {
                    
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .colorIndigoMedium,
                                    .colorSalmonLight],
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
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
