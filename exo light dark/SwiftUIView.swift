//
//  SwiftUIView.swift
//  exo light dark
//
//  Created by Labigna Traoré on 05/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(.systemTeal), Color(.systemBlue) ]),  startPoint: .leading, endPoint: .trailing
                    ))
                    .frame(width: 200.0, height: 100.0)
                
                Rectangle()
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [Color(.systemTeal), Color(.systemBlue) ]),
                                       
                                       center: .center, startRadius: 0, endRadius: 100)
                )
                    .frame(width: 100.0, height: 100.0)
                
            }
            .padding()
            HStack{
                Capsule().fill(
                    LinearGradient(gradient: Gradient(colors: [Color(.systemTeal), Color(.systemBlue) ]),  startPoint: .top, endPoint: .bottom
                ))
                    .frame(width: 100.0, height: 300.0)
                
                Circle()
                    
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [Color(.systemTeal), Color(.systemBlue) ]),
                                       
                                       center: .center, startRadius: 0, endRadius: 100)
                        
                )
                    .overlay(
                      Circle()
                     .stroke(Color.yellow,lineWidth: 3)
                    )
             
                    
                    .frame(width: 100.0, height: 100.0)
                
            }
            .padding()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
