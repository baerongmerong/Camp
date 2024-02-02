//
//  File.swift
//  storyboard instargram
//
//  Created by Bae on 2/2/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {}
    
    @IBAction func showProfileVC(_ sender: Any) {
        
        let vc = ProfileViewControlViewController()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
