//
//  MenuTableViewController.swift
//  HappySaleMenu
//
//  Created by Kirill Tsay on 03.05.2018.
//  Copyright © 2018 Kirill Tsay. All rights reserved.
//

import UIKit

class MenuTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    
    var menuItems = [Menu]()
    let role = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        if role {
            menuItems.append(Menu(image: #imageLiteral(resourceName: "1"), name: "КЛИЕНТЫ", id: "catalogView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "2"), name: "ОПЛАТА", id: "newsView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "3"), name: "ПРЕЙСКУРАНТ", id: "itemsView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "4"), name: "АКЦИИ", id: "platezhi"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "5"), name: "ОЦЕНКА", id: "historyView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "6"), name: "ЧАТ", id: "friendsView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "7"), name: "ВЫХОД", id: "changeCode"))
        } else {
            menuItems.append(Menu(image: #imageLiteral(resourceName: "2"), name: "ОПЛАТА", id: "catalogView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "1"), name: "ПРОФИЛЬ", id: "newsView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "8"), name: "ИСТОРИЯ", id: "itemsView"))
            menuItems.append(Menu(image: #imageLiteral(resourceName: "7"), name: "ВЫХОД", id: "platezhi"))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItems.count
    }

    
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myCellTableViewCell
        let current = menuItems[indexPath.row]
        cell.iconImage.image = current.image
        cell.nameLabel.text = current.name!
        cell.nameLabel.numberOfLines = 0
        cell.nameLabel.setLineSpacing(lineSpacing: 5.0)
        return cell
    }
 
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 230, height: 80))
//        let customLabel = UILabel(frame: CGRect(x: 19, y: 150, width: 222, height: 76))
//        customLabel.text = "Тех Поддержка \n +7 777 777 77 77 \n Support@HappySale.com"
//        customLabel.numberOfLines = 0
//        customLabel.font = UIFont.systemFont(ofSize: 14)
//        customLabel.setLineSpacing(lineSpacing: 5.0)
//        customLabel.textColor = UIColor.black.withAlphaComponent(0.5)
//
//        customView.addSubview(customLabel)
//
//        return customView
//    }


}

extension UILabel {
    
    func setLineSpacing(lineSpacing: CGFloat = 0.0, lineHeightMultiple: CGFloat = 0.0) {
        
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString:NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        
        // Line spacing attribute
        attributedString.addAttribute(NSAttributedStringKey.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        
        self.attributedText = attributedString
    }
}
