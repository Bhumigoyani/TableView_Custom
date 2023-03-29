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
        let mark:String
        let grade:String
        let imageName:String
        
    }
    
    let data: [mycell] = [
        mycell(title: "Bhumi", mark: "10",grade: "A+", imageName: "student"),
        mycell(title: "Nitesh",mark: "50",grade: "B+", imageName: "student"),
        mycell(title: "Harshil", mark: "30",grade: "A", imageName: "student"),
        mycell(title: "Shailee", mark: "34",grade: "A+", imageName: "student"),
        mycell(title: "Ketul", mark: "50",grade: "A+++", imageName: "student")
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
        print("Selected \(data[indexPath.row].mark)")
        print("Selected \(data[indexPath.row].grade)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = data[indexPath.row]
        let cell = mytableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.cellImage.image = UIImage(named: content.imageName)
        cell.cellLabel.text = content.title
        cell.cellMarks.text = content.mark
        cell.cellGrade.text = content.grade
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}


