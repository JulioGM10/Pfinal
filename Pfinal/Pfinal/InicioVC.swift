//
//  InicioVC.swift
//  Pfinal
//
//  Created by macbook on 11/26/18.
//  Copyright © 2018 brett,aaron. All rights reserved.
//

import UIKit

class InicioVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showInicio), name:  NSNotification.Name("Inicio"), object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(showPerfil), name: NSNotification.Name("Perfil"), object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(showComidaYUbicacion), name: NSNotification.Name("ComidaYUbicacion"), object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(showHistorialDeP), name: NSNotification.Name("HistorialDeP"), object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(showCerrarSesion), name: NSNotification.Name("CerraSesion"), object: nil)
        
    }
    
    @objc func showInicio(){
        performSegue(withIdentifier: "ShowInicio", sender: nil)
    }
    
    @objc func showPerfil(){
        performSegue(withIdentifier: "ShowPerfil", sender: nil)

    }
    
    @objc func showComidaYUbicacion(){
        performSegue(withIdentifier: "ShowComidaYUbicacion", sender: nil)
    }
    
    @objc func showHistorialDeP(){
        performSegue(withIdentifier: "ShowHistorialDeP", sender: nil)
    }
    
    @objc func showCerrarSesion(){
        performSegue(withIdentifier: "ShowCerrar Sesion", sender: nil)
    }
    
   

    @IBAction func opciones() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    


}
