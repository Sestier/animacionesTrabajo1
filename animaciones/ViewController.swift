//
//  ViewController.swift
//  animaciones
//
//  Created by Maestro on 17/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgSphinxCat: UIImageView!
    @IBOutlet weak var lblUsuario: UITextField!
    @IBOutlet weak var lblContra: UITextField!
    @IBOutlet weak var btnSingIn: UIButton!
    @IBOutlet weak var btnLogIn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        btnSingIn.alpha = 0
        btnLogIn.alpha = 0
        imgSphinxCat.center.y -= self.view.bounds.height
        lblUsuario.center.x -= self.view.bounds.width
        lblContra.center.x += self.view.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
        /*UIView.animate(withDuration: 3.0, animations: {
            self.vwCuadroAzul.center.x += 50
            self.vwCuadroAzul.center.y += 50
            
            self.vwCuadroAzul.backgroundColor = UIColor.lightGray
            self.vwCuadroAzul.alpha = 1
        })
        
        UIView.animate(withDuration: 2.5, delay: 1, options: [.repeat, .autoreverse, .curveEaseInOut], animations: {
            self.vwCuadroAzul.center.x += 50
            self.vwCuadroAzul.center.y += 50*/
            /*self.vwCuadroAzul.center = CGPoint(x: self.vwCuadroAzul.center.x + 50, y: self.vwCuadroAzul.center.y + 50)
            
            self.vwCuadroAzul.backgroundColor = UIColor.lightGray
            //self.vwCuadroAzul.alpha = 1
            self.vwCuadroAzul.transform = CGAffineTransform(rotationAngle: CGFloat(90.0 * (M_PI / 180.0)))
            self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 2, y: 2)
            
        }, completion: nil)*/
        
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
        
            self.imgSphinxCat.center.y += self.view.bounds.height
            self.imgSphinxCat.transform = CGAffineTransform(rotationAngle: CGFloat(180 * (M_PI / 180.0)))
        
        }, completion: nil)
    
        UIView.animate(withDuration: 1, delay: 1, options: [], animations: {
            
            self.lblUsuario.center.x += self.view.bounds.width
            
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 2, options: [], animations: {
            
            self.lblContra.center.x -= self.view.bounds.width
            
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 3, options: [.curveEaseInOut], animations: {
            self.btnSingIn.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 3, options: [.curveEaseInOut], animations: {
            self.btnLogIn.alpha = 1
        }, completion: nil)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

