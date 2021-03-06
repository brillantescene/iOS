//
//  HoriNrrwCVCell.swift
//  NestedCollectionView
//
//  Created by ✨EUGENE✨ on 2021/04/19.
//

import UIKit

class HoriNrrwCVCell: UICollectionViewCell {

    static let identifier = "HoriNrrwCVCell"
    let horizonInset: CGFloat = 15
    let lineSpacing: CGFloat = 20
    @IBOutlet weak var innerCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let collectionViewNrrwNib = UINib(nibName: "NrrwCVCell", bundle: nil)
        innerCollectionView.register(collectionViewNrrwNib, forCellWithReuseIdentifier: "NrrwCVCell")
        innerCollectionView.dataSource = self
        innerCollectionView.delegate = self
    }

}
extension HoriNrrwCVCell: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NrrwCVCell.identifier, for: indexPath) as? NrrwCVCell else {
            return UICollectionViewCell()
        }
            return cell
    }
    
}

extension HoriNrrwCVCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = collectionView.frame.height
//        let cellWidth = (collectionView.frame.width - horizonInset) / 2
        let cellWidth = collectionView.frame.width / 3
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: horizonInset, bottom: 0, right: horizonInset) }
}
