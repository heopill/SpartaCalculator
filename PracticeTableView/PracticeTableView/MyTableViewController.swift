//
//  MyTableViewController.swift
//  PracticeTableView
//
//  Created by 허성필 on 3/5/25.
//

import UIKit

class MyTableViewController: UIViewController{
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var selectedLabel: UILabel!
    
    let characters: [String] = ["Mario", "Louiz", "Peach", "Daizy", "Yoshi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .blue
        
        // myTableView를 MyTableViewController에게 위임하다, 연결되다
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}


extension MyTableViewController: UITableViewDelegate, UITableViewDataSource  {
        
        // 테이블 뷰의 몇개의 줄이 들어갈건지
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return characters.count // 배열의 크기만큼 설정
        }
        
        // 각 셀마다 어떤 셀이 들어갈건지
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
            cell.textLabel?.text = characters[indexPath.row]
            return cell
        }
    
        // 특정 셀을 클릭했을 때
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedCharacter = characters[indexPath.row]
            selectedLabel.text = "Selected : " + selectedCharacter
        }
}
