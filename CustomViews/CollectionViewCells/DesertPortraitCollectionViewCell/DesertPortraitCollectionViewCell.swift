//
//  DesertPortraitCollectionViewCell.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 3.09.2023.
//

import UIKit

class DesertPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DesertPortraitCollectionViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desertImageView: UIImageView!
    @IBOutlet weak var desertLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(desert: Desert){
        titleLabel.text = desert.name
        desertImageView.kf.setImage(with: desert.image?.asUrl)
        desertLabel.text = desert.formattedCalories
        descriptionLabel.text = desert.description
    }

}
