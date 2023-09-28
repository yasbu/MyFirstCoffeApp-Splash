//
//  OnboardingCollectionViewCell.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 4.08.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}
