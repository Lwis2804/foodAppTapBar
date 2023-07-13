//
//  LoginTabViewController.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 07/07/23.
//

import UIKit

class LoginTabViewController: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var imageLogin: UIImageView!
    @IBOutlet weak var welcomeLblLogin: UILabel!
    @IBOutlet weak var backgroundLogin: UIView!
    @IBOutlet weak var userTxtLogin: UITextField!{
        didSet{ self.userTxtLogin.delegate = self }
    }
    @IBOutlet weak var passTxtLogin: UITextField!{
        didSet{ self.passTxtLogin.delegate = self }
    }
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblLogin1: UILabel!
    
    
    
    
    //MARK: - VARIABLES
    let arrUsers: [String] = ["Luis28", "PaseUd0", "Permiso02"]
    let arrPassW: [String] = ["pass01","pass02","pass03"]
    var MyUser: String = ""
    var MyPass: String = ""
    
    
    
    
    

    //MARK: - LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         self.userTxtLogin.becomeFirstResponder()
    }
    
    
    
    
    //MARK: - FUNCTIONS
    
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
        let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    //MARK: - VALIDATIONS
    
    func validaCampoTx(EnMiBase usrs: [String], YDato nom: String) -> Bool {
        if usrs.contains(nom){
            return true
        }else{
            return false
        }
    }
    


    //MARK: - ACTIONS

    @IBAction func btnStar(_ sender: Any) {
        let pushViewCont = TabBarControllerViewController()
        
        MyPass = passTxtLogin.text ?? "No hay Pass"
        MyUser = userTxtLogin.text ?? "no hay user"
        
        if userTxtLogin.text == "" && passTxtLogin.text == "" {
            self.showAlert(WithTitle: "¡Alerta!", AndMessage: "Insertar Usuario y contraseña")
        }else if userTxtLogin.text == "" {
            self.showAlert(WithTitle: "¡Cuidado!", AndMessage: "Insertar Usuario")
        }else if passTxtLogin.text == "" {
            self.showAlert(WithTitle: "¡Cuidado!", AndMessage: "Insertar Contraseña")
        }else if validaCampoTx(EnMiBase: arrUsers, YDato: MyUser) && validaCampoTx(EnMiBase: arrPassW, YDato: MyPass){
            navigationController?.pushViewController(pushViewCont, animated: true)
        }
        
    }
}


    //MARK: - EXTENSIONS


extension LoginTabViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.btnStar(self)
        return true
    }
}

