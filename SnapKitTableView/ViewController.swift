//
//  ViewController.swift
//  SnapKitTableView
//
//  Created by Kirill Drozdov on 08.01.2022.
//

import UIKit


var KSize = UIScreen.main.bounds
var dataTable:UITableView!

var itemstringArr = ["Курица","Вода","Сахар","Соль","Кола","Яйцо"]

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Еда"
     makeTable()
    
    }
    
    func makeTable()
    {
        
        dataTable=UITableView.init(frame: CGRect(x: 0, y: 0, width: KSize.width, height: KSize.height-64), style:.grouped)
        dataTable.delegate = self
        dataTable.dataSource = self
        self.view.addSubview(dataTable)
        
         //header для таблицы
        let  headerView:UIView = UIView(frame:CGRect(x:0,y:0,width:UIScreen.main.bounds.width,height:60))
        let  label = UILabel(frame:CGRect(x:20,y:20,width:180,height:30))
        label.text = "Еда"
        label.textColor = UIColor.orange
        label.font = .boldSystemFont(ofSize: 40)
        headerView.addSubview(label)
        headerView.backgroundColor = UIColor.blue
        dataTable?.tableHeaderView = headerView
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemstringArr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let identifier = "identifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: identifier)
            
        }
        cell?.textLabel?.text = itemstringArr[indexPath.row]
        cell?.detailTextLabel?.text = "прыгнуть туда"
        cell?.detailTextLabel?.font = UIFont .systemFont(ofSize: CGFloat(13))
        cell?.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell!
        
    }
    

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath.row = \(indexPath.row)")
        
        let push = PullView()
        
        self.present(push, animated: true, completion: nil)
    }
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("indexPath.row = DeselectRow\(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.init(rawValue: 1)!
    }
    
    
}

