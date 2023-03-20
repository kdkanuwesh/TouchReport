//
//  Registration3VC.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 23/11/2022.
//

import UIKit

class Registration3VC: UIViewController {

    lazy var imgBg3 : UIImageView = {
        
        let imgBg3 = UIImageView()
        
        imgBg3.translatesAutoresizingMaskIntoConstraints = false
        
        imgBg3.image = UIImage(named: "Background2")
        
        imgBg3.contentMode = UIView.ContentMode.scaleAspectFill
        
        self.view.insertSubview(imgBg3, at: 0)
        
        return imgBg3
    }()
    
    lazy var registration3ScrollView : UIScrollView = {
        
        let registration3ScrollView = UIScrollView()
        
        registration3ScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        registration3ScrollView.backgroundColor = .clear
        
        return registration3ScrollView
    }()
    
    lazy var registration3View: UIView = {
        
        let registration3View = UIView()
        
        registration3View.translatesAutoresizingMaskIntoConstraints = false
        
        registration3View.backgroundColor = .clear
        
        return registration3View
        
    }()
    
    lazy var lblRegistration3 : UILabel = {
        
        let lblRegistration3 = UILabel()
        
        lblRegistration3.translatesAutoresizingMaskIntoConstraints = false
        
        lblRegistration3.numberOfLines = 2

        lblRegistration3.text = "Add your emergency contacts"

        lblRegistration3.textColor = .white

        lblRegistration3.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        
        return lblRegistration3
    }()
    
    lazy var txtName: UITextField = {

        let txtName = UITextField()

        txtName.translatesAutoresizingMaskIntoConstraints = false

        txtName.backgroundColor = Colors.textFieldBG.getColors()

        txtName.layer.cornerRadius = 15

        txtName.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtName.textColor = .white

        txtName.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtName.frame.height))
        txtName.leftViewMode = .always

        return txtName

    }()
    
    lazy var txtRelation: UITextField = {

        let txtRelation = UITextField()

        txtRelation.translatesAutoresizingMaskIntoConstraints = false

        txtRelation.backgroundColor = Colors.textFieldBG.getColors()

        txtRelation.layer.cornerRadius = 15

        txtRelation.attributedPlaceholder = NSAttributedString(string: "Relation", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtRelation.textColor = .white

        txtRelation.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtRelation.frame.height))
        txtRelation.leftViewMode = .always

        return txtRelation

    }()
    
    
    lazy var txtPhoneNo1: UITextField = {

        let txtPhoneNo1 = UITextField()

        txtPhoneNo1.translatesAutoresizingMaskIntoConstraints = false

        txtPhoneNo1.backgroundColor = Colors.textFieldBG.getColors()

        txtPhoneNo1.layer.cornerRadius = 15

        txtPhoneNo1.attributedPlaceholder = NSAttributedString(string: "Phone number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtPhoneNo1.textColor = .white

        txtPhoneNo1.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtPhoneNo1.frame.height))
        txtPhoneNo1.leftViewMode = .always

        return txtPhoneNo1

    }()
    
    lazy var txtName2: UITextField = {

        let txtName2 = UITextField()

        txtName2.translatesAutoresizingMaskIntoConstraints = false

        txtName2.backgroundColor = Colors.textFieldBG.getColors()

        txtName2.layer.cornerRadius = 15

        txtName2.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtName2.textColor = .white

        txtName2.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtName2.frame.height))
        txtName2.leftViewMode = .always

        return txtName2

    }()
    
    lazy var txtRelation2: UITextField = {

        let txtRelation2 = UITextField()

        txtRelation2.translatesAutoresizingMaskIntoConstraints = false

        txtRelation2.backgroundColor = Colors.textFieldBG.getColors()

        txtRelation2.layer.cornerRadius = 15

        txtRelation2.attributedPlaceholder = NSAttributedString(string: "Relation", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtRelation2.textColor = .white

        txtRelation2.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtRelation2.frame.height))
        txtRelation2.leftViewMode = .always

        return txtRelation2

    }()
    
    
    lazy var txtPhoneNo2: UITextField = {

        let txtPhoneNo2 = UITextField()

        txtPhoneNo2.translatesAutoresizingMaskIntoConstraints = false

        txtPhoneNo2.backgroundColor = Colors.textFieldBG.getColors()

        txtPhoneNo2.layer.cornerRadius = 15

        txtPhoneNo2.attributedPlaceholder = NSAttributedString(string: "Phone number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtPhoneNo2.textColor = .white

        txtPhoneNo2.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtPhoneNo2.frame.height))
        txtPhoneNo2.leftViewMode = .always

        return txtPhoneNo2

    }()
    
    
   
    
    lazy var btnNxt3: UIButton = {

        let btnNxt3 = UIButton()

        btnNxt3.translatesAutoresizingMaskIntoConstraints = false

        btnNxt3.backgroundColor = Colors.primary.getColors()

        btnNxt3.layer.cornerRadius = 31

        btnNxt3.setTitle("Next", for: .normal)
        
//        btnNxt3.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    //
        return btnNxt3
    }()
    
    lazy var stackViewRegistration: UIStackView = {

        let stackViewRegistration = UIStackView()

        stackViewRegistration.translatesAutoresizingMaskIntoConstraints = false

        stackViewRegistration.axis = .horizontal
        
        stackViewRegistration.distribution = .fill

        stackViewRegistration.alignment = .fill

        stackViewRegistration.spacing = 16

        stackViewRegistration.addArrangedSubview(txtName)

        stackViewRegistration.addArrangedSubview(txtRelation)


        return stackViewRegistration

    }()
    
    
    lazy var stackViewRegistration2: UIStackView = {

        let stackViewRegistration2 = UIStackView()

        stackViewRegistration2.translatesAutoresizingMaskIntoConstraints = false

        stackViewRegistration2.axis = .horizontal
        
        stackViewRegistration2.distribution = .fill

        stackViewRegistration2.alignment = .fill

        stackViewRegistration2.spacing = 16

        stackViewRegistration2.addArrangedSubview(txtName2)

        stackViewRegistration2.addArrangedSubview(txtRelation2)


        return stackViewRegistration2

    }()
    
    lazy var stackViewRegistration3: UIStackView = {

        let stackViewRegistration3 = UIStackView()

        stackViewRegistration3.translatesAutoresizingMaskIntoConstraints = false

        stackViewRegistration3.axis = .vertical
        
        stackViewRegistration3.distribution = .fill

        stackViewRegistration3.alignment = .fill

        stackViewRegistration3.spacing = 16

        stackViewRegistration3.addArrangedSubview(txtPhoneNo2)

        stackViewRegistration3.addArrangedSubview(btnNxt3)


        return stackViewRegistration3

    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        registration3setupLayout()
        
        
       
        
    }
    
//    @objc func didTapButton() {
//        let vc = Registration3VC()
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    

extension Registration3VC{
    
    //Mark: - AutoLayout
    
    func registration3setupLayout() {
        
        autoLayoutimgBg()
        
        autoLayoutForregistration3ScrollView()
        
        autoLayoutForregistrationView()
        
        autoLayoutForlblRegistration()
        
        autoLayoutForstackViewRegistration()
        
        autoLayoutFortxtPhoneNo1()
        
        autoLayoutForstackViewRegistration2()
        
       // autoLayoutFortxtPhoneNo2()
        autoLayoutForstackViewRegistration3()
       
        
       
        
        
        
        
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
    
    
    
    
    
    
    func autoLayoutForregistration3ScrollView() {
        
        view.addSubview(registration3ScrollView)
        
        NSLayoutConstraint.activate([
            
            registration3ScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            
            registration3ScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            registration3ScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            registration3ScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
    
    func autoLayoutForregistrationView() {
        
        registration3ScrollView.addSubview(registration3View)
        
        NSLayoutConstraint.activate([
            
            registration3View.topAnchor.constraint(equalTo: registration3ScrollView.topAnchor),
            
            registration3View.leadingAnchor.constraint(equalTo: registration3ScrollView.leadingAnchor),
            
            registration3View.trailingAnchor.constraint(equalTo: registration3ScrollView.trailingAnchor),
            
            registration3View.bottomAnchor.constraint(equalTo: registration3ScrollView.bottomAnchor),
            
            registration3View.widthAnchor.constraint(equalTo: registration3ScrollView.widthAnchor)
            
        ])
    }
    
    func autoLayoutForlblRegistration() {
        
        registration3View.addSubview(lblRegistration3)
        
        NSLayoutConstraint.activate([
        
            lblRegistration3.topAnchor.constraint(equalTo: registration3View.topAnchor, constant: 135),
            
          //  lblRegistration3.centerXAnchor.constraint(equalTo: registration3View.centerXAnchor)
            
            lblRegistration3.leadingAnchor.constraint(equalTo: registration3View.leadingAnchor,constant: 27),
            
            lblRegistration3.trailingAnchor.constraint(equalTo: registration3View.trailingAnchor,constant: -27)
            
        ])
        
    }
    
    func autoLayoutForstackViewRegistration() {

        registration3View.addSubview(stackViewRegistration)

        NSLayoutConstraint.activate([

            stackViewRegistration.topAnchor.constraint(equalTo: lblRegistration3.bottomAnchor, constant: 93),
            
            stackViewRegistration.leadingAnchor.constraint(equalTo: registration3View.leadingAnchor, constant: 27),

            stackViewRegistration.trailingAnchor.constraint(equalTo: registration3View.trailingAnchor, constant: -27),
            
            txtName.heightAnchor.constraint(equalToConstant: 63),

            txtRelation.heightAnchor.constraint(equalToConstant: 63),
            
            txtRelation.widthAnchor.constraint(equalToConstant: 124)

        ])
    }
    
    
    func autoLayoutFortxtPhoneNo1() {
        
        registration3View.addSubview(txtPhoneNo1)
        
        NSLayoutConstraint.activate([
        
            txtPhoneNo1.topAnchor.constraint(equalTo: stackViewRegistration.bottomAnchor, constant: 18),
            
            txtPhoneNo1.leadingAnchor.constraint(equalTo: registration3View.leadingAnchor, constant: 27),
            
            txtPhoneNo1.trailingAnchor.constraint(equalTo: registration3View.trailingAnchor, constant: -27),
            
            txtPhoneNo1.heightAnchor.constraint(equalToConstant: 63)
        ])
    }
    
    func autoLayoutForstackViewRegistration2() {

        registration3View.addSubview(stackViewRegistration2)

        NSLayoutConstraint.activate([

            stackViewRegistration2.topAnchor.constraint(equalTo: txtPhoneNo1.bottomAnchor, constant: 18),
            
            stackViewRegistration2.leadingAnchor.constraint(equalTo: registration3View.leadingAnchor, constant: 27),

            stackViewRegistration2.trailingAnchor.constraint(equalTo: registration3View.trailingAnchor, constant: -27),
            
            txtName2.heightAnchor.constraint(equalToConstant: 63),

            txtRelation2.heightAnchor.constraint(equalToConstant: 63),
            
            txtRelation2.widthAnchor.constraint(equalToConstant: 124)

        ])
    }
    
    func autoLayoutForstackViewRegistration3() {

        registration3View.addSubview(stackViewRegistration3)

        NSLayoutConstraint.activate([

            stackViewRegistration3.topAnchor.constraint(equalTo: stackViewRegistration2.bottomAnchor, constant: 18),
            
            stackViewRegistration3.leadingAnchor.constraint(equalTo: registration3View.leadingAnchor, constant: 27),

            stackViewRegistration3.trailingAnchor.constraint(equalTo: registration3View.trailingAnchor, constant: -27),
            
            stackViewRegistration3.bottomAnchor.constraint(equalTo: registration3View.bottomAnchor),
            
            txtPhoneNo2.heightAnchor.constraint(equalToConstant: 63),

            btnNxt3.heightAnchor.constraint(equalToConstant: 63),
            

        ])
    }
    
//    func autoLayoutFortxtPhoneNo2() {
//
//        registration3View.addSubview(txtPhoneNo2)
//
//        NSLayoutConstraint.activate([
//
//            txtPhoneNo2.topAnchor.constraint(equalTo: stackViewRegistration2.bottomAnchor, constant: 18),
//
//            txtPhoneNo2.leadingAnchor.constraint(equalTo: registration3View.leadingAnchor, constant: 27),
//
//            txtPhoneNo2.trailingAnchor.constraint(equalTo: registration3View.trailingAnchor, constant: -27),
//
//            txtPhoneNo2.heightAnchor.constraint(equalToConstant: 63)
//        ])
//    }
}

