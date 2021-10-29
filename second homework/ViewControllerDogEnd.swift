//
//  ViewControllerDogEnd.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerDogEndDelegat: AnyObject {
    func textEnd(text: String)
}

class ViewControllerDogEnd: UIViewController, ViewControllerSutulDelegat, ViewControllerDogEndDelegat {
    func textEnd(text: String) {
        label.text = "чуу"
    }
    
    func textSutul(text: String) {
        label.text = "куда пошёл?!"
    }

    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate : ViewControllerDogEndDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction private func backToRootDog(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textEnd(text: " продолжим бродить?")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backSutulVC" {
            if let destVC = segue.destination as? ViewControllerSutul {
                destVC.text = "чел создан для мучений ;)"
                destVC.delegate = self
            }
        }
    }
}
