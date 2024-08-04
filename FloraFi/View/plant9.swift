//
//  plant9.swift
//  FloraFi
//
//  Created by mariyam yasin on 07/08/1445 AH.
//



import SwiftUI
import UserNotifications

struct plant9: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack{
                VStack{
                    Text("زراعة النعناع")
                        .font(.system(size: 40))
                        .foregroundColor(Color.C1)
                        .accessibilityLabel("زراعة النعناع")
                    Image("نعاع")
                        .resizable()
                        .frame(width: 250 , height: 250)
     
                
                Text("زراعة النعناع هي عملية بسيطة ويمكن إجراؤها في الحدائق المنزلية أو الأحواض.تحتاج الى أشعة شمس معتدلة يُفضل زراعة النعناع في تربة غنية بالمواد العضوية وجيدة التصريف")
                    .font(.system(size: 22))
                    .foregroundColor(Color.C1)
                    .multilineTextAlignment(.center)
                    .padding(20)
                    .bold()
                    .accessibilityLabel("زراعة النعناع هي عملية بسيطة ويمكن إجراؤها في الحدائق المنزلية أو الأحواض.تحتاج الى أشعة شمس معتدلة يُفضل زراعة النعناع في تربة غنية بالمواد العضوية وجيدة التصريف")
                   
            
    
                
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
                            
                        HStack(alignment:.center){
                            
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
                                Text("يبدأ من شهر اكتوبر الى شهر أبريل")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("يبدأ من شهر اكتوبر الى شهر أبريل")
                                
                                
                            }
                        }.padding(.leading,20).padding(.top,70)//Hs
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
                                        .padding(.trailing,30)
                                }
                        
                        }//hs
                        //2
                        HStack(alignment:.center){
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
                        HStack(alignment:.center){
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
                                Text("يحتاج النعناع إلى ري منتظم ليبقى الجذور رطبة.")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("يحتاج النعناع إلى ري منتظم ليبقى الجذور رطبة.")
                            }
                        }.padding(.leading,20)//Hs
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        //4
                        HStack(alignment:.center){
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
                                Text("لا يتحمل درجات الحرارة العالية")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("متوسطة طوال اليوم")
                            }
                        }.padding(.leading,20)//Hs
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //5
                        HStack(alignment:.center){
                            Image(systemName: "scissors")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 22)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("التقليم")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                
                                    .accessibilityLabel("التقليم")
                                Text("بانتظام كل 4 إلى 6 أسابيع للحفاظ على نموه الصحي")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("بانتظام كل 4 إلى 6 أسابيع للحفاظ على نموه الصحي")
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
                                Text("الحصاد")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                    .accessibilityLabel("الحصاد")
                                Text(" تتراوح بين 8 إلى 10 أسابيع من الزراعة")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel(" تتراوح بين 8 إلى 10 أسابيع من الزراعة")
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


    struct plant9_Previews: PreviewProvider {
        static var previews: some View {
            plant9().environment(\.layoutDirection, .rightToLeft)
        }
    }

