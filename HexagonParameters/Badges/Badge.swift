//
//  Badge.swift
//  HexagonParameters
//
//  Created by Hatice Kar on 7.11.2024.
//

import SwiftUI

struct Badge : View {
    var badgeSymbol : some View{
        
            //RotatedBadgeSymbol(angle: Angle(degrees: 0)).opacity(0.5)
        ForEach(0..<8){
            index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8) * 360.0)
            )
        }.opacity(0.5)
           
       
    }
    var body: some View {
        ZStack{
            BadgeBackground()
            GeometryReader {geometry in
                badgeSymbol
                    .scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
                
            }
        }
        
        .scaledToFit().background(Color(UIColor(red: 0.9, green: 0.88, blue: 0.94, alpha: 1.0))).ignoresSafeArea()
    }
}

#Preview {
    Badge()
}

/*
 
 What is the purpose of GeometryReader?
 =>
 You use GeometryReader to dynamically draw, position, and size views instead of hard-coding numbers that might not be correct when you reuse a view somewhere else in your app, or on a different-sized display.
 GeometryReader dynamically reports size and position information about the parent view and the device, and updates whenever the size changes; for example, when the user rotates their iPhone.
 
 */
