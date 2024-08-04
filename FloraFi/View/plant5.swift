//
//  plant5.swift
//  FloraFi
//
//  Created by roaa on 06/08/1445 AH.
//


import SwiftUI
import UserNotifications

struct plant5: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack{
                VStack{
                    Text("ظلف الماعز")
                        .font(.system(size: 40))
                        .foregroundColor(Color.C1)
                        .accessibilityLabel("ظلف الماعز")
                    Image("ظلف")
                        .resizable()
                        .frame(width: 290 , height: 310)
     
                
                Text(" نبات مداد وسريع النمو وتظهر من العقد المنتشرة على الساق جذور تساهم في تثبيته ومن هنا تأتي أهميته كنبات مثبت للتربة يتحمل الحرارة العالية")
                    .font(.system(size: 22))
                    .foregroundColor(Color.C1)
                    .multilineTextAlignment(.center)
                    .padding(20)
                    .bold()
                    .accessibilityLabel(" نبات مداد وسريع النمو وتظهر من العقد المنتشرة على الساق جذور تساهم في تثبيته ومن هنا تأتي أهميته كنبات مثبت للتربة من الانجراف يتحمل درجات الحرارة العالية")
    
                
                Button(action: {
                    // Show the sheet when the button is tapped
                    isSheetPresented.toggle()
                }) {
                    Text("للمزيد من المعلومات")
                        .padding()
                        .foregroundColor(.C1)
                        .background(Color.C3)
                        .cornerRadius(10)
                        .accessibilityLabel("للمزيد من المعلومات")
                    
                }
                }.padding(.top,10)//Vs
                
                .sheet(isPresented: $isSheetPresented) {
                YourSheetView(isSheetPresented: $isSheetPresented)
                        .presentationDetents([.height(550)])
                        .frame(maxWidth: .infinity, maxHeight:.infinity)
                    .background(Color.C1)
            }
        }
    }
    
    struct YourSheetView: View {
        @Binding var isSheetPresented: Bool
        
        var body: some View {
                HStack{
                    VStack{
                        //1
                        HStack{
                            
                            HStack{
                            
                            Image(systemName: "hourglass")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 22)
                                .foregroundColor(Color.white)
                                .bold()
                            VStack(alignment:.leading){
                                Text("وقت الزراعة")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                    .accessibilityLabel("وقت الزراعة")
                                Text("من شهر اكتوبر الى شهر ابريل")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("من شهر اكتوبر الى شهر ابريل")
                                
                            }
                        }.padding(.leading,20)
                         .padding(.top,70)//Hs
                         .frame(maxWidth: .infinity, alignment: .leading)
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
                            })
                                {
                                    Image(systemName: "bell")
                                        .resizable()
                                        .foregroundColor(Color.white)
                                        .frame(width: 24, height: 24)
                                        .padding(.bottom,20)
                                        .padding(.top,20)
                                        .padding(.trailing,20)
                                }
                        
                        }//hs
                        //2
                        HStack(){
                            Image(systemName: "die.face.4.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 22)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("التسميد")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                
                                    .accessibilityLabel(" التسميد")
                                Text("سماد عضوي مثل سماد البقر أو السماد المتحلل")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("سماد عضوي مثل سماد البقر أو السماد المتحلل")
                            }
                        }.padding(.leading,20)//Hs
                            .frame(maxWidth: .infinity, alignment: .leading)
                           
                        
                        //3
                        HStack(){
                            Image(systemName: "drop.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 22)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("السقي")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                
                                    .accessibilityLabel(" السقي")
                                Text("مره واحده يوميا /  حسب الاحتياج")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("مره واحده يومياحسب الاحتياج")
                            }
                        }.padding(.leading,20)//Hs
                            .frame(maxWidth: .infinity, alignment: .leading)
                        //4
                        HStack(){
                            Image(systemName: "thermometer.sun.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("درجة الحرارة")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                
                                    .accessibilityLabel("درجة الحرارة")
                                Text("تتحمل درجات الحرارة العالية والشمس المباشرة")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("تتحمل درجات الحرارة العالية والشمس المباشرة")
                            }
                        }.padding(.leading,20)//Hs
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //5
                        HStack(){
                            Image(systemName: "scissors")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 41, height: 22)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("التقليم")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                
                                    .accessibilityLabel("التقليم")
                                Text("بانتظام بمعدل كل 4-6 أسابيع للمحافظة على الشكل")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("بانتظام بمعدل كل 4-6 أسابيع للمحافظة على شكل النبات")
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,20)//Hs
                        //٦
                        HStack(alignment:.center){
                            Image(systemName: "staroflife.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 22)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("التزهير")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                    .accessibilityLabel("التزهير")
                                Text("من سبتمبر الى ابريل")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("من سبتمبر الى ابريل")
                            }
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,20)//Hs
                        
                    }
               
                }
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
                            .padding(.bottom, 60)
                            .padding(.top,40)
                            .accessibilityLabel("للحصول على التنبيهات")
                    }
                }
            }
        }
    }


    struct plant5_Previews: PreviewProvider {
        static var previews: some View {
            plant5().environment(\.layoutDirection, .rightToLeft)
        }
    }

