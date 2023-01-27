//
//  PastReportsCell.swift
//  Login_Programatic_Minty
//
//  Created by Kritagya Parajuli on 12/1/22.
//

import UIKit

class PastReportsCell: UITableViewCell {
    
    lazy var imgVector : UIImageView = {
        let imgVector = UIImageView()
        
        imgVector.translatesAutoresizingMaskIntoConstraints = false
        imgVector.contentMode = .scaleAspectFit
        
        return imgVector
    }()
    
    lazy var lblTitle : UILabel = {
        let lblTitle = UILabel()
        
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        lblTitle.textColor = .white
        
        return lblTitle
    }()
    
    lazy var lblDate : UILabel = {
        let lblDate = UILabel()
        
        lblDate.translatesAutoresizingMaskIntoConstraints = false
        lblDate.text = "2021 - 01 - 23"
        lblDate.font = UIFont.systemFont(ofSize: 12, weight: .thin)
        lblDate.textColor = .white
        
        
        return lblDate
    }()
    
    lazy var stkTitle : UIStackView = {
        let stkTitle = UIStackView()
        
        stkTitle.translatesAutoresizingMaskIntoConstraints = false
        stkTitle.addArrangedSubview(lblTitle)
        stkTitle.addArrangedSubview(lblDate)
        stkTitle.axis = .vertical
        stkTitle.spacing = 2
        
        return stkTitle
    }()
    
    lazy var btnReportsState : UIButton = {
        let btnReportsState = UIButton()
        
        btnReportsState.translatesAutoresizingMaskIntoConstraints = false
        btnReportsState.setTitle("Pending", for: .normal)
        btnReportsState.backgroundColor = .white
        btnReportsState.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        btnReportsState.setTitleColor(UIColor.red, for: .normal)
        btnReportsState.layer.cornerRadius = 8
        btnReportsState.layer.masksToBounds = true
        
        
        return btnReportsState
    }()

   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        
        super.init( style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setup(){
        contentViewConfig()
        autoLayoutForImgVector()
        autoLayoutforStkTitle()
        autoLayoutBtnState()
    }
    
    private func contentViewConfig(){
        
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 65)
        ])
    }
    
 
    private func autoLayoutForImgVector(){
        contentView.addSubview(imgVector)
        
        NSLayoutConstraint.activate([
            imgVector.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imgVector.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 32),
            imgVector.heightAnchor.constraint(equalToConstant: 20),
            imgVector.widthAnchor.constraint(equalToConstant: 20)
        ])
        
    }
    
    private func autoLayoutforStkTitle(){
        contentView.addSubview(stkTitle)
        
        NSLayoutConstraint.activate([
            stkTitle.centerYAnchor.constraint(equalTo: imgVector.centerYAnchor),
            stkTitle.leadingAnchor.constraint(equalTo: imgVector.trailingAnchor, constant: 15),
            
        ])
    }
    
    private func autoLayoutBtnState(){
        contentView.addSubview(btnReportsState)
        
        NSLayoutConstraint.activate([
            btnReportsState.centerYAnchor.constraint(equalTo: imgVector.centerYAnchor),
            btnReportsState.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            btnReportsState.widthAnchor.constraint(equalToConstant: 80),
            btnReportsState.heightAnchor.constraint(equalToConstant: 25)
            
            
        ])
    }

}
