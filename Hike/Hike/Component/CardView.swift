//
//  CardView.swift
//  Hike
//
//  Created by Nuno Miranda on 26/12/2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    func randomImage(){
        
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
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
                    
                    CustomCircleView()
                     
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                Button(){
                    // Action
                    randomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.colorGreenLight, .colorGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom))
                        .shadow(
                            color: .black.opacity(0.25) ,
                            radius: 0.25 ,
                            x: 1 , y: 2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
