//
//  SingUp.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 21/11/2022.
//

import Foundation
import UIKit

class SignUpVC: UIViewController{
    
    
    lazy var imgBg : UIImageView = {
        let imgBg = UIImageView()
        
        imgBg.translatesAutoresizingMaskIntoConstraints = false
        imgBg.image = UIImage(named: "Background2")
        imgBg.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(imgBg, at: 0)
        
        return imgBg
    }()
    
    lazy var SignUpScrollView : UIScrollView = {
        
        let SignUpScrollView = UIScrollView()
        
        SignUpScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        SignUpScrollView.backgroundColor = .clear
        
        return SignUpScrollView
    }()
    
    lazy var signUpView: UIView = {
        
        let signUpView = UIView()
        
        signUpView.translatesAutoresizingMaskIntoConstraints = false
        
        signUpView.backgroundColor = .clear
        
        return signUpView
        
    }()
    
    lazy var lblRegistration : UILabel = {
        
        let lblRegistration = UILabel()
        
        lblRegistration.translatesAutoresizingMaskIntoConstraints = false
        
        lblRegistration.numberOfLines = 1

        lblRegistration.text = "Lets get to know you!"

        lblRegistration.textColor = .white

        lblRegistration.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        
        return lblRegistration
    }()
    
    lazy var txtName: UITextField = {

        let txtName = UITextField()

        txtName.translatesAutoresizingMaskIntoConstraints = false

        txtName.backgroundColor = Colors.textFieldBG.getColors()

        txtName.layer.cornerRadius = 15

        txtName.attributedPlaceholder = NSAttributedString(string: "Enter your name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtName.textColor = .white

        txtName.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtName.frame.height))
        txtName.leftViewMode = .always

        return txtName

    }()
    
    lazy var txtMailAddress: UITextField = {

        let txtMailAddress = UITextField()

        txtMailAddress.translatesAutoresizingMaskIntoConstraints = false

        txtMailAddress.backgroundColor = Colors.textFieldBG.getColors()

        txtMailAddress.layer.cornerRadius = 15

        txtMailAddress.attributedPlaceholder = NSAttributedString(string: "Enter your email address", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtMailAddress.textColor = .white

        txtMailAddress.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtMailAddress.frame.height))
        txtMailAddress.leftViewMode = .always

        return txtMailAddress

    }()
    
    
    lazy var txtPhoneNo: UITextField = {

        let txtPhoneNo = UITextField()

        txtPhoneNo.translatesAutoresizingMaskIntoConstraints = false

        txtPhoneNo.backgroundColor = Colors.textFieldBG.getColors()

        txtPhoneNo.layer.cornerRadius = 15

        txtPhoneNo.attributedPlaceholder = NSAttributedString(string: "Enter your phone number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtPhoneNo.textColor = .white

        txtPhoneNo.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtPhoneNo.frame.height))
        txtPhoneNo.leftViewMode = .always

        return txtPhoneNo

    }()
    
    
    lazy var txtPswd: UITextField = {

        let txtPswd = UITextField()

        txtPswd.translatesAutoresizingMaskIntoConstraints = false
        
        txtPswd.isUserInteractionEnabled = true

        txtPswd.backgroundColor = Colors.textFieldBG.getColors()

        txtPswd.layer.cornerRadius = 15

        txtPswd.attributedPlaceholder = NSAttributedString(string: "Enter your password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtPswd.textColor = .white

        txtPswd.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtPswd.frame.height))
        txtPswd.leftViewMode = .always

        return txtPswd

    }()
    
    lazy var btnNxt1: UIButton = {

        let btnNxt1 = UIButton()

        btnNxt1.translatesAutoresizingMaskIntoConstraints = false

        btnNxt1.backgroundColor = Colors.primary.getColors()

        btnNxt1.layer.cornerRadius = 31

        btnNxt1.setTitle("Next", for: .normal)
        
        btnNxt1.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

        return btnNxt1
    }()
    
    
    lazy var stackView: UIStackView = {

        let stackView = UIStackView()

        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.axis = .vertical

        stackView.distribution = .fill

        stackView.alignment = .fill

        stackView.spacing = 18.0

        stackView.addArrangedSubview(txtName)

        stackView.addArrangedSubview(txtMailAddress)

        stackView.addArrangedSubview(txtPhoneNo)
        
        stackView.addArrangedSubview(txtPswd)
        
        stackView.addArrangedSubview(btnNxt1)

       

        return stackView

    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        signUPsetupLayout()
        
        
        //  view.backgroundColor = .magenta
        
        
    }
    
    @objc func didTapButton () {
        let vc = Registration2VC()
        self.navigationController?.pushViewController(vc, animated: true)
        

    }

    
    
}
extension SignUpVC{
    
    //Mark: - AutoLayout
    
    func signUPsetupLayout() {
        
        autoLayoutimgBg()
        
        autoLayoutForSignUpScrollView()
        
        autoLayoutForSignUpmainView()
        
        autoLayoutForlblRegistration()
        
        autoLayoutForstackView()
        
        
    }
    
    func autoLayoutimgBg(){
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Background2")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
//        view.addSubview(imgBg)
//
//        NSLayoutConstraint.activate([
//
//            imgBg.topAnchor.constraint(equalTo: view.topAnchor),
//
//            imgBg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//
//            imgBg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//
//            imgBg.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
    }
    
    
    
    
    
    
    func autoLayoutForSignUpScrollView() {
        
        view.addSubview(SignUpScrollView)
        
        NSLayoutConstraint.activate([
            
            SignUpScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            
            SignUpScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            SignUpScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            SignUpScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
    
    func autoLayoutForSignUpmainView() {
        
        SignUpScrollView.addSubview(signUpView)
        
        NSLayoutConstraint.activate([
            
            signUpView.topAnchor.constraint(equalTo: SignUpScrollView.topAnchor),
            
            signUpView.leadingAnchor.constraint(equalTo: SignUpScrollView.leadingAnchor),
            
            signUpView.trailingAnchor.constraint(equalTo: SignUpScrollView.trailingAnchor),
            
            signUpView.bottomAnchor.constraint(equalTo: SignUpScrollView.bottomAnchor),
            
            signUpView.widthAnchor.constraint(equalTo: SignUpScrollView.widthAnchor)
            
        ])
    }
    
    func autoLayoutForlblRegistration() {
        
        signUpView.addSubview(lblRegistration)
        
        NSLayoutConstraint.activate([
        
            lblRegistration.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 145),
            lblRegistration.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor)
            
        ])
        
    }
    
    func autoLayoutForstackView() {

        signUpView.addSubview(stackView)

        NSLayoutConstraint.activate([

            stackView.topAnchor.constraint(equalTo: lblRegistration.bottomAnchor, constant: 114),

            stackView.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 27),

            stackView.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -27),
            
            stackView.bottomAnchor.constraint(equalTo: signUpView.bottomAnchor),
            
            txtName.heightAnchor.constraint(equalToConstant: 63),

            txtMailAddress.heightAnchor.constraint(equalToConstant: 63),

            txtPhoneNo.heightAnchor.constraint(equalToConstant: 63),

            txtPswd.heightAnchor.constraint(equalToConstant: 63),
            
            btnNxt1.heightAnchor.constraint(equalToConstant: 63)

        ])
    }
    
    
}

