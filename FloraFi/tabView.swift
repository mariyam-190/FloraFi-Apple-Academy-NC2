//
//  TabView.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//


import SwiftUI

struct tabView: View {
    let C3Color = Color(UIColor(red: 220/255, green: 222/255, blue: 157/255, alpha: 1))
    
    var body: some View {
        ZStack {
            TabView {
                SeasonsView()
                    .tabItem {
                        Label("المواسم", systemImage: "square.grid.3x3.topright.fill")
                    }

                HomeView()
                    .tabItem {
                        Label("النباتات", systemImage: "leaf")
                    }

               
            }
            .accentColor(.C1) // لون العنصر المحدد
        }
        .edgesIgnoringSafeArea(.all) // لضمان تعيين اللون لكل الواجهات
        .onAppear {
            UITabBar.appearance().barTintColor = UIColor(C3Color)
        }
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
