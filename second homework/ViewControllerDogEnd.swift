//
//  ViewControllerDogEnd.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerDogEndDelegat: AnyObject {
    func textEndDog(text: String)
}

class ViewControllerDogEnd: UIViewController, ViewControllerSutulDelegat {
    

    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate : ViewControllerDogEndDelegat?
    
    
    func textSutul(text: String) {
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction private func backToRootDog(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        let name = NSNotification.Name("Final Root")
        let data = ["root":"Вернул данные с endDogVC через NotificationCenter"]
        NotificationCenter.default.post(name: name, object: self, userInfo: data)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backSutulVC" {
            if let destVC = segue.destination as? ViewControllerSutul {
                destVC.text = "человек создан, что бы познавать и удивлятся 🎉 а остальное тлен"
                destVC.delegate = self
            }
        }
    }
}
