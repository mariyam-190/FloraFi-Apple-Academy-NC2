//
//  HomePage.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct HomeView: View {
                @State private var searchText = ""
                var body: some View {
                   
                    NavigationView {
                        ScrollView(showsIndicators : false) {
                            LazyVStack(){
                                VStack{
                                    Text("النباتات ")
                                        .padding(.leading,0)
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
                                                .accessibilityLabel("اكاسيا جلوكا")
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
                                            .frame(width: 140, height: 280)
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
                                            .accessibilityLabel("البقدونس").zIndex(100)//end vst
                                        
                                    }//hs
                                    .foregroundColor(Color.C1)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: 350 , height: 120)
                                    .background(Color.C3)
                                    .cornerRadius(16)
                                    .padding(9)
                                    .zIndex(-10)
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
                                            Text("الونكا")
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
             HomeView()
            }



       
