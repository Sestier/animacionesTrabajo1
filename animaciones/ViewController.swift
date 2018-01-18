//
//  ViewController.swift
//  animaciones
//
//  Created by Maestro on 17/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwCuadroAzul: UIView!
    @IBOutlet weak var vwCuadroVerde: UIView!
    
    @IBOutlet weak var lblUsuario: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //vwCuadroAzul.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Al aparecer la UI se moverà 18 puntos a la derecha el cuadro azul
        //
        /*UIView.animate(withDuration: 3.0, animations: {
            self.vwCuadroAzul.center.x += 50
            self.vwCuadroAzul.center.y += 50
            
            self.vwCuadroAzul.backgroundColor = UIColor.lightGray
            self.vwCuadroAzul.alpha = 1
        })*/
        
        UIView.animate(withDuration: 2.5, delay: 1, options: [.repeat, .autoreverse, .curveEaseInOut], animations: {
            /*self.vwCuadroAzul.center.x += 50
            self.vwCuadroAzul.center.y += 50*/
            self.vwCuadroAzul.center = CGPoint(x: self.vwCuadroAzul.center.x + 50, y: self.vwCuadroAzul.center.y + 50)
            
            self.vwCuadroAzul.backgroundColor = UIColor.lightGray
            //self.vwCuadroAzul.alpha = 1
            self.vwCuadroAzul.transform = CGAffineTransform(rotationAngle: CGFloat(90.0 * (M_PI / 180.0)))
            self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 2, y: 2)
            
        }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

