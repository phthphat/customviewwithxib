//
//  BaseViewXib.swift
//  MakeView
//
//  Created by Pham Lucas on 6/28/19.
//  Copyright © 2019 Pham Lucas. All rights reserved.
//

import Foundation
import UIKit

class BaseViewXib: UIView {
    //Đây là file giúp việc tạo customview bằng file xib
    ///Ưu điểm là tạo nhanh bằng Interfacebuildẻ, có thể tích hợp vào các file xib khác
    ///Nhược điểm là chỉ tạo được với kiểu UIVIew
    
    
    
    //Giờ chúng ta làm mẫu màn hình đăng nhập
    ///Gồm 2 view, mỗi view có 1 tiêu đề và 1 uitextfield
    ///Nếu như cách bình thường thì ta phải làm lại 2 lần
    ///Còn tạo bằng customview chúng ta chỉ cần tạo 1 lần và gán cho nó để dùng
    
    
    //CHúng ta tạo file view đó
    ///Vừa rồi ta tạo 1 file xib
    ///Ta tạo thêm 1 file.swift có tên y hệt file xib đó
    
    
    override var backgroundColor: UIColor? {
        didSet {
            view?.backgroundColor = backgroundColor
        }
    }
    
    private var view : UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    func loadViewFromNib() {
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView
        view?.frame = bounds
        addSubview(view ?? UIView())
        view?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        initView()
    }
    
    func initView() {}
}


