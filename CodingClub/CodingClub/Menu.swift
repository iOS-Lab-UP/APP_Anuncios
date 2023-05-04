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
            Color.orange
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
                            Text("  COMUNIDAD")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                Spacer()
                        }
                        HStack {
                            Text("  UP")
                                .font(.largeTitle)
                            .fontWeight(.bold)
                            Spacer()
                        }
                        HStack {
                            Text("  Email")
                            Spacer()
                        }
                            
                        VStack {
                            ZStack {
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 300, height: 50)
                                    .cornerRadius(45)
                                HStack {
                                    TextField(
                                            "User name (email address)",
                                            text: $username
                                    ).padding(20)
                                }
                            }
                            Text("Selecciona")
                        
                                HStack
                                {
                                    ZStack {
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 100, height: 50)
                                            .cornerRadius(45)
                                        TextField(
                                                "Student",
                                                text: $username
                                        ).padding(20)
                                    }
                                    ZStack {
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 100, height: 50)
                                            .cornerRadius(45)
                                        TextField(
                                                "Docente",
                                                text: $username
                                        ).padding(20)
                                    }
                                }
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 100, height: 150)
                                .cornerRadius(45)
                            
                            Text("Next")
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
