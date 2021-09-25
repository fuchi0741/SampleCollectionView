//
//  SaunaCollectionViewCell.swift
//  SampleCollectionView
//
//  Created by 渕一真 on 2021/09/25.
//

import UIKit

final class SaunaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var baseView: UIView!
    @IBOutlet private weak var saunaImageView: UIImageView!
    @IBOutlet private weak var saunaNameLabel: UILabel!
    @IBOutlet private weak var locationButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayer()
    }
    
    @IBAction private func didTapLocationButton(_ sender: UIButton) {
        
    }
    
    private func setupLayer() {
        baseView.layer.borderWidth = 1.0
        baseView.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        baseView.layer.cornerRadius = 8.0
        baseView.clipsToBounds = true
    }
    
    func setupText(saunaName: String) {
        saunaNameLabel.text = saunaName
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
