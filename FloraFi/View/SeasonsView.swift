//
//  AreaPage.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI
struct SeasonsView: View {
    var body: some View {
        
        NavigationStack{
            ScrollView(showsIndicators : false) {
                LazyVStack(){
                    VStack(alignment:.leading){
                        Text("اختر الموسم ")
                            .font(.title)
                            .padding()
                            .fontWeight(.semibold)
                            .foregroundColor(Color.C1)
                            .accessibilityLabel("اختر الموسم")
                            .padding(.bottom,30)
                        
                        VStack{
                            
                            //1
                            HStack{
                                VStack{
                                    Button{} label: {
                                        NavigationLink(destination: winter()) {
                                    HStack{
                                        Image(systemName: "snowflake")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                         
                                                Text("الشتاء")
                                                    .font(.system(size: 26))
                                                    .accessibilityLabel("الشتاء")
                                                    .bold()
                                                
                                            }   .foregroundColor(Color.C3)
                                        }
                                        
                                        
                                    }
                                    Text("يمكن زراعة الكثير من النباتات في فصل الشتاء (أكتوبر الى ابريل)، ومعظم النباتات تكون موسميّة ، تموت بعد انتهاء الموسم .   "
                                    ).multilineTextAlignment(.leading)
                                        .padding(EdgeInsets(top: 1, leading: 10, bottom: 5, trailing: 10))
                                    
                                }
                                
                            }.foregroundColor(Color.C2)
                                .frame(width: 350 , height: 180)
                                .background(Color.C1)
                                .cornerRadius(16)
                                .padding(.bottom,30)
                            
                            
                            
                            //2
                            HStack{
                                VStack{
                                    HStack{
                                        Image(systemName: "sun.max.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(Color.white)
                                        Button{} label: {
                                            NavigationLink(destination: summer()) {
                                                Text("الصيف")
                                                    .font(.system(size: 26))
                                                    .accessibilityLabel("الصيف")
                                                    .bold()
                                                
                                            }}
                                    }.foregroundColor(Color.C3)
                                    Text("يتميز بارتفاع درجات الحرارة وتوافر أشعة الشمس القوية، مما يساهم في نمو النباتات بشكل أسرع. يزرع خلالها الكثير من النباتات.ولكن ينصح بغرسها في الشتاء او بذرة الست .  ")
                                        .multilineTextAlignment(.leading)
                                        .padding(EdgeInsets(top: 1, leading: 10, bottom: 5, trailing: 10))
                                    
                                }
                                
                            }.foregroundColor(Color.C2)
                                .frame(width: 350 , height: 180)
                                .background(Color.C1)
                                .cornerRadius(16)
                                .padding(.bottom,30)
                            
                            
                            //3
                            
                            HStack{
                                VStack{
                                    HStack{
                                        Image(systemName: "sun.dust.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(Color.white)
                                        Button{} label: {
                                            NavigationLink(destination: allYear()) {
                                                Text("طوال العام")
                                                    .font(.system(size: 26))
                                                    .accessibilityLabel("الشتاء")
                                                    .bold()
                                                
                                            }}}
                                    Text(
                                        "نباتات تعيش طوال العام وتتحمل مختلف درجات الحرارة ،  باختلاف المواسم بحيث انها تزهر وتثمر حسب دورة حياتها ."
                                    ).multilineTextAlignment(.leading)
                                        .padding(EdgeInsets(top: 1, leading: 10, bottom: 5, trailing: 10))
                                    
                                }
                            }//hs
                            .foregroundColor(Color.C2)
                            .frame(width: 350 , height: 180)
                            .background(Color.C1)
                            .cornerRadius(16)
                            .padding(.bottom,30)
                            
                        }}
                    
                    //4
                    
                    HStack{
                        VStack{
                            HStack{
                                Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.white)
                                Text("بذرة الست")
                                    .font(.system(size: 26))
                                    .accessibilityLabel("الشتاء")
                                    .bold()
                                
                            }
                            Text("هذا الموسم عبارة عن ست أيام يمكن زراعة كافة انواع النباتات وهي  من ٧-١٢ من شهر فبراير فى كل عام.").multilineTextAlignment(.leading)
                                .padding(EdgeInsets(top: 1, leading: 10, bottom: 5, trailing: 10))
                        }
                    }//hs
                    .foregroundColor(Color.C2)
                    .frame(width: 350 , height: 180)
                    .background(Color.C1)
                    .cornerRadius(16)
                    .padding(.bottom,30)
                    
                }}}}}
    
                struct   AreaPage_Previews: PreviewProvider {
                    static var previews: some View {
                        SeasonsView()
                    }
                }


