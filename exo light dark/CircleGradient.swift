//
//  CircleGradient.swift
//  exo light dark
//
//  Created by Labigna Traoré on 05/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct CircleGradient: View {
    var body: some View {
        HStack{
            Circle()
                .fill(RadialGradient(gradient: Gradient(colors: [.orange, .white, .orange, .white]), center: .center, startRadius: 0, endRadius: 100))
         Circle()
            .stroke(
                AngularGradient(gradient:Gradient(colors: [.blue, .red, .yellow, .orange, .green, .blue]), center: .center, angle: .zero),lineWidth: 30)
        }
        .padding()
    }
}

struct CircleGradient_Previews: PreviewProvider {
    static var previews: some View {
        CircleGradient()
    }
}
