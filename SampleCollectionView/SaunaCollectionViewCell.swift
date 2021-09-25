//
//  SaunaCollectionViewCell.swift
//  SampleCollectionView
//
//  Created by 渕一真 on 2021/09/25.
//

import UIKit

final class SaunaCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCollectionViewLayout(collectionView: UICollectionView) {
        let layout = UICollectionViewFlowLayout()
        let numberOfColumn: CGFloat = 2
        let margin: CGFloat = 8
        let space: CGFloat = margin * numberOfColumn - margin / numberOfColumn
        
        let cellSize = UIScreen.main.bounds.width / numberOfColumn - space
        
        layout.itemSize = .init(width: cellSize,
                                height: cellSize)
        
        layout.sectionInset = .init(top: margin,
                                    left: margin,
                                    bottom: margin,
                                    right: margin)
        
        layout.minimumInteritemSpacing = margin
        layout.minimumLineSpacing = margin
        
        collectionView.collectionViewLayout = layout
    }
}
