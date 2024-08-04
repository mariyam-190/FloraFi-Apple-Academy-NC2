//
//  bezratalset.swift
//  FloraFi
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

struct bezratalset: View {
            @State private var searchText = ""
            var body: some View {
               
                NavigationView {
                    ScrollView(showsIndicators : false) {
                        LazyVStack(){
                            VStack{
                                Text("نباتات بذرة الست")
                                    .padding(.leading,0)
                                    .font(.system(size: 30))
                                    .accessibilityLabel("ظلف الماعز")
                                    .foregroundColor(.C1)
                                HStack() {
                                    VStack{
                                        
                                        Text("جميع النباتات")
                                            .padding(.leading,20)
                                            .font(.system(size: 32))
                                            .accessibilityLabel("ظلف الماعز")
                                        HStack{
                                            Button(action: {},
                                                   label: {
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
                                    
                                }//hs
                                .foregroundColor(Color.C2)
                                .multilineTextAlignment(.trailing)
                                .frame(width: 350 , height: 120)
                                .background(Color.C1)
                                .cornerRadius(15)
                                .padding(9)
                                .zIndex(-10)
                                
                                
                                
                            }.searchable(text: $searchText , prompt: "ابحث عن")
                        }
                    }}}
                        }

#Preview {
    bezratalset()
}
