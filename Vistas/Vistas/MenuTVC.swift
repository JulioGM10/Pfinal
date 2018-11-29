//
//  MenuTVC.swift
//  Vistas
//
//  Created by Macbook on 11/28/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"),object: nil)
        
        switch indexPath.row {
       
            case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowPerfil"),object: nil)
            case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowComidaYUbicacion"),object: nil)
            case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowHistorialDePedidos"),object: nil)
            case 3: NotificationCenter.default.post(name: NSNotification.Name("ShowCerrarSesion"),object: nil)
        default: break
        }
    }
    

   

}
