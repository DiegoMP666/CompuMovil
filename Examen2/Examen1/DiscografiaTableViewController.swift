//
//  DiscografiaTableViewController.swift
//  Examen2
//
//  Created by Diego Mora on 10/17/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class DiscografiaTableViewController: UITableViewController {
    var discosImage = [String]()
    let nombres = ["Valley of the Damned", "Sonic Firestorm", "Inhuman Rampage"]
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath! //DEL BUNDLE PRINCIPAL, DAME las rutas EL DIRECTORIO
        let items = try! fm.contentsOfDirectory(atPath: path) //DAME LOS CONTENIDOS DEL DIRECTORIO, devuelve un arreglo con todas las rutas de los contenidos del proyecto (referenciaS a los contenidos
        for item in items{
            if item.hasPrefix("df"){
                //agregar la imagen a la lista de imagenes
                //aislamos las imagenes del resto de los contenidos del directorio
                discosImage.append(item)
            }
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       // return discosImage.count
        return discosImage.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = nombres[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.imageView?.image = UIImage(named: discosImage[indexPath.row])
 
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //pregunta si puede del storyboard, hay una instancia con identificador detail y es tipo DetailViewCONTROLLER
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            //ya tiene vc la referencia a la imagen que debe poner
            vc.selectedAlbum = nombres[indexPath.row]
            vc.fotos = discosImage
            //cambio de vista para ver la imagen
            navigationController!.pushViewController(vc, animated: true)
            
        }
    }
    
    @IBAction func adiosVista(for segue: UIStoryboardSegue){
        
    }

}
