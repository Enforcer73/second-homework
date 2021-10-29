//
//  ViewControllerCatEnd.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

class ViewControllerCatEnd: UIViewController {
    
    
    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func backToRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
