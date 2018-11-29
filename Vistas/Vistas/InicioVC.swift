//
//  InicioVC.swift
//  Vistas
//
//  Created by Macbook on 11/28/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class InicioVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(showPerfil), name: NSNotification.Name("ShowPerfil"), object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(showComidaYUbicacion), name: NSNotification.Name("ShowComidaYUbicacion"), object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(showHistorialDePedidos), name: NSNotification.Name("ShowHistorialDePedidos"), object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(showCerrarSesion), name: NSNotification.Name("ShowCerrarSesion"), object: nil)

    }
    
    @objc func showPerfil(){
        performSegue(withIdentifier: "ShowPerfil", sender: nil)
    }
    @objc func showComidaYUbicacion(){
        performSegue(withIdentifier: "ShowComidaYUbicacion", sender: nil)
    }
    @objc func showHistorialDePedidos(){
        performSegue(withIdentifier: "ShowHistorialDePedidos", sender: nil)
    }
    @objc func showCerrarSesion(){
        performSegue(withIdentifier: "ShowCerrarSesion", sender: nil)
    }
    
    @IBAction func Opciones(){
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

   

}
