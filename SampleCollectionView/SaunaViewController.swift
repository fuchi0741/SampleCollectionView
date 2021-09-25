//
//  SaunaViewController.swift
//  SampleCollectionView
//
//  Created by 渕一真 on 2021/09/19.
//

import UIKit

final class SaunaViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let nib = UINib(nibName: "SaunaCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "Cell")
        
        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        let cellSize = UIScreen.main.bounds.width / 2 - 12
        
        layout.itemSize = CGSize(width: cellSize, height: cellSize)
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        layout.minimumInteritemSpacing = 8
        layout.minimumLineSpacing = 8
        
        collectionView.collectionViewLayout = layout
    }
}

extension SaunaViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
}
