//
//  s.swift
//  FloraFi
//
//  Created by mariyam yasin on 07/08/1445 AH.
//

import SwiftUI
struct s: View {
        @State private var isActive = false
        @State private var size = 0.8
        @State private var opacity = 0.5
        
        var body: some View {
            if isActive {
              tabView()
            } else {
                
                VStack{
                
                    Image("splashscreen")
                        .resizable()
                        .frame(width:400 , height: 850)
                        .ignoresSafeArea()
                   
          
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 3.0)){
                            self.size = 0.5
                            self.opacity = 1
                        }
                    }
                    
                }
                
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.1) {
                        withAnimation{
                            self.isActive = true
                        }
                        
                    }
                }
            }
        }
    }

   

#Preview {
    s()
}
