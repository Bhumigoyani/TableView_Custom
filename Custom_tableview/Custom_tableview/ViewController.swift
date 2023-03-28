//
//  ViewController.swift
//  Custom_tableview
//
//  Created by Goyani Bhumi Nitesh on 2023-03-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytableview: UITableView!
    
    struct mycell{
        let title:String
        let imageName:String
        
    }
    
    let data: [mycell] = [
        mycell(title: "Item1", imageName: "DemoImage"),
        mycell(title: "Item2", imageName: "DemoImage"),
        mycell(title: "Item3", imageName: "DemoImage"),
        mycell(title: "Item4", imageName: "DemoImage"),
        mycell(title: "Item5", imageName: "DemoImage"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mytableview.delegate = self
        mytableview.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected \(data[indexPath.row].title)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = data[indexPath.row]
        let cell = mytableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.cellImage.image = UIImage(named: content.imageName)
        cell.cellLabel.text = content.title
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) -> CGFloat {
      return 140
    }
}


