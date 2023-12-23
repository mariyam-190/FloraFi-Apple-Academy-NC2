//
//  plant3.swift
//  FloraFi
//
//  Created by roaa on 06/08/1445 AH.
//

import Foundation
import SwiftUI
import UserNotifications

struct plant3: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack{
//            Spacer()
            ZStack{
                
                Image("الكزبره")
                    .resizable()
//                    .padding(300.0)
                    .padding(.trailing,220)
                    .frame(width: 430, height: 300)
                
//                    .padding(.trailing,330)
//                    .padding(.bottom, 350)
//                    .scaleEffect(0.7)
                
                VStack(){
                    
                    //1
                    HStack(alignment:.center){
                        Image(systemName: "hourglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .foregroundColor(Color(hex: "446127"))
                        VStack(alignment:.leading){
                            Text("وقت الزراعة")
                                .font(.body)
                                .foregroundColor(Color(hex: "446127"))

                                .accessibilityLabel("وقت الزراعة")
                            Text("من شهر اكتوبر الى شهر ابريل ")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("من شهر اكتوبر الى شهر ابريل ")
                        }
                    }.padding(.leading,140)//Hs
                    //2
                    HStack(alignment:.center){
                        Image(systemName: "die.face.4.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .foregroundColor(Color(hex: "446127"))
                        VStack(alignment:.leading){
                            Text("التسميد")
                                .font(.body)
                                .foregroundColor(Color(hex: "446127"))

                                .accessibilityLabel(" التسميد")
                            Text("سماد عضوي مثل سماد البقر أو السماد المتحلل ")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("سماد عضوي مثل سماد البقر أو السماد المتحلل ")
                        }
                    }.padding(.leading,140)//Hs
                    
                    //3
                    HStack(alignment:.center){
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .foregroundColor(Color(hex: "446127"))
                        VStack(alignment:.leading){
                            Text("السقي")
                                .font(.body)
                                .foregroundColor(Color(hex: "446127"))

                                .accessibilityLabel(" السقي")
                            Text("يحتاج الكزبرة إلى ري منتظم ليبقى الجذور رطبة.")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("يحتاج الكزبرة إلى ري منتظم ليبقى الجذور رطبة. ")
                        }
                    }.padding(.leading,140)//Hs
                    
                    //4
                    HStack(alignment:.center){
                        Image(systemName: "thermometer.sun.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(hex: "446127"))
                        VStack(alignment:.leading){
                            Text("درجة الحرارة")
                                .font(.body)
                                .foregroundColor(Color(hex: "446127"))

                                .accessibilityLabel("درجة الحرارة")
                            Text(" ضوء الشمس المعتدل لمدة 6-8 ساعات يوميًا. ")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel(" ضوء الشمس المعتدل لمدة 6-8 ساعات يوميًا. ")
                        }
                    }.padding(.leading,140)//Hs
                    //5
                    HStack(alignment:.center){
                        Image(systemName: "scissors")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color(hex: "446127"))
                        VStack(alignment:.leading){
                            Text("التقليم")
                                .font(.body)
                                .foregroundColor(Color(hex: "446127"))

                                .accessibilityLabel("التقليم")
                            Text("بانتظام بمعدل كل 4-6 أسابيع للمحافظة على شكل النبات")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                
                        }
                    }
                    .padding(.leading,140)//Hs
                    //٦
                    HStack(alignment:.center){
                        Image(systemName: "staroflife.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color(hex: "446127"))
                        VStack(alignment:.leading){
                            Text("الحصاد")
                                .font(.body)
                                .foregroundColor(Color(hex: "446127"))
                                .accessibilityLabel("الحصاد")
                            Text("بعد نموها لمدة تتراوح بين 3 إلى 4 أسابيع")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("بعد نموها لمدة تتراوح بين 3 إلى 4 أسابيع")
                        }
                    }
                    .padding(.leading,140)//Hs
                    
                    
                    
                }
//                .padding()//Vs
            }//Zs
            
            
            
            
//            VStack{
                //            Image("")
                //                .resizable()
                //                .aspectRatio(contentMode: .fit)
                //                .onTapGesture {
                //                    // Show the sheet when the image is tapped
                //                    isSheetPresented.toggle()
                //                }
                
                Button(action: {
                    // Show the sheet when the button is tapped
                    isSheetPresented.toggle()
                }) {
                    Text("للمزيد من المعلومات")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(hex: "446127"))
                        .cornerRadius(10)
//                        .padding(.bottom,430)
                        .accessibilityLabel("للمزيد من المعلومات")
                    
                }
//                .padding()
//
//            }
            .sheet(isPresented: $isSheetPresented) {
                YourSheetView(isSheetPresented: $isSheetPresented)
                    .presentationDetents([.medium])
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(hex: "92A65F"))
            }
            Spacer()
            Spacer()
            Spacer()
        }
    }
    
    struct YourSheetView: View {
        @Binding var isSheetPresented: Bool
        
        var body: some View {
            VStack {
                Button(action: {
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                    let content = UNMutableNotificationContent()
                    content.title = "هيا لنزرع سويا !"
    content.subtitle = "بدء الموسم وقت الزراعه "
                    content.sound = UNNotificationSound.default
                    
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    
                    UNUserNotificationCenter.current().add(request)
                }) {
                    Image(systemName: "bell")
                        .resizable()
                        .foregroundColor(Color.C1)
                        .frame(width: 24, height: 24)
                        .padding()
                        .cornerRadius(10)
                        .padding(.trailing,330)
                        .padding(.top, 10)
                        
                }
                
                
                
                Text("الكزبره")
                    .font(.custom("MicrosoftSansSerif", size: 40))
                    .foregroundColor(.white)
                    .padding(.leading, 0)
                    .padding(.bottom, 15)
                    .accessibilityLabel("زهور البتونيا")
                
                
                Text("زراعة الكزبرة هي عملية بسيطة ويمكن إجراؤها في الحدائق المنزلية أو الأواني تحتاج الى أشعة شمس معتدلة يُفضل زراعة النعناع في تربة غنية بالمواد العضوية وجيدة التصريف")
                
                
                
                
                    .font(.custom("MicrosoftSansSerif", size: 19))
                    .foregroundColor(.white)
                    .padding(.leading, 30)
                    .accessibilityLabel("زراعة الكزبرة هي عملية بسيطة ويمكن إجراؤها في الحدائق المنزلية أو الأواني تحتاج الى أشعة شمس معتدلة يُفضل زراعة النعناع في تربة غنية بالمواد العضوية وجيدة التصريف")
                
                
                VStack {
                    Button(action: {
                        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                            if success {
                                print("All set!")
                            } else if let error = error {
                                print(error.localizedDescription)
                            }
                        }
                    }) {
                        Text("للحصول على التنبيهات")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(hex: "446127"))                               .cornerRadius(10)
                            .padding(.bottom, 100)
                            .padding()
                            .accessibilityLabel("للحصول على التنبيهات")
                        
                        
                    }
                    
                }
            }
        }
    }
    
}
    
    
    struct plant3_Previews: PreviewProvider {
        static var previews: some View {
            plant3().environment(\.layoutDirection, .rightToLeft)
        }
    }

