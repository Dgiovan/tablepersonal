//
//  ViewController.swift
//  TableCustomCell
//
//  Created by Josue J Maqueda Flores on 3/9/19.
//  Copyright © 2019 Josue J Maqueda Flores. All rights reserved.
//

import UIKit

struct MyData
{
    var desc:String
    var imageName:String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    private var infoArray:[MyData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        infoArray.append(MyData(desc: "Descripcion 1", imageName: "img_1"))
        infoArray.append(MyData(desc: "Descripcion 2", imageName: "img_1"))
        infoArray.append(MyData(desc: "Descripcion 3", imageName: "img_1"))
        infoArray.append(MyData(desc: "Descripcion 4", imageName: "img_1"))
        //
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return infoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myIDCell", for: indexPath) as! MyCustomCell
        let myData = infoArray[indexPath.row]
        cell.descLbl.text =  myData.desc
        cell.miImagen.image = UIImage(named: myData.imageName)
        //
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 70
    }
    

}

