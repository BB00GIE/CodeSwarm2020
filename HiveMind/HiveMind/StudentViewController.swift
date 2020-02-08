//
//  StudentViewController.swift
//  HiveMind
//
//  Created by Brandon Elmore on 2/8/20.
//  Copyright © 2020 CodeSwarm. All rights reserved.
//

import UIKit
import Firebase

class StudentViewController: UIViewController {

   
    var i = 0
    @IBOutlet weak var complaintField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendComplaint(_ sender: Any) {
        let db = Firestore.firestore()
        let dataList = ["one","two","three","four","five"]
        
        db.collection("mrasamny@desu.edu").document(dataList[i]).setData([ "complaintList": complaintField.text ], merge: true)
        i += 1
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
