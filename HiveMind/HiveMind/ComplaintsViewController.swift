//
//  ComplaintsViewController.swift
//  HiveMind
//
//  Created by Evan Timko on 2/8/20.
//  Copyright © 2020 CodeSwarm. All rights reserved.
//

import UIKit
import Firebase

class ComplaintsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var i = 0
    let db = Firestore.firestore()
    
    
    @IBOutlet weak var ComplaintLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComplaintCell", for: indexPath) as! ComplaintCell
//        var c = "apple"
        
        let docRef = db.collection("mrasamny@desu.edu").document(dataList[i])
        
//        docRef.getDocument { (document, error) in
//            if let document = document, document.exists {
//
//                let dataDescription = document.data()
//
//                let CurrentComp = dataDescription as! [String: String]
//
//                let hi  =  CurrentComp["complaintList"]!
//
//                c = hi
//            } else {
//                //print("Document does not exist")
//            }
//        }
        
        cell.hello.text = dataList[indexPath.row]
        
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    
        
        // Do any additional setup after loading the view.
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
