//
//  FullWidthLayout.swift
//  CollectionViewRotate
//
//  Created by Mark DiFranco on 2017-05-07.
//  Copyright © 2017 MDFProjects. All rights reserved.
//

import UIKit

// MARK: - Constants

private let EdgeInset: CGFloat = 10
private let CellSpacing: CGFloat = 10
private let LineSpacing: CGFloat = 10
private let CellHeight: CGFloat = 50

// MARK: - FullWidthLayout

class FullWidthLayout: UICollectionViewFlowLayout {

    override init() {
        super.init()
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        minimumLineSpacing = LineSpacing
        minimumInteritemSpacing = CellSpacing
        sectionInset = UIEdgeInsets(top: EdgeInset, left: EdgeInset, bottom: EdgeInset, right: EdgeInset)
    }
}

// MARK: Layout Methods

extension FullWidthLayout {

    override func prepare() {
        super.prepare()

        if let view = collectionView {
            let availableWidth = view.bounds.width - EdgeInset * 2
            itemSize = CGSize(width: availableWidth, height: CellHeight)

            print("Item size: \(itemSize)")
        }
    }
}
