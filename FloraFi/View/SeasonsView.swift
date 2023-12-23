//
//  AreaPage.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI
struct SeasonsView: View {
    
    @State private var season : [SeasonsModel] = SeasonsModel.data
   
    
    var body: some View {
        
    NavigationStack{
        VStack(alignment:.leading){
                Text("اختر الموسم ")
                    .font(.title)
                    .padding()
                    .fontWeight(.semibold)
                    .foregroundColor(Color.C1)
                    .accessibilityLabel("اختر الموسم")
                ForEach(SeasonsModel.data){ item in
                    Button{
                        
                    }label: {
                        NavigationLink(destination : HomeView()
//                            if item.title == "الشتاء"{
//                                destination : HomeView()
//                            }
                        ) {
                            ZStack{
                                VStack(alignment:.leading){
                                    Text(item.title)
                                        .bold()
                                        .accessibilityLabel(item.title)
                                        .padding([.trailing,.leading],5)
                                    
                                    Text(item.Description)
                                        .padding(.top,-5)
                                        .padding([.trailing,.leading],5)
                                        .font(.system(size:16))
                                        .accessibilityLabel(item.Description)
                                }
                                
                            }.multilineTextAlignment(.leading)
                        }
                        .foregroundColor(Color.C2)
                        .font(.system(size: 20))
                        .multilineTextAlignment(.trailing)
                        .frame(width: 350 , height: 128)
                        .background(Color.C1)
                        .cornerRadius(15)
                        .padding(9)
                        
                    }
                }
        }
    }
}
}
                struct   AreaPage_Previews: PreviewProvider {
                    static var previews: some View {
                        SeasonsView()
                    }
                }














/*
 
 import SwiftUI
 struct SeasonsView: View {
     
     @State private var season : [SeasonsModel] = SeasonsModel.data
    
     
     var body: some View {
         
     NavigationStack{
             VStack{
                 Text("اختر الفصل ")
                     .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                     .padding(.leading ,210)
                     .padding(.bottom , 80)
                     .fontWeight(.semibold)
                     .foregroundColor(Color.C2)
                 
                 ForEach(SeasonsModel.data){ item in
                     Button{
                         
                     }label: {
                         NavigationLink(destination: HomeView()) {
                             ZStack{
                                 VStack{
                                     Text(item.title)
                                         .padding(10)
                                         .padding(.leading ,260)
                                         .bold()
                                     Text(item.Description)
                                         .padding(.trailing,10)
                                 }
                                 
                             }
                         }
                         .foregroundColor(Color.C2)
                         .font(.system(size: 20))
                         .multilineTextAlignment(.trailing)
                         .frame(width: 350 , height: 120)
                         .background(Color.C1)
                         .cornerRadius(5)
                         .padding(5)
                     }
                 }
         }
     }
 }
 }
                 struct   AreaPage_Previews: PreviewProvider {
                     static var previews: some View {
                         SeasonsView()
                     }
                 }








 */
