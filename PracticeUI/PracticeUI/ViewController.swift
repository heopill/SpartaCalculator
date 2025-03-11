//
//  ViewController.swift
//  PracticeUI
//
//  Created by 허성필 on 3/5/25.
//

import UIKit

struct Family {
    let myName: String
    let bestFriendName: String
    let nextFriendName: String
}

class ViewController: UIViewController {

    let friendNames: [String] = ["Henry", "Jay", "Louis"]
    let koreanNames: [String: String] = ["Henry" : "헨리",
                                         "Jay" : "제이" ,
                                         "Louis" : "루이스"]
    var count: Int = 0
    
    let friend = Family(myName: "Henry",
                        bestFriendName: "Jay",
                        nextFriendName: "Louis")
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapButton(_ sender: Any) {
//        nameLabel.text = friendNames[0]
//        bestFriendNameLabel.text = friendNames[1]
//        nextFriendNameLabel.text = friendNames[2]
        
        nameLabel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
       
    }
    
}

 
