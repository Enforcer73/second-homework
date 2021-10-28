//
//  ViewControllerMimi.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerMimiDelegat: AnyObject {
    func textMimi(text: String)
}

class ViewControllerMimi: UIViewController, ViewControllerSutulDelegat {
    func textSutul(text: String) {
        label.text = "вжуууухххх...\(text)"
    }
    
    
    
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate : ViewControllerMimiDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction func buttonMimiBack(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textMimi(text: "гоу продолжим")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goMimiSutul" {
            if let destVc = segue.destination as? ViewControllerSutul {
                destVc.text = "вжууууух?"
                destVc.delegate = self
            }
        }
    }
}

