//
//  CardViewController.swift
//  MiniProject1
//
//  Created by 허성필 on 3/6/25.
//

import UIKit

class CardViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
// 150 216   326 548    163 / 274
}

extension UICollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
