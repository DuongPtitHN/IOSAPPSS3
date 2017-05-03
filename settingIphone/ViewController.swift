//
//  ViewController.swift
//  settingIphone
//
//  Created by Admin on 5/3/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

struct cellData {
    let text : String!
    let image : UIImage!
}
let headerView = UIView()

let footerView = UIView()

var arrayOfCellData = [cellData]()

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [
            
            cellData(text:"Ronaldo", image: #imageLiteral(resourceName: "ro")),
            cellData(text: "James", image: #imageLiteral(resourceName: "james")),
            cellData(text: "Ramos", image: #imageLiteral(resourceName: "ramos")),
            cellData(text: "Marcelo", image: #imageLiteral(resourceName: "marcelo")),
            cellData(text: "Kroos", image: #imageLiteral(resourceName: "kr"))
        ]
        
        headerView.backgroundColor = UIColor.blue
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 20)
        footerView.backgroundColor = UIColor.blue
        footerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 20)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (arrayOfCellData.count)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.myLb.text = arrayOfCellData[indexPath.row].text
        cell.myImage.image = arrayOfCellData[indexPath.row].image
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
   
}

