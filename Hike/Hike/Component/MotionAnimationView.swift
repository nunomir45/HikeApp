//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Nuno Miranda on 26/12/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle: Int.random(in: 6...12)
    
    var body: some View {
        ZStack{
            
            Circle()
                .foregroundColor(.white)
                
        }.frame(width: 256, height: 256)
    }
}

#Preview {
    ZStack{
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
    
}
