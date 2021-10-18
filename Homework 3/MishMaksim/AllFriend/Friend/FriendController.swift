//
//  FriendController.swift
//  MishMaksim
//
//  Created by Максим on 15.10.2021.
//

import UIKit
class FriendController: UICollectionViewController {
    
    var myFriend: FriendModel?
    let sectionInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? FriendCell else { return UICollectionViewCell() }

        cell.myImage.image = myFriend?.image
        cell.myNameLabel.text = myFriend?.name
    
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension FriendController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = Double(self.view.frame.size.width)
        let screenHeight = Double(self.view.frame.size.width)

        return CGSize(width: screenWidth - 20, height: screenHeight - 10)
    }
}
