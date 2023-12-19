//
//  TabView.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        
        TabView{
            
                  HomePage()
                      .tabItem {

                          Label("Home", systemImage: "house")
                      }
                  Text("leaf")
                      .tabItem {
                         Label("Search", systemImage: "leaf.fill")
                      }

          SubHomePage()
                .tabItem {
                          Label("Settings", systemImage: "person")
                      }
              }
    }
}

#Preview {
    tabView()
}
