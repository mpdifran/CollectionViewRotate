//
//  FullWidthCollectionViewController.swift
//  CollectionViewRotate
//
//  Created by Mark DiFranco on 2017-05-07.
//  Copyright © 2017 MDFProjects. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FullWidthCollectionViewController: UICollectionViewController {

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    }
}
