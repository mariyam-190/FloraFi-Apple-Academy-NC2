//
//  ContentView.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("FloraFi")
                .font(.system(size: 60))
                .fontDesign(.serif)
                .fontWeight(.bold)
                .font(.system(size: 50))
            
        }
        .frame(width: 300 , height: 250)
        .background(Color.black.opacity(0.03))
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    ContentView()
}
