//
//  PlantViewModel.swift
//  FloraFi
//
//  Created by Atheer on 11/06/1445 AH.
//

import SwiftUI

class PlantViewModel:ObservableObject {
    
    @Published var PlantData : [PlantModel] =
    [
        
        .init(PlantTime:NSLocalizedString( "موسمي", comment: ""), PlantName:NSLocalizedString( "الطماطم", comment: ""), PlantImage:NSLocalizedString( "طماطم", comment: "")),
        .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString("نعناع", comment: ""), PlantImage: NSLocalizedString("نعناع",comment: "")),
        .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString( "ريحان", comment: ""), PlantImage: "ريحان"),
    
    ]
               
}


