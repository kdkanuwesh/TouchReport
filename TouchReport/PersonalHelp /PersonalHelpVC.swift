//
//  PersonalHelpVC.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 09/12/2022.
//
import UIKit

class PersonalHelpVC: UIViewController {
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//    

    // Mark: - Constant and varibles

    // Mark: - Initialization
    lazy var helpView: UIView = {

        let helpView = UIView()

        helpView.translatesAutoresizingMaskIntoConstraints = false

        helpView.backgroundColor = .clear

        return helpView

    }()

    lazy var helpScrollView: UIScrollView = {

        let helpScrollView = UIScrollView()

        helpScrollView.isScrollEnabled = true

        helpScrollView.backgroundColor = .clear

        helpScrollView.translatesAutoresizingMaskIntoConstraints = false

        return helpScrollView

    }()

    lazy var bgImageView: UIImageView = {

        var bgImageView = UIImageView(image: UIImage(named: "Background"))

        bgImageView.translatesAutoresizingMaskIntoConstraints = false

        bgImageView.contentMode = .scaleAspectFill

        bgImageView.clipsToBounds = true

        return bgImageView

    }()
    
    lazy var lblPersonalHelp: UILabel = {
        
        let lblPersonalHelp = UILabel()

        lblPersonalHelp.translatesAutoresizingMaskIntoConstraints = false

        lblPersonalHelp.numberOfLines = 1

        lblPersonalHelp.text = "What has happened?"

        lblPersonalHelp.textColor = .white

        lblPersonalHelp.font = UIFont.systemFont(ofSize: 30, weight: .semibold)

        return lblPersonalHelp
        
    }()
    
    lazy var tblPersonalHelp : UITableView = {
        
        let tblPersonalHelp = UITableView()
        
        tblPersonalHelp.translatesAutoresizingMaskIntoConstraints = false
        
//        tblPersonalHelp.delegate = self
//
//        tblPersonalHelp.dataSource = self
//
        tblPersonalHelp.backgroundColor = .clear
        
        tblPersonalHelp.separatorStyle = .none
        
     //   tblPersonalHelp.register(PastReportsCell.self, forCellReuseIdentifier: "PastReportsCell")
        
        return tblPersonalHelp
    }()






    // Mark: - View Controller Function

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()


    }
}

//Mark: - Additional functions


extension PersonalHelpVC {

    func setupLayout() {
        
        autoLayoutForbgImage()
        
        autoLayoutForhelpScrollView()
        
        autoLayoutForhelpView()
        
        autoLayoutForlblPersonalHelp()

    }

    //Mark: - AutoLayout

    func autoLayoutForhelpScrollView () {

        view.addSubview(helpScrollView)

        NSLayoutConstraint.activate([

            helpScrollView.topAnchor.constraint(equalTo: view.topAnchor),

            helpScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            helpScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            helpScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])

    }


    func autoLayoutForhelpView () {

        helpScrollView.addSubview(helpView)

        NSLayoutConstraint.activate([

            helpView.topAnchor.constraint(equalTo: helpScrollView.topAnchor),

            helpView.leadingAnchor.constraint(equalTo: helpScrollView.leadingAnchor),

            helpView.trailingAnchor.constraint(equalTo: helpScrollView.trailingAnchor),

            helpView.bottomAnchor.constraint(equalTo: helpScrollView.bottomAnchor)

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
    
    func autoLayoutForlblPersonalHelp() {
        
        helpView.addSubview(lblPersonalHelp)

        let safeLayout = helpView.layoutMarginsGuide

        NSLayoutConstraint.activate([
            lblPersonalHelp.topAnchor.constraint(equalTo: safeLayout.topAnchor, constant: 45),
            
            lblPersonalHelp.leadingAnchor.constraint(equalTo: safeLayout.leadingAnchor, constant: 24),
            
            lblPersonalHelp.trailingAnchor.constraint(equalTo: safeLayout.trailingAnchor, constant: 24)
        ])
    }
    
    func autoLayoutFortblPersonalHelp(){
        helpView.addSubview(tblPersonalHelp)
        
        NSLayoutConstraint.activate([
            tblPersonalHelp.topAnchor.constraint(equalTo: lblPersonalHelp.bottomAnchor, constant: 52),
            tblPersonalHelp.bottomAnchor.constraint(equalTo: helpView.bottomAnchor),
            tblPersonalHelp.leadingAnchor.constraint(equalTo: helpView.leadingAnchor),
            tblPersonalHelp.trailingAnchor.constraint(equalTo: helpView.trailingAnchor)
        ])
    }
}














