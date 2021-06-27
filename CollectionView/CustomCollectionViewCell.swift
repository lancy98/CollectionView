//
//  CustomCollectionViewCell.swift
//  CollectionView
//
//  Created by Lancy Norbert Fernandes on 27/06/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var imageView: UIImageView!
  
  override func awakeFromNib() {
    layer.cornerRadius = 20.0
    layer.borderColor = UIColor(named: "AccentColor")?.cgColor
    layer.borderWidth = 2.0
  }

}
