//
//  MessengerView.swift
//  messengerassignment
//
//  Created by Manvendu Pathak on 14/07/21.
//

import UIKit

class MessengerView: UITableViewController,UINavigationControllerDelegate{
 
    private var myTableView: UITableView!
    
    
    
    @objc override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    @objc(tableView:cellForRowAtIndexPath:) override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height

        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight ))
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
      
    //Creating name at the navigation bar.
    self.navigationItem.title = "Manvendu Pathak"
      
    //UITEXTVIEW
        
    let textView = UITextView(frame: CGRect(x: 0, y: 600, width: 300, height: 50))
    textView.contentInsetAdjustmentBehavior = .automatic
     
    textView.textColor = UIColor.black
    let myColor: UIColor = UIColor.blue
    textView.layer.borderWidth = 1.0
        textView.font = UIFont.init(name: "HelveticaNeue", size: 18)
    textView.layer.borderColor = myColor.cgColor
    textView.layer.cornerRadius  = 10
    self.view.addSubview(textView)
         
    //Create Button with image
    let image = UIImage(named: "sendButton")
    let button = UIButton()
    button.frame = CGRect(x: 322, y: 602, width: 50, height: 50)
    button.setBackgroundImage(image, for: UIControl.State.normal)
    self.view.addSubview(button)
   
  

    
    }
  
   

}
     
  
