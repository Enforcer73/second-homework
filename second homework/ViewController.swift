//
//  ViewController.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 27.10.2021.
//

import UIKit

class ViewController: UIViewController, ViewControllerSutulDelegat, ViewControllerMimiDelegat {
    
    
    
    @IBOutlet private weak var label: UILabel!
    
    
    func textSutul(text: String) {
        label.text = "Сутулый передал привет... \(text)"
    }
      
    func textMimi(text: String) {
        label.text = "Не бойся... \(text)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObservers()
    }
    
    func createObservers() {
        let name = NSNotification.Name("Final Root")
        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name: name, object: nil)
    }

    @objc func onDidReceiveData(_ notification: Notification) {
        if let data = notification.userInfo as? [String: String] {
            let value = data["root"]
            label.text = value
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSutulVC" {
            if let destVc = segue.destination as? ViewControllerSutul {
                destVc.text = "Хммм...меня терзнают смутные сомнения. Не хочешь сделать обдуманный выбор?"
                destVc.delegate = self
            }
        }
        
        if segue.identifier == "goMimiVC"  {
            if let destVc = segue.destination as? ViewControllerMimi {
                    destVc.text = "Хороооош! Пошёл мими путём)"
                    destVc.delegate = self
            }
        }
    }
}

