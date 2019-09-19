//
//  InnerCollectionViewFlowLayout.swift
//  CinemApp
//
//  Created by Josiah Agosto on 9/13/19.
//  Copyright © 2019 Josiah Agosto. All rights reserved.
//

import UIKit

class InnerCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        self.minimumLineSpacing = 20
        self.minimumInteritemSpacing = 0
        self.scrollDirection = .horizontal
        self.itemSize = CGSize(width: 150, height: 300)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
