//
//  PlantModel.swift
//  FloraFi
//
//  Created by Atheer on 11/06/1445 AH.
//

import SwiftUI

struct PlantModel: Identifiable {

        let id = UUID()
        var PlantTime : String
        var PlantName : String
        var PlantImage :String
        
           
    }

    extension PlantModel{
        
        static var PlantData : [PlantModel] = [
            .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString ("الطماطم",comment: ""), PlantImage: "طماطم"),
            .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString( "ريحان", comment: ""), PlantImage: "ريحان"),
            .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString("نعناع",comment: ""),PlantImage:NSLocalizedString("نعناع",comment: "")),
            .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString( "ريحان", comment: ""), PlantImage: "ريحان"),
            .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString ("الطماطم",comment: ""), PlantImage: "طماطم"),
            .init(PlantTime: NSLocalizedString("موسمي", comment: ""), PlantName: NSLocalizedString("نعناع",comment: ""),PlantImage:NSLocalizedString("نعناع",comment: "")),
        ]
    }
