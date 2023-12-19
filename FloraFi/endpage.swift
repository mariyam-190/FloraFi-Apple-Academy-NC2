//
//  endpage.swift
//  FloraFi
//
//  Created by roaa on 10/06/1445 AH.
//


import SwiftUI
import UserNotifications
struct endpage: View {
    
@State private var isSheetPresented = false

    var body: some View {
        
        VStack {
            Image("back")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    // Show the sheet when the image is tapped
                    isSheetPresented.toggle()
                }

            Button(action: {
                // Show the sheet when the button is tapped
                isSheetPresented.toggle()
                
            }) {
                Text("للمزيد من المعلومات")
                    .font(.custom("MicrosoftSansSerif", size: 24))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(hex: "2F4A5B")) // Set the background color of the button
                    .cornerRadius(10) // Optional: Add corner radius for a rounded appearance
            }
            .padding() // Optional: Add padding around the button for better spacing
        }
        .sheet(isPresented: $isSheetPresented) {
            // Content of the sheet goes here
            YourSheetView(isSheetPresented: $isSheetPresented)
            // Set the background color of the entire sheet page
            // Set the background color of the entire sheet page
                .presentationDetents([.medium])
                             .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "2F4A5B"))       }
    }
}

struct YourSheetView: View {
    @Binding var isSheetPresented: Bool
    
    var body: some View {
        // Customize the content of your sheet
        VStack(alignment: .leading) {
            
            
           
                
                Button(action: {
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                }) {
                    Image("belll")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding(.leading,10)
                        .padding(.top, 30)
                   // إضافة مساحة فارغة بين النصوص وزر الإذن
                    
                   
                }
            Spacer()
            Text("زراعه الطماطم")
                .font(.custom("MicrosoftSansSerif", size: 40))
                .foregroundColor(Color(hex: "C5E3E3"))
                .padding(.leading, 100)
                .padding(.bottom, 15)
                .background(Color(hex: "2F4A5B")) // Set the background color of the text background
            
            Text(" يعتبر الطماطم من النباتات الموسمية ، التي يتم زراعتها في فصل الشتاء او في الاجواء المعتدلة ، ويتم الحصاد بعد ٦٠ يوم من زرع البذور والتسميد والتقليم      ")
            
                .font(.custom("MicrosoftSansSerif", size: 19))
                .foregroundColor(.white)
                .padding(.leading, 30)
               
            // إضافة مساحة فارغة بين النصوص وزر الإذن
        
        }
    
        
     

            
                // Set the text color to red
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
                    content.subtitle = "بدء الموسم حان وقت زراعه الطماطم🍅"
                    content.sound = UNNotificationSound.default
                    
                    // show this notification five seconds from now
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                    
                    // choose a random identifier
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    
                    // add our notification request
                    UNUserNotificationCenter.current().add(request)
                }) {
                    
                    Image("اخذ اذن")
                        .padding(.bottom, 100)
                        .padding()
                }
        Spacer()
                
            }
            
        }
    

    extension Color {
        init(hex: String) {
            var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
            
            var rgb: UInt64 = 0
            
            Scanner(string: hexSanitized).scanHexInt64(&rgb)
            
            let red = Double((rgb & 0xFF0000) >> 16) / 255.0
            let green = Double((rgb & 0x00FF00) >> 8) / 255.0
            let blue = Double(rgb & 0x0000FF) / 255.0
            
            self.init(red: red, green: green, blue: blue)
        }
    }

    struct endpage_Previews: PreviewProvider {
        static var previews: some View {
            endpage()
        }
    }

