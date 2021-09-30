//
//  UIViewController+.swift
//  SampleCollectionView
//
//  Created by 渕一真 on 2021/10/01.
//

import UIKit

extension UIViewController {
    func transition(viewControllerName: String) {
        let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: viewControllerName)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
