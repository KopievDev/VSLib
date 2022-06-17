//
//  ViewController.swift
//  Example
//
//  Created by Ivan Kopiev on 17.06.2022.
//

import UIKit
import VSLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = VSUser(firstName: "Bro", lastName: "Dabro") // init User
        let agent = VSAgent(account: "95453f64-b803-4495-abd9-9c785590f2fe",
                            token: "7157fb3c-268b-4cf9-9988-beb4d2370cda") // Init Agent
        let caller = VSCaller(user: user, agent: agent)
        caller.delegate = self
        caller.show(from: self)
    }
}

extension ViewController: VSCallerDelegate {
    
    func caller(didReceive data: [String : Any]?) {
        print(data?["name"] as? String ?? "-" )
    }
}
