//
//  TitleAndInput.swift
//  CustomViewiOSApp
//
//  Created by Lucas Pham on 4/17/20.
//  Copyright © 2020 phthphat. All rights reserved.
//

import Foundation
import UIKit

///Tạo class với tên y hệt, kế thừa file mẫu này

///Gán class điều khiển cho file xib
///Giờ chúng ta làm view cho nó thôi
///Kéo các element vào như bình thường


class TitleAndInput: BaseViewXib {
    
    ///Lỗi ngớ ngẩn xảy ra :v tôi ghét xib
    
    @IBOutlet weak var titleLb: UILabel!
    
    
    @IBOutlet weak var inputTf: UITextField!
    
    override func initView() {
        ///Đây là chỗ cấu hình cho view
        
        
    }
    
    ///Giờ mình sẽ tích hợp view này vào viewcontroller lớn
    ///Mỗi view khi xuất hiện đều có title riêng của nó, việc mình là set 1 hàm cấu hình UI thôi
    
    func setUpView(title: String) {
        self.titleLb.text = title
    }
    
    ///Biến để xuất text của 1 cái view
    var text: String {
        return self.inputTf.text ?? ""
    }
}
