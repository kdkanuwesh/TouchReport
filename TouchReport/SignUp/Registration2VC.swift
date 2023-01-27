//
//  Registration2VC.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 23/11/2022.
//

import UIKit

class Registration2VC: UIViewController {

    lazy var imgBg2 : UIImageView = {
        let imgBg2 = UIImageView()
        
        imgBg2.translatesAutoresizingMaskIntoConstraints = false
        imgBg2.image = UIImage(named: "Background2")
        imgBg2.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(imgBg2, at: 0)
        
        return imgBg2
    }()
    
    lazy var registration2ScrollView : UIScrollView = {
        
        let registration2ScrollView = UIScrollView()
        
        registration2ScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        registration2ScrollView.backgroundColor = .clear
        
        return registration2ScrollView
    }()
    
    lazy var registrationView: UIView = {
        
        let registrationView = UIView()
        
        registrationView.translatesAutoresizingMaskIntoConstraints = false
        
        registrationView.backgroundColor = .clear
        
        return registrationView
        
    }()
    
    lazy var lblRegistration2 : UILabel = {
        
        let lblRegistration2 = UILabel()
        
        lblRegistration2.translatesAutoresizingMaskIntoConstraints = false
        
        lblRegistration2.numberOfLines = 2

        lblRegistration2.text = "Lets get your medical information"

        lblRegistration2.textColor = .white

        lblRegistration2.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        
        return lblRegistration2
    }()
    
    lazy var txtHeight: UITextField = {

        let txtHeight = UITextField()

        txtHeight.translatesAutoresizingMaskIntoConstraints = false

        txtHeight.backgroundColor = Colors.textFieldBG.getColors()

        txtHeight.layer.cornerRadius = 15

        txtHeight.attributedPlaceholder = NSAttributedString(string: "Height", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtHeight.textColor = .white

        txtHeight.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtHeight.frame.height))
        txtHeight.leftViewMode = .always

        return txtHeight

    }()
    
    lazy var txtWeight: UITextField = {

        let txtWeight = UITextField()

        txtWeight.translatesAutoresizingMaskIntoConstraints = false

        txtWeight.backgroundColor = Colors.textFieldBG.getColors()

        txtWeight.layer.cornerRadius = 15

        txtWeight.attributedPlaceholder = NSAttributedString(string: "Weight", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtWeight.textColor = .white

        txtWeight.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtWeight.frame.height))
        txtWeight.leftViewMode = .always

        return txtWeight

    }()
    
    
    lazy var txtAllergies: UITextField = {

        let txtAllergies = UITextField()

        txtAllergies.translatesAutoresizingMaskIntoConstraints = false

        txtAllergies.backgroundColor = Colors.textFieldBG.getColors()

        txtAllergies.layer.cornerRadius = 15

        txtAllergies.attributedPlaceholder = NSAttributedString(string: "Allergies (if any)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtAllergies.textColor = .white

        txtAllergies.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtAllergies.frame.height))
        txtAllergies.leftViewMode = .always

        return txtAllergies

    }()
    
    
    lazy var txtBloodType: UITextField = {

        let txtBloodType = UITextField()

        txtBloodType.translatesAutoresizingMaskIntoConstraints = false
        
        txtBloodType.isUserInteractionEnabled = true

        txtBloodType.backgroundColor = Colors.textFieldBG.getColors()

        txtBloodType.layer.cornerRadius = 15

        txtBloodType.attributedPlaceholder = NSAttributedString(string: "Blood type", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtBloodType.textColor = .white

        txtBloodType.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtBloodType.frame.height))
        txtBloodType.leftViewMode = .always

        return txtBloodType

    }()
    
    lazy var txtDob: UITextField = {

        let txtDob = UITextField()

        txtDob.translatesAutoresizingMaskIntoConstraints = false
        
        txtDob.isUserInteractionEnabled = true

        txtDob.backgroundColor = Colors.textFieldBG.getColors()

        txtDob.layer.cornerRadius = 15

        txtDob.attributedPlaceholder = NSAttributedString(string: "Date of birth", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtDob.textColor = .white

        txtDob.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtDob.frame.height))
        txtDob.leftViewMode = .always

        return txtDob

    }()
    
    lazy var btnNxt2: UIButton = {

        let btnNxt2 = UIButton()

        btnNxt2.translatesAutoresizingMaskIntoConstraints = false

        btnNxt2.backgroundColor = Colors.primary.getColors()

        btnNxt2.layer.cornerRadius = 31

        btnNxt2.setTitle("Next", for: .normal)
        
        btnNxt2.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    //
        return btnNxt2
    }()
    
    lazy var stackViewRegistration: UIStackView = {

        let stackViewRegistration = UIStackView()

        stackViewRegistration.translatesAutoresizingMaskIntoConstraints = false

        stackViewRegistration.axis = .horizontal
        
        stackViewRegistration.distribution = .fillEqually

        stackViewRegistration.alignment = .fill

        stackViewRegistration.spacing = 16

        stackViewRegistration.addArrangedSubview(txtHeight)

        stackViewRegistration.addArrangedSubview(txtWeight)


        return stackViewRegistration

    }()

    
    
    lazy var stackView: UIStackView = {

        let stackView = UIStackView()

        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.axis = .vertical

        stackView.distribution = .fill

        stackView.alignment = .fill

        stackView.spacing = 18.0

        stackView.addArrangedSubview(txtAllergies)

        stackView.addArrangedSubview(txtBloodType)

        stackView.addArrangedSubview(txtDob)
        
        stackView.addArrangedSubview(btnNxt2)
        
       

        return stackView

    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        registration2setupLayout()
        
        
        //  view.backgroundColor = .magenta
        
        
    }
    
    @objc func didTapButton() {
        let vc = Registration3VC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
extension Registration2VC{
    
    //Mark: - AutoLayout
    
    func registration2setupLayout() {
        
        autoLayoutimgBg()
        
        autoLayoutForregistration2ScrollView()
        
        autoLayoutForregistrationView()
        
        autoLayoutForlblRegistration()
        
        autoLayoutForstackViewSignUp()
        
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
    
    
    
    
    
    
    func autoLayoutForregistration2ScrollView() {
        
        view.addSubview(registration2ScrollView)
        
        NSLayoutConstraint.activate([
            
            registration2ScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            
            registration2ScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            registration2ScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            registration2ScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
    
    func autoLayoutForregistrationView() {
        
        registration2ScrollView.addSubview(registrationView)
        
        NSLayoutConstraint.activate([
            
            registrationView.topAnchor.constraint(equalTo: registration2ScrollView.topAnchor),
            
            registrationView.leadingAnchor.constraint(equalTo: registration2ScrollView.leadingAnchor),
            
            registrationView.trailingAnchor.constraint(equalTo: registration2ScrollView.trailingAnchor),
            
            registrationView.bottomAnchor.constraint(equalTo: registration2ScrollView.bottomAnchor),
            
            registrationView.widthAnchor.constraint(equalTo: registration2ScrollView.widthAnchor)
            
        ])
    }
    
    func autoLayoutForlblRegistration() {
        
        registrationView.addSubview(lblRegistration2)
        
        NSLayoutConstraint.activate([
        
            lblRegistration2.topAnchor.constraint(equalTo: registrationView.topAnchor, constant: 135),
          //  lblRegistration2.centerXAnchor.constraint(equalTo: registrationView.centerXAnchor)
            lblRegistration2.leadingAnchor.constraint(equalTo: registrationView.leadingAnchor,constant: 27),
            lblRegistration2.trailingAnchor.constraint(equalTo: registrationView.trailingAnchor,constant: -27)
            
        ])
        
    }
    
    func autoLayoutForstackViewSignUp() {

        registrationView.addSubview(stackViewRegistration)

        NSLayoutConstraint.activate([

            stackViewRegistration.topAnchor.constraint(equalTo: lblRegistration2.bottomAnchor, constant: 93),
            
            stackViewRegistration.leadingAnchor.constraint(equalTo: registrationView.leadingAnchor, constant: 27),

            stackViewRegistration.trailingAnchor.constraint(equalTo: registrationView.trailingAnchor, constant: -27),
            
            txtHeight.heightAnchor.constraint(equalToConstant: 63),

            txtWeight.heightAnchor.constraint(equalToConstant: 63),

        ])
    }
    
    func autoLayoutForstackView() {

        registrationView.addSubview(stackView)

        NSLayoutConstraint.activate([

            stackView.topAnchor.constraint(equalTo: stackViewRegistration.bottomAnchor, constant: 18),
            
            stackView.leadingAnchor.constraint(equalTo: registrationView.leadingAnchor, constant: 27),

            stackView.trailingAnchor.constraint(equalTo: registrationView.trailingAnchor, constant: -27),
            
            stackView.bottomAnchor.constraint(equalTo: registrationView.bottomAnchor),
            
            txtAllergies.heightAnchor.constraint(equalToConstant: 63),

            txtBloodType.heightAnchor.constraint(equalToConstant: 63),

            txtDob.heightAnchor.constraint(equalToConstant: 63),
            
            btnNxt2.heightAnchor.constraint(equalToConstant: 63)
        ])
    }
    
    
}

