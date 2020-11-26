//
//  ViewController.swift
//  homework02
//
//  Created by student on 2020/11/19.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // index image: background
        let indexBgImage = UIImage(named: "index_background")
        let indexBgImageView = UIImageView(image: indexBgImage)
        view.addSubview(indexBgImageView)

        // index image: book page
        let indexPageImage = UIImage(named: "index_book_code")
        let indexPageImageView = UIImageView(image: indexPageImage)
        view.addSubview(indexPageImageView)

        // index image: book frame
        let indexBookImage = UIImage(named: "index_book_mask")
        let indexBookImageView = UIImageView(image: indexBookImage)

        // index image: set book mask
        indexPageImageView.frame = indexBookImageView.frame
        indexPageImageView.mask = indexBookImageView

        // label text
        let label = UILabel(frame: CGRect(x: 32, y: 500, width: 350, height: 250))
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.backgroundColor = .gray
        label.layer.opacity = 0.8
        label.layer.cornerRadius = 50
        label.layer.masksToBounds = true
        label.numberOfLines = 0
        label.text = "Exercise:\nmask UIImage\n\n\n( It's a single view. )"
        label.textColor = .systemBackground
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.adjustsFontForContentSizeCategory = true
        label.textAlignment = NSTextAlignment.center
        view.addSubview(label)
    }


}

