//
//  bike.swift
//  exo light dark
//
//  Created by Labigna Traoré on 05/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct bike: View {
    let selle = Path { p in
        p.move(to: CGPoint(x: 100, y: 430))
        p.addCurve(to: CGPoint(x: 200, y: 430), control1: CGPoint(x: 200, y: 430), control2: CGPoint(x: 200, y: 430))
        p.addCurve(to: CGPoint(x: 312, y: 300), control1: CGPoint(x: 312, y: 300), control2: CGPoint(x: 312, y: 300))
        p.addCurve(to: CGPoint(x: 170, y: 300), control1: CGPoint(x: 170, y: 300), control2: CGPoint(x: 170, y: 300))
    }

    var body: some View {
        ZStack{
        HStack{
            Circle().stroke(Color.blue, lineWidth: 10).frame(width: 100.0, height: 100.0)
                
           Spacer()
             Circle().stroke(Color.blue, lineWidth: 10).frame(width: 100.0, height: 100.0)
        }
        .frame(width: 300.0)
            Path{
                path in
                path.move(to: CGPoint(x: 100, y: 430))
                path.addLine(to: CGPoint(x: 200, y: 430))
                path.addLine(to: CGPoint(x: 310, y: 300))
                path.addLine(to: CGPoint(x: 170, y: 300))
                path.addLine(to: CGPoint(x: 100, y: 434))
            }
        .stroke(Color.blue, lineWidth: 10)
            
            selle
               
            }
        }
    }


struct bike_Previews: PreviewProvider {
    static var previews: some View {
        bike()
    }
}
