//
//  HomePage.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    @State private var plant : [PlantModel] = PlantModel.PlantData
   
    var body: some View {
        
        NavigationView {
            ScrollView(showsIndicators : false) {
                LazyVStack(){
                    
                    
                    ForEach(PlantModel.PlantData){ item in
                        Button{
                            
                        }label: {
                            NavigationLink(destination : plantDView()

                            ) {
                                ZStack{
                                    HStack{
                                        VStack(alignment:.leading) {
                                            Text(item.PlantName)
                                                .padding(.leading,20)
                                                .font(.system(size: 35))
                                                .accessibilityLabel(item.PlantName)
                                            HStack{
                                                Button(action: {
                                                    
                                                }, label: {
                                                    Text("اقرأ المزيد")
                                                        .accessibilityLabel("اقرأ المزيد")
                                                })
                                                
                                                Image(systemName: "chevron.left.circle.fill")
                                            }.padding(.leading,70)
                                            .font(.system(size: 14))
                                            .padding(.top,-10)
                                          
                                            
                                        
                                            
                                        }//end vst
                                        Spacer()
                                        Image(item.PlantImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 150, height: 180)
                                            .accessibilityLabel(item.PlantName)
                                            
                                    }
                                  
                                        
                                   
                                }
                            }
                            .foregroundColor(Color.C2)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 350 , height: 120)
                            .background(Color.C1)
                            .cornerRadius(15)
                            .padding(9)
                            .zIndex(-10)
                            
                        }
                    }
                    
                }
                .padding(.top, 8)
                
                .searchable(text: $searchText , prompt: "ابحث عن")
                //.font(.system(size: 17))
              
            }
            .navigationTitle("اختر نباتاتك")
            .navigationBarTitleDisplayMode(.inline)
     
           
            
        }
    }
}

#Preview {
    HomeView()
}
