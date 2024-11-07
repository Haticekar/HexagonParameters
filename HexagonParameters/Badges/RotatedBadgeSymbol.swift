//
//  RotatedBadgeSymbol.swift
//  HexagonParameters
//
//  Created by Hatice Kar on 7.11.2024.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle : Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}

/*
 Angle
 A geometric angle whose value you access in either radians or degrees.
 */
