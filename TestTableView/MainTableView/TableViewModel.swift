//
//  TableViewModel.swift
//  TestTableView
//
//  Created by Leo on 08/07/2020.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

class TableViewModel {
    private var array: [Song]
    
    func getNumberOfRows() -> Int {
        return array.count
    }
    
    func songAt(indexPath: IndexPath) -> Song{
        return array[indexPath.row]
    }
    
    init() {
        self.array = [Song(imageName: "Can you hear me",
                           title: "Can you hear me?",
                           singer: [Person(name: "Tommy heavenly6", otherName: "川瀬智子")],
                           album: "TOMMY ICE CREAM HEAVEN FOREVER",
                           language: "Japanese",
                           year: "2013",
                           rating: 100,
                           preview: "https://www.youtube.com/watch?v=XL5yjqsBAmk"),
                      
                      Song(imageName: "Secret Weakness",
                           title: "Secret Weakness (feat. KAKA)",
                           singer: [Person(name: "KAKA"), Person(name: "SawanoHiroyuki[nZk]", otherName: "澤野弘之")],
                           album: "「BOSS」オリジナル・サウンドトラック",
                           language: "Japanese",
                           year: "2009",
                           rating: 100,
                           preview: "https://www.youtube.com/watch?v=jq4YX-ZNKnk"),
                      
                      Song(imageName: "Unlimited sky",
                           title: "Unlimited sky",
                           singer: [Person(name: "Tommy heavenly6", otherName: "川瀬智子")],
                           album: "Gothic Melting Ice Cream's Darkness Nightmare",
                           language: "Japanese",
                           year: "2009",
                           rating: 100,
                           preview: "https://www.youtube.com/watch?v=h0XDFN-QLoo"),
                      
                      Song(imageName: "梦回还",
                           title: "梦回还",
                           singer: [Person(name: "呦猫UNEKO")],
                           album: "梦回还",
                           language: "Chinese",
                           year: "2016",
                           rating: 100,
                           preview:"https://www.youtube.com/watch?v=Yr5NC3p9Gio"),
                      
                      Song(imageName: "届かない恋",
                      title: "届かない恋",
                      singer: [Person(name: "上原れな")],
                      album: "WHITE ALBUM 2 Original Soundtrack ~introductory~",
                      language: "Japanese",
                      year: "2012",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=gkg8vGkih_M"),
                      
                      Song(imageName: "Falling In Love Again",
                      title: "Falling In Love Again",
                      singer: [Person(name: "Jack Thammarat")],
                      album: "",
                      language: "Guitar music",
                      year: "2009",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=XP5UHCMlL7E"),
                      
                      Song(imageName: "Listen",
                      title: "Listen",
                      singer: [Person(name: "ONE OK ROCK")],
                      album: "Ambitions [INTERNATIONAL VERSION]",
                      language: "English",
                      year: "2017",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=sOe2tkh_I4k"),
                      
                      Song(imageName: "Ash like snow(English version)",
                      title: "Ash like snow(English version)",
                      singer: [Person(name: "Tommy heavenly6", otherName: "川濑智子")],
                      album: "TOMMY ICE CREAM HEAVEN FOREVER",
                      language: "Japanese",
                      year: "2013",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=nO4w6805QTk"),
                      
                      Song(imageName: "オレンジ",
                      title: "オレンジ (ヲタみん cover ver.)",
                      singer: [Person(name: "ヲタみん")],
                      album: "",
                      language: "Japanese",
                      year: "2013",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=FFnK4HkMSns"),
                      
                      Song(imageName: "DOA",
                      title: "DOA",
                      singer: [Person(name: "Aimee Blackschleger"), Person(name: "SawanoHiroyuki[nZk]", otherName: "澤野弘之")],
                      album: "「進撃の巨人」オリジナルサウンドトラック",
                      language: "English",
                      year: "2013",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=nCtbHkQDuOo"),
                      
                      Song(imageName: "Into The Fire",
                      title: "Into The Fire",
                      singer: [Person(name: "Thirteen Senses")],
                      album: "The Invitation",
                      language: "English",
                      year: "2010",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=VFroDCsVCeY"),
                      
                      Song(imageName: "既往不咎",
                      title: "既往不咎",
                      singer: [Person(name: "Forget And Forgive")],
                      album: "既往不咎",
                      language: "Chinese",
                      year: "2019",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=JyofRPt5dyY"),
                      
                      Song(imageName: "鼓動",
                      title: "鼓動",
                      singer: [Person(name: "ANOTHER STORY OF THE OTHER SIDE")],
                      album: "BUT I SHOULDN'T STOP HERE",
                      language: "Japanese",
                      year: "2014",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=RlhDTO_dBec"),
                      
                      Song(imageName: "Cynic",
                      title: "",
                      singer: [Person(name: "闇音レンリ"), Person(name: "Police Piccadilly")],
                      album: "",
                      language: "Japanese",
                      year: "2016",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=hFg3WRqpQmg"),
                      
                      Song(imageName: "Another day comes",
                      title: "Another day comes",
                      singer: [Person(name: "Pay money To my Pain")],
                      album: "Another day comes",
                      language: "English",
                      year: "2012",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=9WbKH5gicyc"),
                      
                      Song(imageName: "aLIEz",
                      title: "aLIEz",
                      singer: [Person(name: "mizuki"), Person(name: "SawanoHiroyuki[nZk]", otherName: "澤野弘之")],
                      album: "A/Z | aLIEz",
                      language: "Japanese",
                      year: "2014",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=L92BEWH_p2c"),
                      
                      Song(imageName: "アイロニ",
                      title: "アイロニ (majiko cover ver.)",
                      singer: [Person(name: "majiko")],
                      album: "Contrast",
                      language: "Japanese",
                      year: "2015",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=d2BJzwsnMSY"),
                      
                      Song(imageName: "Brave Shine",
                      title: "Brave Shine",
                      singer: [Person(name: "Aimer")],
                      album: "BEST SELECTION \"noir\"",
                      language: "Japanese",
                      year: "2016",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=XeI8E20ZUE4"),
                      
                      Song(imageName: "Claymation Courtyard",
                      title: "Claymation Courtyard",
                      singer: [Person(name: "Buckethead")],
                      album: "Pike 51: Claymation Courtyard",
                      language: "Guitar music",
                      year: "2014",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=7v24zNx5Gaw"),
                      
                      Song(imageName: "Awake and Alive",
                      title: "Awake and Alive",
                      singer: [Person(name: "Skillet")],
                      album: "Awake",
                      language: "English",
                      year: "2010",
                      rating: 100,
                      preview:"https://www.youtube.com/watch?v=2aJUnltwsqs")
        ]
    }
}
