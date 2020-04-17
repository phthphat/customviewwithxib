//
//  LoginVC.swift
//  CustomViewiOSApp
//
//  Created by Lucas Pham on 4/17/20.
//  Copyright © 2020 phthphat. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var usernameView: TitleAndInput!
    
    
    @IBOutlet weak var passwordView: TitleAndInput!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ///Nayx chúng ta thấy file xib của mình là kiểu UIView
        ///Nên trong file xib của VC chúng ta chỉ cần thêm 1 UIView mẫu vào, rồi gán class điều khiển cho nó
        
        ///Ta thấy 2 view trống giờ đã có view bên trong :v hay ko?
        ///Ta vẫn có thể kéo biến vào như bình thường
        
        //Setup UI
        self.usernameView.setUpView(title: "Username")
        self.passwordView.setUpView(title: "Password")
        
        //Thêm một bước nhỏ nữa :v lấy text của 2 cái view đó để thực hiện c.việc đăng nhập
    }

    @IBAction func onTapLogin(_ sender: Any) {
        
        print("username \(usernameView.text)")
        print("password \(passwordView.text)")
        //OK
    }
}
