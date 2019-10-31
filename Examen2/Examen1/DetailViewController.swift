//
//  DetailViewController.swift
//  Examen2
//
//  Created by Diego Mora on 10/17/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var año: UILabel!
    @IBOutlet weak var song1: UILabel!
    @IBOutlet weak var song2: UILabel!
    @IBOutlet weak var song3: UILabel!
    @IBOutlet weak var song4: UILabel!
    @IBOutlet weak var song5: UILabel!
    
    @IBOutlet weak var duracion1: UILabel!
    @IBOutlet weak var duracion2: UILabel!
    @IBOutlet weak var duracion3: UILabel!
    @IBOutlet weak var duracion4: UILabel!
    @IBOutlet weak var duracion5: UILabel!
    

    
    var selectedAlbum: String!
    var fotos = [String]()
/*    let boton: UIButton = {
        var barButton = UIButton
        return barButton
    }()*/
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let canciones = [
            cancion(tituloCancion: "Valley of the Damned", duracion: "7:12"),
            cancion(tituloCancion: "Black Fire ", duracion: "5:47"),
            cancion(tituloCancion: "Black Winter Night ", duracion: "6:30"),
            cancion(tituloCancion: "Starfire", duracion: "5:54"),
            cancion(tituloCancion: "Disciples of Babylon ", duracion: "7:17"),
            cancion(tituloCancion: "My Spirit Will Go On", duracion: "7:19"),
            cancion(tituloCancion: "Fury of the Storm ", duracion: "6:46"),
            cancion(tituloCancion: "Fields of Despair", duracion: "5:25"),
            cancion(tituloCancion: "Prepare for War", duracion: "6:15"),
            cancion(tituloCancion: "Once in a Lifetime", duracion: "7:46"),
            cancion(tituloCancion: "Through the fire and flames", duracion: "7:21"),
            cancion(tituloCancion: "Revolution Deathsquad", duracion: "7:51"),
            cancion(tituloCancion: "Operation Ground and Pound", duracion: "7:43"),
            cancion(tituloCancion: "Body Breakdown", duracion: "6:57"),
            cancion(tituloCancion: "Cry for Eternity", duracion: "7:17")
        ]
        
        let albumes = [
            album(titulo: "Valley of the Damned", año: "2002", cancion1: canciones[0], cancion2: canciones[1], cancion3: canciones[2], cancion4: canciones[3], cancion5: canciones[4]),
            album(titulo: "Sonic Firestorm", año: "2004", cancion1: canciones[5], cancion2: canciones[6], cancion3: canciones[7], cancion4: canciones[8], cancion5: canciones[9]),
            album(titulo: "Inhuman Rampage", año: "2006", cancion1: canciones[10], cancion2: canciones[11], cancion3: canciones[12], cancion4: canciones[13], cancion5: canciones[14])
        ]
        
        navigationItem.largeTitleDisplayMode = .never
        title = selectedAlbum
        
        if selectedAlbum == albumes[0].titulo{
            titulo.text = albumes[0].titulo
            año.text = albumes[0].año
            song1.text = albumes[0].cancion1.tituloCancion
            duracion1.text = albumes[0].cancion1.duracion
            song2.text = albumes[1].cancion2.tituloCancion
            duracion2.text = albumes[1].cancion2.duracion
            song3.text = albumes[0].cancion3.tituloCancion
            duracion3.text = albumes[0].cancion3.duracion
            song4.text = albumes[0].cancion4.tituloCancion
            duracion4.text = albumes[0].cancion4.duracion
            song5.text = albumes[0].cancion5.tituloCancion
            duracion5.text = albumes[0].cancion5.duracion
            foto.image = UIImage(named: fotos[0])
        }else if selectedAlbum == albumes[1].titulo{
            titulo.text = albumes[1].titulo
            año.text = albumes[1].año
            song1.text = albumes[1].cancion1.tituloCancion
            duracion1.text = albumes[1].cancion1.duracion
            song2.text = albumes[1].cancion2.tituloCancion
            duracion2.text = albumes[1].cancion2.duracion
            song3.text = albumes[1].cancion3.tituloCancion
            duracion3.text = albumes[1].cancion3.duracion
            song4.text = albumes[1].cancion4.tituloCancion
            duracion4.text = albumes[1].cancion4.duracion
            song5.text = albumes[1].cancion5.tituloCancion
            duracion5.text = albumes[1].cancion5.duracion
            foto.image = UIImage(named: fotos[1])
        }else if selectedAlbum == albumes[2].titulo{
            titulo.text = albumes[2].titulo
            año.text = albumes[2].año
            song1.text = albumes[2].cancion1.tituloCancion
            duracion1.text = albumes[2].cancion1.duracion
            song2.text = albumes[2].cancion2.tituloCancion
            duracion2.text = albumes[2].cancion2.duracion
            song3.text = albumes[2].cancion3.tituloCancion
            duracion3.text = albumes[2].cancion3.duracion
            song4.text = albumes[2].cancion4.tituloCancion
            duracion4.text = albumes[2].cancion4.duracion
            song5.text = albumes[2].cancion5.tituloCancion
            duracion5.text = albumes[2].cancion5.duracion
            foto.image = UIImage(named: fotos[2])
        }
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(presentInfo))
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func presentInfo(){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "infoView") {
            //cambio de vista para ver la imagen
            navigationController!.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func adiosVista(for segue: UIStoryboardSegue){
        
    }

}
