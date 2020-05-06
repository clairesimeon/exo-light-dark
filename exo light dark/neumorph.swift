//
//  neumorph.swift
//  exo light dark
//
//  Created by Labigna Traoré on 05/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct neumorph: View {
    var body: some View {
        ZStack{
        Color(UIColor.systemGray6)
            VStack{
               RoundedRectangle(cornerRadius: 20)
                    
            .fill(Color(UIColor.systemGray6))
                .frame(width: 200.0, height: 200.0)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
             .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                .padding()
                
             RoundedRectangle(cornerRadius: 20)
                                     .fill(Color(UIColor.systemGray6))
                                         .frame(width: 200.0, height: 200.0)
                                         .overlay(
                                         RoundedRectangle(cornerRadius: 20)
                                          .stroke(Color.gray, lineWidth: 4)
                                          .blur(radius: 4)
                                          .offset(x: 2, y: 2)
                                     
                                            .mask(RoundedRectangle(cornerRadius: 20)
                                                .fill(LinearGradient(gradient:  Gradient(colors: [ Color.black, Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing))))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                     .stroke(Color.white, lineWidth: 4)
                     .blur(radius: 4)
                     .offset(x: -2, y: -2)
                
                       .mask(RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient:  Gradient(colors: [ Color.white, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading ))))
                .padding()
                
                
                
                
              
            /*Circle()
                   .fill(Color(UIColor.systemGray6))
            .frame(width: 300.0, height: 300.0)
            .overlay(
                                               Circle()
                                                     .stroke(Color.gray, lineWidth: 34)
                                                     .blur(radius: 24)
                                                     .offset(x: 2, y: 2)
                                                
                                                       .mask(Circle()
                                                           .fill(LinearGradient(gradient:  Gradient(colors: [ Color.black, Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing))))
                .overlay(
                                                              Circle()
                                                                    .stroke(Color.white, lineWidth: 34)
                                                                    .blur(radius: 14)
                                                                    .offset(x: -2, y: -2)
                                                               
                                                                      .mask(Circle()
                                                                          .fill(LinearGradient(gradient:  Gradient(colors: [ Color.black, Color.clear]), startPoint: .bottomTrailing, endPoint: .topLeading))))
                .overlay( Circle()
                       .fill(Color(UIColor.systemGray6))
                .frame(width: 200.0, height: 200.0)
                           .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5))*/
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct neumorph_Previews: PreviewProvider {
    static var previews: some View {
        neumorph()
    }
}
