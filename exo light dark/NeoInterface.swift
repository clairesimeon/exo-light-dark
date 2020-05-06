//
//  NeoInterface.swift
//  exo light dark
//
//  Created by Labigna Traoré on 05/05/2020.
//  Copyright © 2020 Labigna Traoré. All rights reserved.
//

import SwiftUI

struct NeoInterface: View {
    var body: some View {
        ZStack{
            Color(UIColor.systemGray6)
        VStack{
            RoundedRectangle(cornerRadius: 11)
                               
                       .fill(Color(UIColor.systemGray6))
                           .frame(width: 323.0, height: 120.0)
                           .shadow(color: Color.black.opacity(0.2), radius: 5, x: 2, y: 2)
                        .shadow(color: Color.white.opacity(0.7), radius: 5, x: -2, y: -2)
                .overlay(
            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(UIColor.systemGray6))
                                                    .frame(width: 320.0, height: 115.0)
                                                    .overlay(
                                                    RoundedRectangle(cornerRadius: 10)
                                                     .stroke(Color.gray, lineWidth: 4)
                                                     .blur(radius: 2)
                                                     .offset(x: 2, y: 2)
                                                
                                                       .mask(RoundedRectangle(cornerRadius: 10)
                                                           .fill(LinearGradient(gradient:  Gradient(colors: [ Color.black, Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing))))
                           .overlay(
                               RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 4)
                                .blur(radius: 2)
                                .offset(x: -2, y: -2)
                           
                                  .mask(RoundedRectangle(cornerRadius: 10)
                                   .fill(LinearGradient(gradient:  Gradient(colors: [ Color.white, Color.clear]), startPoint: .bottomTrailing, endPoint:.topLeading )))))
            .overlay(
                Text("10:00")
                    .font(.system(size: 80)))
            HStack{
                Circle()
                                  .fill(Color(UIColor.systemGray6))
                           .frame(width: 80.0, height: 80.0)
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
                               .frame(width: 70.0, height: 70.0)
                                          .shadow(color: Color.black.opacity(0.2), radius: 10, x: 2, y: 2)
                                       .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5))
                    .overlay(Text("HR")
                        .font(.title))
                .padding()
                
                Circle()
                                                 .fill(Color(UIColor.systemGray6))
                                          .frame(width: 80.0, height: 80.0)
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
                                              .frame(width: 70.0, height: 70.0)
                                                         .shadow(color: Color.black.opacity(0.2), radius: 10, x: 2, y: 2)
                                                      .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5))
                                   .overlay(Text("MIN")
                                       .font(.title))
                .padding()
                
                
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 330.0, height: 70.0)
                .foregroundColor(Color(red: 248 / 255, green: 128 / 255, blue: 125 / 255))
                .overlay(Text("Set alarm").foregroundColor(.white))
        }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NeoInterface_Previews: PreviewProvider {
    static var previews: some View {
        NeoInterface()
    }
}
