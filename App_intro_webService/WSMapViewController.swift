//
//  WSMapViewController.swift
//  App_intro_webService
//
//  Created by formador on 1/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit
import MapKit

class WSMapViewController: UIViewController {
    
    var latitudData : String?
    var longitudData : String?
    var direccionData : String?
    var codigoPostalData : String?
    
    @IBOutlet weak var myVistaMapaDeJSON: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitud = Double(latitudData!)
        let longitud = Double(longitudData!)
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitud!, longitude: longitud!), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        myVistaMapaDeJSON.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitud!, longitude: longitud!)
        annotation.title = direccionData
        annotation.subtitle = codigoPostalData
        myVistaMapaDeJSON.addAnnotation(annotation)
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
