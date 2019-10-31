//
//  albumContenido.swift
//  Examen2
//
//  Created by Diego Mora on 10/17/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation
import UIKit

struct cancion{
    let tituloCancion: String
    let duracion: String
}


struct album{
    let titulo: String
    let año: String
    let cancion1: cancion
    let cancion2: cancion
    let cancion3: cancion
    let cancion4: cancion
    let cancion5: cancion
}
