//
//  allYear.swift
//  FloraFi
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

    struct allYear: View {
        @State private var searchText = ""
        var body: some View {
           
            NavigationView {
                ScrollView(showsIndicators : false) {
                    LazyVStack(){
                        VStack{
                            Text("النباتات تعيش طوال العام")
                                .padding(.leading,0)
                                .font(.system(size: 30))
                                .accessibilityLabel("ظلف الماعز")
                                .foregroundColor(.C1)
                                .padding(.top,50)
                            HStack() {
                                VStack{
                                    
                                    Text("ظلف الماعز")
                                        .padding(.leading,20)
                                        .font(.system(size: 32))
                                        .accessibilityLabel("ظلف الماعز")
                                    HStack{
                                        Button(action: {},
                                               label: {
                                                  NavigationLink(destination: plant5()) {
                                                      Text("اقرأ المزيد")
                                                          .accessibilityLabel("اقرأ المزيد")
                                                  }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("ظلف")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("ظلف الماعز")//end vst
                                
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
                                    Text("الونكا-بفتة")
                                        .padding(.leading,20)
                                        .font(.system(size: 35))
                                        .accessibilityLabel("الونكا")
                                    HStack{
                                        Button(action: {
                                            },  label: {
                                                NavigationLink(destination: plant6()) {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("بفته")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 280)
                                    .padding(.leading,30)
                                    .accessibilityLabel("الونكا").zIndex(100)//end vst
                                
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
                                    Text("اكاسيا جلوكا")
                                        .padding(.leading,20)
                                        .font(.system(size: 28))
                                        .multilineTextAlignment(.center)
                                        .accessibilityLabel("اكاسيا جلوكا")
                                    HStack{
                                        Button(action: {
                                            },  label: {
                                                NavigationLink(destination: plant4()) {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                }
                                        })
                                        
                                        Image(systemName: "chevron.left.circle.fill")
                                    }.padding(.leading,70)
                                        .font(.system(size: 14))
                                        .padding(.top,-10)
                                }
                                Image("كاسيا")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 200)
                                    .padding(.leading,30)
                                    .accessibilityLabel("اكاسيا").zIndex(100)//end vst
                                
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
        allYear()
    }



