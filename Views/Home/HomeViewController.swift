//
//  HomeViewController.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 2.09.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var coldCollectionView: UICollectionView!
    @IBOutlet weak var desertCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Coffe 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200")
    ]
    
    var colds: [DishCategory] = [
        .init(id: "id1", name: "Coffe 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Coffe 5", image: "https://picsum.photos/100/200")
    ]
    
    var deserts: [Desert] = [
        .init(id: "id1", name: "Lotus1", description: "Best", image: "https://picsum.photos/60/100", calories: 123),
        .init(id: "id2", name: "Lotus2", description: "Best", image: "https://picsum.photos/60/100", calories: 123),
        .init(id: "id3", name: "Lotus3", description: "Best", image: "https://picsum.photos/60/100", calories: 123),
        .init(id: "id3", name: "Lotus4", description: "Best", image: "https://picsum.photos/60/100", calories: 123)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil),forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        coldCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil),forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        desertCollectionView.register(UINib(nibName: DesertPortraitCollectionViewCell.identifier, bundle: nil),forCellWithReuseIdentifier: DesertPortraitCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case coldCollectionView:
            return colds.count
        case desertCollectionView:
            return deserts.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case coldCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: colds[indexPath.row])
            return cell
        case desertCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DesertPortraitCollectionViewCell.identifier, for: indexPath) as! DesertPortraitCollectionViewCell
            cell.setup(desert: deserts[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
        
        
    }
    
    
}
