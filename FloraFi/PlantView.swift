//
//  PlantView.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct PlantView: View {
    @State private var navigationActive = false
    var body: some View {
        
        VStack(alignment:.trailing){
            
            Text("الطماطم")
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("لمعرفة المزيد")
                })
                Text("موسمي ")
                
                
            }
            
        }
        .padding()
        .padding(.leading, 100)
        .frame(width: 320 , height: 300)
        .background(.secondary.opacity(0.04))
        .cornerRadius(10)
        NavigationLink(
            destination:
                endpage(),
            isActive: $navigationActive
        ) {
            EmptyView()
        }
    }
}
#Preview {
    PlantView()
}
