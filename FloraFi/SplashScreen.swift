//
//  ContentView.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isAnimating = false
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            tabView()
        } else {
            ZStack {
                //background Image
                Image("2")
                    .resizable()
                    .frame(width:400 , height: 850)
                    .ignoresSafeArea()
                //the logo

                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 700)
                    .padding()
                    .opacity(isAnimating ? 1.0 : 0.0)
                    .offset(y: isAnimating ? 100 : UIScreen.main.bounds.height / 2)
                   .animation(.easeIn(duration: 1.0))
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
                            isAnimating = true
                            withAnimation{
                                self.isActive = true
                            }
                        }
                    }
                    
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
    }
}
   
    

struct   ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SplashScreen()
        }.environment(\.layoutDirection, .rightToLeft)
    }
}
