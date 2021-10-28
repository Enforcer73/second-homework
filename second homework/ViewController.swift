//
//  ViewController.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 27.10.2021.
//

import UIKit

class ViewController: UIViewController, ViewControllerSutulDelegat {
    

    @IBOutlet weak var label: UILabel!
    
    func textSutul(text: String) {
        label.text = ("Сутулый передал привет... \(text)")
    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSutulVC" {
            if let destVc = segue.identifier as? ViewControllerSutul {
                destVc.text = "Хммм...меня терзнают смутные сомнения. Не хочешь сделать выбор заново?"
                destVc.delegate = self
            }
        }
    }
}

