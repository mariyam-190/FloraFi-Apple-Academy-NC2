//
//  plantDView.swift
//  FloraFi
//
//  Created by mariyam yasin on 09/07/1445 AH.
//

import SwiftUI
import UserNotifications

struct plantDView: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack{
//            Spacer()
            ZStack{
                
                Image("طماطم")
                    .resizable()
//                    .padding(300.0)
                    .padding(.trailing,220)
                    .frame(width: 530, height: 400)
                
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
                            .foregroundColor(Color.C1)
                        VStack(alignment:.leading){
                            Text("وقت الزراعة")
                                .font(.body)
                                .foregroundColor(Color.C1)

                                .accessibilityLabel("وقت الزراعة")
                            Text("يبدأ من شهر اكتوبر الى شهر أبريل")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("يبدأ من شهر اكتوبر الى شهر أبريل")
                        }
                    }.padding(.leading,140)//Hs
                    //2
                    HStack(alignment:.center){
                        Image(systemName: "die.face.4.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .foregroundColor(Color.C1)
                        VStack(alignment:.leading){
                            Text("التسميد")
                                .font(.body)
                                .foregroundColor(Color.C1)

                                .accessibilityLabel(" التسميد")
                            Text("مره كل إسبوعين مختلف الأسمدة")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel(
                                    "مره كل إسبوعين مختلف انواع الاسمدة")
                        }
                    }.padding(.leading,140)//Hs
                    
                    //3
                    HStack(alignment:.center){
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .foregroundColor(Color.C1)
                        VStack(alignment:.leading){
                            Text("السقي")
                                .font(.body)
                                .foregroundColor(Color.C1)

                                .accessibilityLabel(" السقي")
                            Text("مره واحده يوميا /  حسب الاحتياج")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("مره واحده يومياحسب الاحتياج")
                        }
                    }.padding(.leading,140)//Hs
                    
                    //4
                    HStack(alignment:.center){
                        Image(systemName: "thermometer.sun.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.C1)
                        VStack(alignment:.leading){
                            Text("درجة الحرارة")
                                .font(.body)
                                .foregroundColor(Color.C1)

                                .accessibilityLabel("درجة الحرارة")
                            Text("يفضل أن تكون متوسطة طوال اليوم")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("متوسطة طوال اليوم")
                        }
                    }.padding(.leading,140)//Hs
                    //5
                    HStack(alignment:.center){
                        Image(systemName: "scissors")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color.C1)
                        VStack(alignment:.leading){
                            Text("التقليم")
                                .font(.body)
                                .foregroundColor(Color.C1)

                                .accessibilityLabel("التقليم")
                            Text("مره كل شهرين ويختلف من نوع ")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("مره كل إسبوعين مختلف انواع الاسمدة")
                        }
                    }
                    .padding(.leading,140)//Hs
                    //٦
                    HStack(alignment:.center){
                        Image(systemName: "staroflife.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color.C1)
                        VStack(alignment:.leading){
                            Text("الحصاد")
                                .font(.body)
                                .foregroundColor(Color.C1)
                                .accessibilityLabel("الحصاد")
                            Text("تحصد الثمرة بعد ٦٠ يوم بعدالبذور")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .accessibilityLabel("تحصد الثمرة بعد ٦٠ يوم من وضع البذور")
                        }
                    }
                    .padding(.leading,140)//Hs
                    
                    
                    
                }
//                .padding()//Vs
            }//Zs
                
                Button(action: {
                    // Show the sheet when the button is tapped
                    isSheetPresented.toggle()
                }) {
                    Text("للمزيد من المعلومات")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.C1)
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
                    .background(Color.C1)
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
                    content.subtitle = "بدء الموسم حان وقت زراعة الطماطم🍅"
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
                
                
                
                Text("زراعه الطماطم")
                    .font(.custom("MicrosoftSansSerif", size: 40))
                    .foregroundColor(.white)
                    .padding(.leading, 0)
                    .padding(.bottom, 15)
                    .accessibilityLabel("زراعه الطماطم")
                
                Text(" يعتبر الطماطم من النباتات الموسمية ، التي يتم زراعتها في فصل الشتاء او في الاجواء المعتدلة ، ويتم الحصاد بعد ٦٠ يوم من زرع البذور والتسميد والتقليم      ")
                    .font(.custom("MicrosoftSansSerif", size: 19))
                    .foregroundColor(.white)
                    .padding(.leading, 30)
                    .accessibilityLabel(" يعتبر الطماطم من النباتات الموسمية ، التي يتم زراعتها في فصل الشتاء او في الاجواء المعتدلة ، ويتم الحصاد بعد ٦٠ يوم من زرع البذور والتسميد والتقليم")
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
                            .foregroundColor(Color.C1)
                            .background(Color.C3)                               .cornerRadius(10)
                            .padding(.bottom, 100)
                            .padding()
                            .accessibilityLabel("للحصول على التنبيهات")
                        
                        
                    }
                    
                }
            }
        }
    }
    
}

    struct plantDView_Previews: PreviewProvider {
        static var previews: some View {
            plantDView().environment(\.layoutDirection, .rightToLeft)
        }
    }
