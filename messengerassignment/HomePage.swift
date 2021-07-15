//
//  HomePage.swift
//  messengerassignment
//
//  Created by Manvendu Pathak on 14/07/21.
//

import UIKit

class HomePage: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        view.backgroundColor = .white
        //UILABLE
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200 ,height: 200))
        label.center = CGPoint(x: 200, y: 110)
        label.textAlignment = NSTextAlignment.center
        label.text = "Assignment-1"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        label.textColor = UIColor.blue
        self.view.addSubview(label)
        
        
        
        // ImageView with Image
          let imageV = UIImageView(frame: CGRect(x: 50, y: 100, width: 100, height: 100))
          imageV.center = view.center
          imageV.image = UIImage(named: "messengerLogo", in: Bundle(for: type(of: self)), compatibleWith: nil)
          view.addSubview(imageV)

          // Scaling
          UIView.animate(withDuration: 3.0, animations: {
              imageV.transform = CGAffineTransform(scaleX: 2, y: 2)
          })
    
        //Button
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 95, y: 700, width: 200, height: 50)
        button.setTitle("Let's Start", for: UIControl.State.normal)
        
        button.backgroundColor = UIColor.blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        button.addTarget(self, action: #selector(buttonpressed), for: .touchUpInside)
        self.view.addSubview(button)
        
          
}
    
    @objc func buttonpressed(){
        let newViewController = MessengerView()
        self.navigationController?.pushViewController(newViewController, animated: true)

    }
}

    
   

   


