//
//  Menu.swift
//  HappySaleMenu
//
//  Created by Kirill Tsay on 03.05.2018.
//  Copyright © 2018 Kirill Tsay. All rights reserved.
//

import Foundation
class Menu : NSObject {
    var image : UIImage
    var name : String?
    var id: String?
    
    init(image : UIImage, name : String, id : String) {
        self.image = image
        self.name = name
        self.id = id
    }
}
