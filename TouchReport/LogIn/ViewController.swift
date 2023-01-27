//
//  ViewController.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 15/11/2022.
//

import UIKit

class ViewController: UIViewController {

    // Mark: - Constant and varibles

    // Mark: - Initialization
    lazy var nav: UINavigationController = {
        let nav = UINavigationController()
        
        return nav
        
    }()
    
    
    lazy var mainView: UIView = {

        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        view.backgroundColor = .clear

        return view

    }()

    lazy var ScrollView: UIScrollView = {

        let ScrollView = UIScrollView()

        ScrollView.isScrollEnabled = true

        ScrollView.backgroundColor = .clear



        ScrollView.translatesAutoresizingMaskIntoConstraints = false

        return ScrollView

    }()

    lazy var lblLogin: UILabel = {

        let lblLogin = UILabel()

        lblLogin.translatesAutoresizingMaskIntoConstraints = false

        lblLogin.numberOfLines = 1

        lblLogin.text = "Log in"

        lblLogin.textColor = .white

        lblLogin.font = UIFont.systemFont(ofSize: 30, weight: .semibold)

        return lblLogin

    }()

    lazy var bgImageView: UIImageView = {

        var bgImageView = UIImageView(image: UIImage(named: "Background"))

        bgImageView.translatesAutoresizingMaskIntoConstraints = false

        bgImageView.contentMode = .scaleAspectFill

        bgImageView.clipsToBounds = true

        return bgImageView

    }()

    lazy var imgRocket: UIImageView = {

        let imgRocket = UIImageView()

        imgRocket.translatesAutoresizingMaskIntoConstraints = false

        imgRocket.contentMode = .scaleAspectFill

        imgRocket.clipsToBounds = true

        imgRocket.image = UIImage(named: "Rocket")

        return imgRocket

    }()

    lazy var txtEmail: UITextField = {

        let txtEmail = UITextField()

        txtEmail.translatesAutoresizingMaskIntoConstraints = false

        txtEmail.backgroundColor = Colors.textFieldBG.getColors()

        txtEmail.layer.cornerRadius = 15

        txtEmail.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtEmail.textColor = .white

        txtEmail.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtEmail.frame.height))
        txtEmail.leftViewMode = .always

        return txtEmail

    }()

    lazy var txtPassword: UITextField = {

        let txtPassword = UITextField()

        txtPassword.translatesAutoresizingMaskIntoConstraints = false

        txtPassword.isSecureTextEntry = true

        txtPassword.enablePasswordToggle()

        txtPassword.backgroundColor = Colors.textFieldBG.getColors()

        txtPassword.layer.cornerRadius = 15

        txtPassword.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        txtPassword.textColor = .white

        txtPassword.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: txtPassword.frame.height))
        txtPassword.leftViewMode = .always


        return txtPassword

    }()
    
    lazy var btnLogin: UIButton = {

        let btnLogin = UIButton()

        btnLogin.translatesAutoresizingMaskIntoConstraints = false

        btnLogin.backgroundColor = Colors.primary.getColors()

        btnLogin.layer.cornerRadius = 31

        btnLogin.setTitle("LOG IN", for: .normal)
        
        btnLogin.addTarget(self, action: #selector(didTapButtonLogin), for: .touchUpInside)

        return btnLogin
    }()


    lazy var stackView: UIStackView = {

        let stackView = UIStackView()

        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.axis = .vertical

        stackView.distribution = .fill

        stackView.alignment = .fill

        stackView.spacing = 16.0

        stackView.addArrangedSubview(txtEmail)

        stackView.addArrangedSubview(txtPassword)

        stackView.addArrangedSubview(btnLogin)

        //stackView.addArrangedSubview(btnSignUp)

        return stackView

    }()

    lazy var lblDontHaveAcc: UILabel = {

        let lblDontHaveAcc = UILabel()

        lblDontHaveAcc.translatesAutoresizingMaskIntoConstraints = false

        lblDontHaveAcc.numberOfLines = 1

        lblDontHaveAcc.text = "DONT HAVE AN ACCOUNT?"

        lblDontHaveAcc.textColor = Colors.gray.getColors()

        lblDontHaveAcc.font = UIFont.systemFont(ofSize: 14, weight: .thin)


        return lblDontHaveAcc
    }()

    lazy var btnSignUp: UIButton = {

        let btnSignUp = UIButton()

        btnSignUp.translatesAutoresizingMaskIntoConstraints = false

        btnSignUp.tintColor = Colors.primary.getColors()
        
        btnSignUp.setTitleColor(Colors.primary.getColors(), for: .normal)

        btnSignUp.setTitle("SIGN UP", for: .normal)
        
        btnSignUp.titleLabel?.font =  UIFont.systemFont(ofSize: 14, weight: .semibold)
        
        btnSignUp.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

//        btnSignUp.layer.borderWidth = 0.0

        return btnSignUp
    }()

    lazy var stackViewSignUP: UIStackView = {

        let stackView = UIStackView()

        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.axis = .horizontal

       stackView.alignment = .fill

        stackView.spacing = 4

        stackView.addArrangedSubview(lblDontHaveAcc)

        stackView.addArrangedSubview(btnSignUp)


        return stackView

    }()





    // Mark: - View Controller Function
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()

    }
    //Mark: - Additional functions
                            
    @objc func didTapButton () {
        let vc = SignUpVC()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func didTapButtonLogin () {
        let vc2 = LandingVC()
        self.navigationController?.pushViewController(vc2, animated: true)
        
    }

}
extension ViewController {

   
    func setupLayout() {

        autoLayoutForbgImage()

        autoLayoutForScrollView()

        autoLayoutForMainView()

        autoLayoutForLabel()

        autoLayoutForimgRocket()

        autoLayoutForstackView()

        autoLayoutForstackViewSignUp()

//        autoLayoutForlblDontHaveAcc()

    }
    
    //Mark: - AutoLayout

    func autoLayoutForScrollView() {

        view.addSubview(ScrollView)

        NSLayoutConstraint.activate([

            ScrollView.topAnchor.constraint(equalTo: view.topAnchor),

            ScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            ScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            ScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
    }

    func autoLayoutForMainView() {

        ScrollView.addSubview(mainView)

        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: ScrollView.topAnchor),

            mainView.leadingAnchor.constraint(equalTo: ScrollView.leadingAnchor),

            mainView.trailingAnchor.constraint(equalTo: ScrollView.trailingAnchor),

            mainView.bottomAnchor.constraint(equalTo: ScrollView.bottomAnchor),

            mainView.widthAnchor.constraint(equalTo: ScrollView.widthAnchor),

        ])
    }


    func autoLayoutForbgImage() {

        view.addSubview(bgImageView)

        NSLayoutConstraint.activate([

            bgImageView.topAnchor.constraint(equalTo: view.topAnchor),

            bgImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            bgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            bgImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)

        ])
    }

    func autoLayoutForLabel() {

        mainView.addSubview(lblLogin)

        let safeLayout = mainView.layoutMarginsGuide

        NSLayoutConstraint.activate([
            lblLogin.topAnchor.constraint(equalTo: safeLayout.topAnchor, constant: 96),
            lblLogin.leadingAnchor.constraint(equalTo: safeLayout.leadingAnchor, constant: 27),

        ])
    }


    func autoLayoutForimgRocket() {

        mainView.addSubview(imgRocket)

        NSLayoutConstraint.activate([

            imgRocket.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),

            imgRocket.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),

            imgRocket.widthAnchor.constraint(equalTo: imgRocket.heightAnchor),

            imgRocket.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 8)


        ])
    }

    func autoLayoutForstackView() {

        mainView.addSubview(stackView)

        NSLayoutConstraint.activate([

            stackView.topAnchor.constraint(equalTo: lblLogin.bottomAnchor, constant: 196),

            stackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 27),

            stackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -27),
            
            txtEmail.heightAnchor.constraint(equalToConstant: 63),

            txtPassword.heightAnchor.constraint(equalToConstant: 63),

            btnLogin.heightAnchor.constraint(equalToConstant: 63),

            //btnSignUp.heightAnchor.constraint(equalToConstant: 63),

        ])
    }

    func autoLayoutForstackViewSignUp() {

        mainView.addSubview(stackViewSignUP)

        NSLayoutConstraint.activate([

            stackViewSignUP.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 29),
            
            stackViewSignUP.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -8),

            stackViewSignUP.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),


        ])
    }
}
