//
//  TableViewCellViewModel.swift
//  TestTableView
//
//  Created by Leo on 15/07/2020.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

class TableViewCellViewModel {
    
    func getRating(_ song: Song) -> String {
        return "\(song.rating)%"
    }
    
    func getSinger(_ song: Song) -> String {
        var res : String = ""
        for singer in song.singer {
            if singer.otherName == nil {
                res += "\(singer.name) / "
            }
            else {
                res += "\(singer.name) (\(singer.otherName ?? "")) / "
            }
        }
        res.removeLast(3)
        return res
    }
}
