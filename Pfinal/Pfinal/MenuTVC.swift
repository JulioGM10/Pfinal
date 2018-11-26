//
//  MenuTVC.swift
//  Pfinal
//
//  Created by macbook on 11/26/18.
//  Copyright © 2018 brett,aaron. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"),object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("Inicio"),object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("Perfil"),object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ComidaYUbicacion"),object: nil)
        case 3: NotificationCenter.default.post(name: NSNotification.Name("HistorialDeP"), object: nil)
        case 4: NotificationCenter.default.post(name: NSNotification.Name("CerrarSesion"),object: nil)
        default: break
        }
    }

    
     


}
