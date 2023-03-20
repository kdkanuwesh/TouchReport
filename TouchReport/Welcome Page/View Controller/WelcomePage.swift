//
//  WelcomePage.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 27/02/2023.
//

import Foundation
import UIKit

class WelcomePageVC: UIViewController {

    // MARK: - Constants and Variables

    lazy var bgImage: UIImageView = {

        var imageView = UIImageView(image: UIImage(named: "Background"))

        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.contentMode = .scaleAspectFill

        imageView.clipsToBounds = true

        return imageView

    }()

    lazy var mainView: UIView = {

        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        view.backgroundColor = .clear

        return view

    }()

    lazy var lblWelcome: UILabel = {

        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false

        label.numberOfLines = 1

        label.text = "Welcome to TouchReport"

        label.textColor = .white

        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)

        return label

    }()

    lazy var lblDesc: UILabel = {

        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false

        label.numberOfLines = 3

        label.text = "Creating an easier way for people to get in touch with the police and make our home a safer place for everyone"

        label.textColor = .white

        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)

        return label

    }()

    lazy var controlLaguage: UISegmentedControl = {

        let controlLaguage = UISegmentedControl()

        controlLaguage.translatesAutoresizingMaskIntoConstraints = false

//        controlLaguage.numberOfSegments = 2

        controlLaguage.insertSegment(withTitle: "🇬🇧", at: 0, animated: true)

        controlLaguage.insertSegment(withTitle: "🇳🇵", at: 1, animated: true)

//        controlLaguage.insertSegment(with: UIImage(systemName: ""), at: <#T##Int#>, animated: <#T##Bool#>)

        controlLaguage.setEnabled(true, forSegmentAt: 0)


        return controlLaguage

    }()

    lazy var imgMain: UIImageView = {

        var imageView = UIImageView(image: UIImage(named: "Main-Illustration"))

        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.contentMode = .scaleAspectFit

        imageView.clipsToBounds = true

        return imageView

    }()

    lazy var btnStart: UIButton = {

        let button = UIButton()

        button.translatesAutoresizingMaskIntoConstraints = false

        button.backgroundColor = Colors.primary.getColors()

        button.layer.cornerRadius = 31

        button.setTitle("Get Started", for: .normal)

        return button
    }()

    // MARK: - Initialization

    // MARK: - View Did Load
    override func viewDidLoad() {

        super.viewDidLoad()

        view.backgroundColor = .white


        setupLayout()

        setupUIAction()

        apiCall()

    }

    // MARK: - View Will Appear
    override func viewWillAppear(_ animated: Bool) {

    }

    // MARK: - View Will Disappear
    override func viewWillDisappear(_ animated: Bool) {

    }

    // MARK: - Additional Functions


}

// MARK: - Autolayout for UICOmponents
extension WelcomePageVC {

    // MARK: - Setting Up Autolayout for UI Components
    func setupLayout() {

        autoLayoutForBgImage()

        autoLayoutForMainView()

        autoLayoutForLblWelcome()

        autoLayoutForLblDesc()

        autoLayoutForControlLaguage()

        autoLayoutforImgMain()
        
        autoLayoutForBtnStart()

    }

    // MARK: - Autolayout

    func autoLayoutForBgImage() {

        view.addSubview(bgImage)

        NSLayoutConstraint.activate([

            bgImage.topAnchor.constraint(equalTo: view.topAnchor),

            bgImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            bgImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            bgImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)

        ])
    }

    func autoLayoutForMainView() {

        view.addSubview(mainView)

        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),

            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
    }


    func autoLayoutForLblWelcome() {

        mainView.addSubview(lblWelcome)

        NSLayoutConstraint.activate([

            lblWelcome.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 120),

            lblWelcome.centerXAnchor.constraint(equalTo: mainView.centerXAnchor)
        ])
    }

    func autoLayoutForLblDesc() {

        mainView.addSubview(lblDesc)

        NSLayoutConstraint.activate([

            lblDesc.topAnchor.constraint(equalTo: lblWelcome.bottomAnchor, constant: 16),

            lblDesc.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 48),

            lblDesc.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -48)
        ])
    }

    func autoLayoutForControlLaguage() {

        mainView.addSubview(controlLaguage)

        NSLayoutConstraint.activate([

            controlLaguage.topAnchor.constraint(equalTo: lblDesc.bottomAnchor, constant: 16),

            controlLaguage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),

            controlLaguage.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3),

            controlLaguage.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.035)

        ])
    }

    func autoLayoutforImgMain() {

        mainView.addSubview(imgMain)

        NSLayoutConstraint.activate([

            imgMain.topAnchor.constraint(equalTo: controlLaguage.bottomAnchor, constant: 16),

            imgMain.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),

            imgMain.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.9),

            imgMain.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.5)
            
        ])
        
    }
    
    func autoLayoutForBtnStart(){
        
        mainView.addSubview(btnStart)
        
        NSLayoutConstraint.activate([
        
            btnStart.topAnchor.constraint(equalTo: imgMain.bottomAnchor, constant: 0),
            
            btnStart.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            
            btnStart.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.9),
            
            btnStart.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.07)
        ])
    }

}

// MARK: - Actions for UIComponents
extension WelcomePageVC {

    // MARK: - Setup Actions for UIComponents
    func setupUIAction() {

    }



}

extension WelcomePageVC {

    // MARK: - API Call
    func apiCall() {

    }

}
