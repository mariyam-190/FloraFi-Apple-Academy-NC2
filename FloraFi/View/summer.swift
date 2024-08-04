//
//  summer.swift
//  FloraFi
//
//  Created by mariyam yasin on 06/08/1445 AH.
//


import SwiftUI

    struct summer: View {
        @State private var searchText = ""
        var body: some View {
           
            NavigationView {
                ScrollView(showsIndicators : false) {
                    LazyVStack(){
                        VStack{
                            Text("النباتات الصيفية")
                                .padding(.leading,0)
                                .padding(.top,50)
                                .font(.system(size: 35))
                                .accessibilityLabel("البامية")
                                .foregroundColor(.C1)
                            HStack() {
                                VStack{
                                    
                                    Text("البامية")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("البامية")
                                    HStack{
                                        Button(action: {},
                                               label: {
                                                  NavigationLink(destination: plant7()) {
                                                      Text("اقرأ المزيد")
                                                          .accessibilityLabel("اقرأ المزيد")
                                                  }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("بامية")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("طماطم")//end vst
                                
                            }//hs
                            .foregroundColor(Color.C1)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C3)
                            .cornerRadius(16)
                            .padding(9)
                            .zIndex(-10)
                            
                            //2
                            HStack() {
                                VStack{
                                    Text("الملوخية")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("الملوخية")
                                    HStack{
                                        Button(action: {
                                            },  label: {
                                                NavigationLink(destination: plant10()) {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("نعناع")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("الملوخية").zIndex(100)//end vst
                                
                            }//hs
                            .foregroundColor(Color.C1)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C3)
                            .cornerRadius(16)
                            .padding(9)
                            .zIndex(-10)
                            
                            //3
                            HStack() {
                                VStack{
                                    Text("الريحان")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("الريحان")
                                    HStack{
                                        Button(action: {
                                            },  label: {
                                                NavigationLink(destination: plant8()) {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("ريحان")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("الملوخية").zIndex(100)//end vst
                                
                            }//hs
                            .foregroundColor(Color.C1)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C3)
                            .cornerRadius(16)
                            .padding(9)
                            .zIndex(-10)
                            
                            
                        }
                    }
                }}}
                    }
                    //.font(.system(size: 17))
                  
    

            

    #Preview {
        summer()
    }


