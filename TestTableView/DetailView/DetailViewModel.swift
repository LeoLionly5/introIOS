//
//  DetailViewModel.swift
//  TestTableView
//
//  Created by Leo on 23/07/2020.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

class DetailViewModel {
    var song: Song?
    
    func getRating() -> String {
        guard let song = song else {
            return ""
        }
        return "\(song.rating)"
    }
    
    func getSinger() -> String {
        guard let song = song else {
            return ""
        }
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
    
    func getImageName() -> String? {
        return song?.imageName
    }
    
    func getStyle() -> String? {
        guard let song = song else {
            return ""
        }
        return "\(song.language)"
    }
}
