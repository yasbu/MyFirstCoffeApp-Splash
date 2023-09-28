//
//  OnboardingViewController.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 3.08.2023.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            OnboardingSlide(title: "Kahve Dükkanı", description: "Kahve, içtiğin zaman seni düşündüğüm, içmediğin zaman aklıma geldiğimdir."),
            OnboardingSlide(title: "Kahve Dükkanı", description: "Kahve, en güzel yanlış anlaşılan huzur kaynağıdır."),
            OnboardingSlide(title: "Kahve Dükkanı", description: "Hayat bir fincan kahve gibidir, tadını çıkararak içmek gerekir.")
        ]
        pageControl.numberOfPages = slides.count
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        if currentPage == slides.count - 1 {
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
    cell.setup(slides[indexPath.row])
    return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let witdh = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / witdh)
    }
}
