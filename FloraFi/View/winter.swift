//
//  winter.swift
//  FloraFi
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

    struct winter: View {
        @State private var searchText = ""
        var body: some View {
           
            NavigationView {
                ScrollView(showsIndicators : false) {
                    LazyVStack(){
                        VStack{
                            Text("النباتات الشتوية")
                                .padding(.leading,0)
                                .font(.system(size: 35))
                                .accessibilityLabel("الطماطم")
                                .padding(.top,50)
                                .foregroundColor(.C1)
                            HStack() {
                                VStack{
                                    
                                    Text("الطماطم")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("الطماطم")
                                    HStack{
                                        Button(action: {},
                                               label: {
                                                  NavigationLink(destination: plant1()) {
                                                      Text("اقرأ المزيد")
                                                          .accessibilityLabel("اقرأ المزيد")
                                                  }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("طماطم")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 160, height: 280)
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
                                    Text("الكزبرة")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("الكزبرة")
                                    HStack{
                                        Button(action: {
                                            },  label: {
                                                NavigationLink(destination: plant11()) {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("كزبرة")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("الكزبرة").zIndex(100)//end vst
                                
                            }//hs
                            .foregroundColor(Color.C1)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C3)
                            .cornerRadius(16)
                            .padding(9)
                            .zIndex(-10)
                            
                            //3
                            ZStack{
                                HStack() {
                                    VStack{
                                        Text("البقدونس")
                                            .padding(.leading,20)
                                            .font(.system(size: 35))
                                            .accessibilityLabel("البقدونس")
                                        HStack{
                                            Button(action: {
                                            }, label: {
                                                NavigationLink(destination: plant3()) {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                }
                                            })
                                            
                                            Image(systemName: "chevron.left.circle.fill")
                                        }.padding(.leading,70)
                                            .font(.system(size: 14))
                                            .padding(.top,-10)
                                    }
                                    Image("بقدونس")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 280)
                                        .padding(.leading,30)
                                        .accessibilityLabel("البقدونس").zIndex(200)//end vst
                                    
                                }//hs
                                .foregroundColor(Color.C1)
                                .multilineTextAlignment(.trailing)
                                .frame(width: 350 , height: 120)
                                .background(Color.C3)
                                .cornerRadius(16)
                                .padding(9)
                                .zIndex(-10)
                            }
                            //5
                            HStack() {
                                VStack{
                                    
                                    Text("نعناع")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("نعناع")
                                    HStack{
                                        Button(action: {},
                                               label: {
                                                  NavigationLink(destination: plant9()) {
                                                      Text("اقرأ المزيد")
                                                          .accessibilityLabel("اقرأ المزيد")
                                                  }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("نعاع")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 160, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("نعناع")//end vst
                                
                            }//hs
                            .foregroundColor(Color.C1)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C3)
                            .cornerRadius(16)
                            .padding(9)
                            .zIndex(-10)
                            
                            //4
                            HStack() {
                                VStack{
                                    Text("بيتونيا")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("بيتونيا")
                                    HStack{
                                        Button(action: {
                                        },  label: {
                                            NavigationLink(destination: plant2()) {
                                                Text("اقرأ المزيد")
                                                    .accessibilityLabel("اقرأ المزيد")
                                            }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("بتونيا")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("بيتونيا").zIndex(100)//end vst
                                
                            }//hs
                            .foregroundColor(Color.C1)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C3)
                            .cornerRadius(16)
                            .padding(9)
                            .zIndex(-10)
                      
                            //6
                            
                        }
                    }
                }}}
                    }
                    //.font(.system(size: 17))
                  
    
         
            

    #Preview {
        winter()
    }

