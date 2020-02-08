//
//  ViewController.swift
//  HiveMind
//
//  Created by Brandon Elmore on 2/7/20.
//  Copyright © 2020 CodeSwarm. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var i = 0
    let db = Firestore.firestore()
    
    @IBOutlet weak var ComplaintLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    tableView.dataSource = self
        tableView.delegate = self as? UITableViewDelegate
  
             }
        
        
    
        
        
 
     

        
    }




extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dataList = ["one","two","three","four","five"]
        return dataList.count
    }
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ComplaintCell", for: indexPath) as! ComplaintCell
            var c = "boom"
    let dataList = ["one","two","three","four","five"]
           
           let docRef = db.collection("mrasamny@desu.edu").document(dataList[i])
           
           docRef.getDocument { (document, error) in
               if let document = document, document.exists {
                   
                   
                   let dataDescription = document.data()
                   
                  let CurrentComp = dataDescription as! [String: String]
                   
                let hi  =  CurrentComp["complaintList"]!
                   
                c = hi
               } else {
                   //print("Document does not exist")
               }
            }
            cell.hello.text = c as! String
                
            
            return cell
            
    }
}
    
    


