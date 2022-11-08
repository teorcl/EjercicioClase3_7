//
//  TaskSevenViewController.swift
//  EjercicioClase3_7
//
//  Created by TEO on 8/11/22.
//

import UIKit

class TaskSevenViewController: UIViewController {
    
    struct Const{
        static let startCounter = 0
        static let mazda = "Mazda"
        static let ferrari = "Ferrari"
        static let ford = "Ford"
        static let ferrariModel = "ferrariEnzo"
        static let fordModel = "fordGT"
        static let mazdaModel = "mazda3"
        
    }
    
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var modelImageView: UIImageView!
    
    var counter = Const.startCounter
    let companies = [Const.mazda,Const.ferrari,Const.ford]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showCompanyLabel()
        showModelImageView()
    }

    @IBAction func nextButtonPressed(_ sender: Any) {
        play()
    }
    
    func updateCounter(){
        if (counter >= companies.count-1){
            counter = Const.startCounter
        }else{
            counter += 1
        }
    }
    
    func showCompanyLabel(){
        companyLabel.text = "\(companies[counter])"
    }
    
    func showModelImageView(){
        switch counter {
        case 0:
            modelImageView.image = UIImage(named: Const.mazdaModel)
            break
        case 1:
            modelImageView.image = UIImage(named: Const.ferrariModel)
            break
        case 2:
            modelImageView.image = UIImage(named: Const.fordModel)
            break
        default:
            print("")
        }
    }
    
    func play(){
        updateCounter()
        showCompanyLabel()
        showModelImageView()
    }

}

