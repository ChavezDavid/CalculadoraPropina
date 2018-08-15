//
//  ViewController.swift
//  CalculadoraPropina
//
//  Created by Maestro on 14/08/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var porcentaje = 0.0
    var precio = 0.0
    var subtotal = 0.0
    var total = 0.0
    
    @IBOutlet weak var sldPorcentaje: UISlider!
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var lblSubtotal: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doSlidePorcentaje(sender: AnyObject) {
        porcentaje = Double(sldPorcentaje.value)
        let precio = Double(txtPrecio.text!)
        subtotal = precio! * porcentaje / 100
        
        lblPropina.text = String(porcentaje)
        lblSubtotal.text = String(subtotal)
        lblTotal.text = String(precio! + subtotal)
    }

}

