//
//  ViewController.swift
//  My TOdo List
//
//  Created by Bae on 12/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
      
    let tableView = UITableView()
    let data = ["Item 1", "Item 2", "Item 3"]
      
    override func viewDidLoad() {
        super.viewDidLoad()
          
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
    }
      
    // UITableViewDataSource
        
        /* [필수] 테이블의 행 수를 보고합니다. */
        // section: 테이블뷰의 section을 나타내는 식별자 입니다. 이를 바탕으로 해당 섹션의 count를 반환합니다.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
        /* [필수] 테이블의 각 행에 대한 셀을 제공합니다. */
        // indexPath: 테이블뷰에서 Row(행)을 찾는 경로입니다. 이를 바탕으로 적절한 cell을 반환합니다.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
      
    // UITableViewDelegate
        
        /* 행이 선택되었을 때 호출 */
        // indexPath: 테이블뷰에서 선택된 Row(행)을 찾는 경로입니다. 이를 바탕으로 어떤 행이 선택되었는지 파악할 수 있습니다.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected: \(data[indexPath.row])")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

