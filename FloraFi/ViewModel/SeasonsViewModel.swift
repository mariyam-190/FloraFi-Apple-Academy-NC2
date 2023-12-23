//
//  AreaViewModel.swift
//  FloraFi
//
//  Created by Atheer on 11/06/1445 AH.
//

import SwiftUI

class SeasonsViewModel: ObservableObject {
  
    @Published var Areas : [SeasonsModel] = [
    
        .init(title: NSLocalizedString("الشتاء" , comment: ""), Description: NSLocalizedString ("يمكن زراعة الكثير من النباتات في فصل الشتاء (أكتوبر الى ابريل)، ومعظم النباتات تكون موسميّة ، تموت بعد انتهاء الموسم.",comment: ""), link:"1") ,
        .init(title: NSLocalizedString ("الصيف", comment: ""), Description: NSLocalizedString( "يمكن زراعة الكثير من الفواكة والخضروات والزهور في أشهر الصيف ( من شهر يونيو الى اغسطس)، والتي تتحمل درجة الحرارة العالية ، ولكن ينصح بغرس الشتلات في موسم الشتاء او بذرة الست", comment: ""), link: "٢") ,
        .init(title:NSLocalizedString("طوال العام" , comment: ""), Description:NSLocalizedString("يمكن زراعتها طوال العام وتتحمل مختلف درجات الحرارة ،  باختلاف المواسم والاجواء بحيث انها تزهر وتثمر حسب دورة حياتها .",comment: ""), link: "٣") ,
        .init(title: NSLocalizedString( "بذرة الست",comment: ""), Description: NSLocalizedString("هذا الموسم عبارة عن ست أيام يمكن زراعة كافة انواع النباتات وهي  من ٧-١٢ من شهر فبراير فى كل عام.",comment: ""), link: "٤")
        
    ]
  
}
    
