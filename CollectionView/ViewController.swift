//
//  ViewController.swift
//  CollectionView
//
//  Created by Lancy Norbert Fernandes on 26/06/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  
  let collectionViewData = [
    "heart.fill",
    "leaf.fill",
    "play.fill",
    "moon.fill",
    "clock.fill",
    "flame.fill",
    "tortoise.fill",
    "eye.fill",
    "house.fill",
    "stop.fill",
    "person.fill",
    "bandage.fill",
    "cloud.fill",
    "eyes.inverse",
    "plus.circle.fill",
    "mustache.fill",
    "smoke.fill",
    "mouth.fill",
    "cross.case.fill",
    "cross.fill",
    "number.circle.fill",
    "cloud.drizzle.fill",
    "cloud.rain.fill",
    "sun.min.fill",
    "bolt.circle.fill",
    "sun.max.fill",
    "sun.dust.fill",
    "square.and.arrow.up.fill",
    "trash.circle.fill",
    "folder.circle.fill",
    "paperplane.circle.fill",
    "circle.grid.cross.fill"
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    collectionView.dataSource = self
    collectionView.collectionViewLayout = createFlowLayout()
  }
  
  private func createFlowLayout() -> UICollectionViewCompositionalLayout {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0/3.0),
                                         heightDimension: .fractionalHeight(1.0))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets = NSDirectionalEdgeInsets(top: 10.0, leading: 10.0, bottom: 10.0, trailing: 10.0)

    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                           heightDimension: .fractionalHeight(0.2))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                     subitems: [item])

    let section = NSCollectionLayoutSection(group: group)

    let layout = UICollectionViewCompositionalLayout(section: section)
    return layout
  }
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return collectionViewData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "custom cell", for: indexPath) as? CustomCollectionViewCell else {
      fatalError()
    }
    
    let symbol = collectionViewData[indexPath.item]
    cell.imageView.image = UIImage(systemName: symbol)
    cell.label.text = symbol
    
    return cell
  }
}
