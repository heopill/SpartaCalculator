//
//  ViewController.swift
//  MiniProject1
//
//  Created by 허성필 on 3/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "backgroundImage.png")
        imgView.image = image
    }

}

