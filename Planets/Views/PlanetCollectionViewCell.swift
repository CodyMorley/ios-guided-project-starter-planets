//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Bling Morley on 3/26/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!    
    @IBOutlet weak var nameLabel: UILabel!
    
    // The planet the cell should display in it's views.
    var planet: Planet? {
        didSet {
            //Any time the planet's value changes - run this code:
            updateViews()
        }
    }
    
    func updateViews() {
        imageView.image = planet?.image
        nameLabel.text = planet?.name
    }
}
