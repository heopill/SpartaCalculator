//
//  ViewController.swift
//  MissionTableView
//
//  Created by 허성필 on 3/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var appendButton: UIButton!
    
    var fruits: [String] = ["Apple", "Banana", "Grape"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    @IBAction func appendButtonClick(_ sender: Any) {
        fruits.append(String(self.textField.text!))
        self.textField.text = ""
        self.myTableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
            cell.textLabel?.text = fruits[indexPath.row]
            return cell
    }
    
    
}
