//
//  ViewController.swift
//  TableViewExample
//
//  Created by Horacio Garza on 16/09/16.
//  Copyright © 2016 HGarz Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    /*
        Explicación:
     
            Ira men :v, 
     
            Primero debes de agregar el TableView desde el StoryBoard... El TableView, NO el UITableViewController, porque ese es un controlador y no la tabla en sí, ponlo del tamaño que gustes y ponle las constraints necesarias
     
            Segundo: Abre el utility area (el lateral derecho), después da click en la Table View y vete a la ultima opción, ahí apareceran el datasource y el delegates, ambos sin soltar el click selecciona el view controller (el icono amarillo)
     
            Tercero: Vete a esta clase (ViewController) e implementa el UITableViewDelegate y UITableViewDataSource
     
     
            Cuarto:
     
                - Debes implementar el método #2 (marcado en esta clase), si te das cuenta, debes de regresar un valor entero y ese valor entero será el total de las celdas que tendrá tu tabla
     
                - El Método #3 es en el cual regresaras qué es lo que tendrá la celda, es decir si tendrá texto o imagen u otra cosa; esto ya está algo interesante si te das cuenta, ya que esto funciona de esta manera
     
                    Se inicia el ViewController y entra en un bucle:
                        
                        METODO #2        ->    METODO #3
     
                        Pone la celda 1  -> abre el método #2 
                        Pone la celda 2 -> abre el método #2
                        Pone la celda 3 -> abre el método #2
                        Pone la celda 4 -> abre el método #2
                        Pone la celda 5 -> abre el método #2
                        ....... ETC.
     
                - El método #1 es para tirar crema, si aún no llegas a los segues, ignoralo ntp
                - Hay otro ejemplo en mi GitHub acerca de algo parecido, lo puedes checar... claro tiene cosas mas avanzadas pero así de das cuenta de todo lo demás, checa esos métodos de la tableview
                
     
                https://github.com/horaciogarza/LoLAPI-JSONRequestSample
     
     */
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as? SecondViewController
        let number = sender as! Int
        vc?.number = number
    
    }
    
    
    
    //MARK: Table View
    //1
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("Click en la celda #\(indexPath.row.description)")
        performSegueWithIdentifier("nextScreen", sender: indexPath.row)
        
    }
    
    //2
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    //3
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "A nu ma soi el #\(indexPath.row.description)"
        
        return cell
    }


}

