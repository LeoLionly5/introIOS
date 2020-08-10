//
//  TableViewCell.swift
//  TestTableView
//
//  Created by Leo on 13/07/2020.
//  Copyright © 2020 Leo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    var viewModel: TableViewCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
    }
    
    func configure(_ song: Song?) {
        guard let song = song else {
            return
        }
        cellImage.image = UIImage(named: song.imageName ?? "notFound")
        titleLabel.text = song.title
        singerLabel.text = viewModel?.getSinger(song)
    }
}
