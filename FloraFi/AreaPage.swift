//
//  AreaPage.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct AreaPage: View {
    @State var options = ["الوسطى", "الجنوبية", "الشمالية", "الشرقية"]
    @State var selectedItem = "الوسطى"
       var body: some View {
           
           Text("اختر منطقتك")
               .bold()
           
           Picker("Pick a language", selection: $selectedItem) { // 3
               ForEach(options, id: \.self) { item in // 4
                   Text(item) // 5
               }
           }
           .frame(width: 200 , height: 50)
           .background(Color.secondary.opacity(0.05))
           .cornerRadius(10)
       }
}

#Preview {
    AreaPage()
}
