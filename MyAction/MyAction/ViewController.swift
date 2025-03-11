//
//  ViewController.swift
//  MyAction
//
//  Created by 허성필 on 3/4/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didTapMyButton(_ sender: Any) {
        print("배경 색상을 노란색으로 바꿀게요!")
        view.backgroundColor = .yellow
        print("helloLabel의 text를 바꿀게요!")
        helloLabel.text = "Hello Seongpil"
    }
    
}

