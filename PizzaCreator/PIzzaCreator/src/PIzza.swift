//
//  PIzza.swift
//  PIzzaCreator
//
//  Created by maleficarum on 10/11/15.
//  Copyright © 2015 maleficarum. All rights reserved.
//

import UIKit

struct Pizza {
    var tamano: String?
    var masa: String?
    var queso: String?
    var ingrediente: String?
    
    init(tamano: String?, masa: String?, queso: String?, ingrediente:String?) {
        self.tamano = tamano
        self.masa = masa
        self.queso = queso
        self.ingrediente = ingrediente
    }
}
