//
//  plant6.swift
//  FloraFi
//
//  Created by mariyam yasin on 07/08/1445 AH.
//



import SwiftUI
import UserNotifications

struct plant6: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack{
                VStack{
                    Text("زراعةالبفتة - الونكا")
                        .font(.system(size: 40))
                        .foregroundColor(Color.C1)
                        .accessibilityLabel("زراعه الطماطم")
                        .padding(.top,0)
                    Image("بفته")
                        .resizable()
                        .frame(width: 290 , height: 310)
     
                
                Text(" تُسمّى الونكة وهي نبتة معمرة خلابة. تُنتج أوراقًا كثيفة، جذّابة ومغطّاة بأزهار غزيرة تتفتّح خلال فصل الصيف وتشبه الفلوكس الصيفيّ. تتحمل الجفاف والحرارةالشديدة")
                    .font(.system(size: 22))
                    .foregroundColor(Color.C1)
                    .multilineTextAlignment(.center)
                    .padding(20)
                    .bold()
                    .accessibilityLabel("تُسمّى الونكة وهي نبتة معمرة خلابة. تُنتج أوراقًا كثيفة، جذّابة ومغطّاة بأزهار غزيرة تتفتّح خلال فصل الصيف وتشبه الفلوكس الصيفيّ. تتحمل الجفاف والحرارة الشديدة ، فمن السهل العناية به")
    
                
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
                                Text("من منتصف شهر فبراير الى منتصف شهر ابريل ")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("من منتصف شهر فبراير الى منتصف شهر ابريل")
                                
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
                                Text("كل أسبوعين خلال موسم النمو الصيفي")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("كل أسبوعين خلال موسم النمو الصيفي")
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
                                Text("تقليم الأوراق المريضة الذابلة مرة واحدة في الشهر.")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("تقليم الأوراق المريضة الذابلة مرة واحدة في الشهر.")
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
                                Text("بعد نموها لمدة تتراوح بين 3 إلى 4 أسابيع")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .accessibilityLabel(" بعد نموها لمدة تتراوح بين 3 إلى 4 أسابيع")
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


    struct plant6_Previews: PreviewProvider {
        static var previews: some View {
            plant6().environment(\.layoutDirection, .rightToLeft)
        }
    }

