//
//  HomePage.swift
//  FloraFi
//
//  Created by Atheer on 06/06/1445 AH.
//

import SwiftUI

struct HomePage: View {

    var body: some View {
        ScrollView(showsIndicators : false){
            
            VStack{
                ForEach(1...10 , id:\.self) { _ in
                    PlantView()
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
