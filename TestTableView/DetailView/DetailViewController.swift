//
//  DetailViewController.swift
//  TestTableView
//
//  Created by Leo on 23/07/2020.
//  Copyright © 2020 Leo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var albumView: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var previewBtn: UIButton!
    @IBOutlet weak var yearLabel: UILabel!
    
    var viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        previewBtn.addTarget(self, action: #selector(DetailViewController.preview), for: .touchUpInside)
    }
    
    private func configure(){
        albumView.image = UIImage(named: viewModel.getImageName() ?? "avengers")
        title = viewModel.song?.title
        titleLabel.text = viewModel.song?.title
        singerLabel.text = viewModel.getSinger()
        albumLabel.text = viewModel.song?.album
        yearLabel.text = viewModel.song?.year
        languageLabel.text = viewModel.song?.language
        ratingLabel.text = viewModel.getRating()
    }
    
    @IBAction func preview(sender: AnyObject) {
        let url:URL?=URL.init(string: viewModel.song?.preview ?? "https://www.youtube.com")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}
