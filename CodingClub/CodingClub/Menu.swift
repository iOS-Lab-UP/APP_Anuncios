//
//  Menu.swift
//  CodingClub
//
//  Created by Sara Miranda on 02/05/23.
//

import SwiftUI

struct Menu: View {
    @State private var isShowingDetail = false
    @State private var username = ""
    var body: some View {
        
        ZStack
        {
            //Image()
            Color(.orange)
                .ignoresSafeArea()
            VStack {
                Spacer()
                ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 390, height: 550)
                            .cornerRadius(45)
                    VStack {
                        HStack {
                            Text("        COMUNIDAD")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                Spacer()
                        }
                        HStack {
                            Text("        UP")
                                .font(.largeTitle)
                            .fontWeight(.bold)
                            Spacer()
                            
                        }
                        Text("")
                        HStack {
                            Text("             Email")
                            
                            Spacer()
                        }
                            
                        VStack {
                            Text(" ")
                            HStack {
                                Spacer()
                                TextField(
                                    "(Email Address)",
                                    text: $username
                                ).padding(20)
                                    .frame(width: 350.0, height: 48.0)
                                    .background(Color("Gris_Clarito"))
                                    .clipShape(Capsule(style: .continuous))
                                
                                Spacer()
                            }
                            Text(" ")
                            Text(" ")
                            Text("Selecciona")
                            
                            HStack
                            {
                                Spacer()
                                TextField(
                                    "Student",
                                    text: $username
                                ).padding(20)
                                    .frame(width: 170.0, height: 48.0)
                                    .background(Color("Gris_Clarito"))
                                    .clipShape(Capsule(style: .continuous))
                                
                                TextField(
                                    "Docente",
                                    text: $username
                                ).padding(20)
                                    .frame(width: 170.0, height: 48.0)
                                    .background(Color("Gris_Clarito"))
                                    .clipShape(Capsule(style: .continuous))
                                Spacer()
                            }
                            
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 100, height: 90)
                            
                            
                            Button("Next") {
                                
                            }
                                .foregroundColor(.white)
                                .frame(width: 170.0, height: 48.0)
                                .background(Color(.orange))
                                .clipShape(Capsule(style: .continuous))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }.padding(.top, 20)
                .ignoresSafeArea()
        }
    }
    
  
    struct Menu_Previews: PreviewProvider {
        static var previews: some View {
            Menu()
        }
    }
}
