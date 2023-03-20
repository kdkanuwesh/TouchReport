//
//  LandingPageVC.swift
//  TouchReport
//
//  Created by Anuwesh Khadka on 28/11/2022.
//

import UIKit
import Charts
import Foundation

class LandingPageVC: UIViewController, ChartViewDelegate {

    // Mark: - Constant and varibles

    // Mark: - Initialization

    lazy var imgBg: UIImageView = {
        
        let imgBg = UIImageView()

        imgBg.translatesAutoresizingMaskIntoConstraints = false
        
        imgBg.image = UIImage(named: "Background2")
        
        imgBg.contentMode = UIView.ContentMode.scaleAspectFill
        
        self.view.insertSubview(imgBg, at: 0)

        return imgBg
    }()


    lazy var landingView: UIView = {

        let landingView = UIView()

        landingView.translatesAutoresizingMaskIntoConstraints = false

        view.backgroundColor = .white

        landingView.backgroundColor = .clear

        return landingView
    }()

    lazy var scrollView: UIScrollView = {

        let scrollView = UIScrollView()

        scrollView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.isScrollEnabled = true


        scrollView.backgroundColor = .clear

        return scrollView
    }()

    lazy var statisticsView: UIView = {

        let statisticView = UIView()

        statisticView.translatesAutoresizingMaskIntoConstraints = false
        
        statisticView.layer.cornerRadius = 12

        statisticView.backgroundColor = Colors.textFieldBG.getColors()

        return statisticView

    }()

    lazy var imgLogo: UIImageView = {

        let imgLogo = UIImageView()

        imgLogo.translatesAutoresizingMaskIntoConstraints = false

        imgLogo.contentMode = .scaleAspectFill

        imgLogo.clipsToBounds = true

        imgLogo.image = UIImage(named: "IncidentIcon")


        return imgLogo
    }()

    lazy var lblTile: UILabel = {

        let lblTile = UILabel()

        lblTile.translatesAutoresizingMaskIntoConstraints = false

        lblTile.numberOfLines = 1

        lblTile.text = "TouchReport"

        lblTile.textColor = .white

        lblTile.font = UIFont.systemFont(ofSize: 18, weight: .semibold)


        return lblTile
    }()

    lazy var stackView: UIStackView = {

        let stackView = UIStackView()

        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.axis = .horizontal

        stackView.alignment = .fill

        stackView.spacing = 4

        stackView.addArrangedSubview(imgLogo)

        stackView.addArrangedSubview(lblTile)

        return stackView
    }()

    lazy var lblStatistics: UILabel = {

        let lblTile = UILabel()

        lblTile.translatesAutoresizingMaskIntoConstraints = false

        lblTile.numberOfLines = 1

        lblTile.text = "Today’s statistics"

        lblTile.textColor = .white

        lblTile.font = UIFont.systemFont(ofSize: 30, weight: .semibold)


        return lblTile
    }()

    lazy var pieChart: PieChartView = {

        let pieChart = PieChartView()
        
        pieChart.legend.enabled = true

        pieChart.legend.verticalAlignment = .bottom

        pieChart.legend.orientation = .vertical
        
        pieChart.legend.font = UIFont.systemFont(ofSize: 14 ,weight: .regular)
        
        pieChart.legend.textColor = .white
        
        pieChart.legend.yEntrySpace = 16
        
        pieChart.legend.form = .circle

        pieChart.legend.horizontalAlignment = .center
        
        pieChart.drawEntryLabelsEnabled = false

        pieChart.holeRadiusPercent = 0
        
//        pieChart.legend.verticalAlignment = .bottom

        pieChart.transparentCircleColor = UIColor.clear

        pieChart.holeColor = .clear
        
        

        return pieChart
    }()

    lazy var pieView: UIView = {

        let pieView = UIView()

        pieView.translatesAutoresizingMaskIntoConstraints = false

        pieView.backgroundColor = .clear

        return pieView

    }()
    
    lazy var btnViewAll: UIButton = {
        
        let btnViewAll = UIButton()
        
        btnViewAll.translatesAutoresizingMaskIntoConstraints = false

        btnViewAll.backgroundColor = Colors.textFieldBG.getColors()
        
        btnViewAll.setImage(UIImage(named: "fileIcon"), for: .normal)

        btnViewAll.layer.cornerRadius = 12

        btnViewAll.setTitle("  View all reports", for: .normal)
        
        return btnViewAll
        
    }()
    
    lazy var btnAddResponder: UIButton = {
        
        let btnAddResponder = UIButton()

        btnAddResponder.translatesAutoresizingMaskIntoConstraints = false

        btnAddResponder.backgroundColor = Colors.textFieldBG.getColors()
        
        btnAddResponder.setImage(UIImage(named: "fileIcon"), for: .normal)

        btnAddResponder.layer.cornerRadius = 12

        btnAddResponder.setTitle("  Add responder", for: .normal)
        
        
      //  btnLogin.addTarget(self, action: #selector(didTapButtonLogin), for: .touchUpInside)
        return btnAddResponder
        
    }()
    
    lazy var btnStackView: UIStackView = {

        let btnStackView = UIStackView()

        btnStackView.translatesAutoresizingMaskIntoConstraints = false

        btnStackView.axis = .vertical

        btnStackView.spacing = 16
        
        btnStackView.distribution = .fillEqually

        btnStackView.addArrangedSubview(btnViewAll)

        btnStackView.addArrangedSubview(btnAddResponder)

        return btnStackView
    }()




    // Mark: - View Controller Function

    override func viewDidLoad() {

        super.viewDidLoad()

        setupLayout()

        pieChart.delegate = self

        self.navigationController?.isNavigationBarHidden = true



    }

    override func viewDidLayoutSubviews() {

        super.viewDidLayoutSubviews()

        pieChart.frame = CGRect(x: 0, y: 0, width: self.pieView.frame.size.width, height: self.pieView.frame.size.height)

        let track = ["Pending Reports", "Acknowledged Reports", "Cleared Reports"]

        let money = [50, 75, 50.0]

        var entries = [PieChartDataEntry]()

        for (index, value) in money.enumerated() {

            let entry = PieChartDataEntry()

            entry.y = value

            entry.label = track[index]

            entries.append(entry)
        }

        let set = PieChartDataSet(entries: entries)
        
        set.sliceSpace = 4.5
        
        set.label = ""
        
        set.drawValuesEnabled = false

        set.colors = ChartColorTemplates.material()
        
        set.selectionShift = 0

        let data = PieChartData(dataSet: set)

        pieChart.data = data
        
    }

}



//Mark: - Additional functions



//Mark: - AutoLayout




extension LandingPageVC {

    func setupLayout() {

        autoLayoutimgBg()

        autoLayoutForscrollView()

        autoLayoutForlandingView()

        autoLayoutForstatisticsView()

        autolayoutForstackView()

        autoLayoutForlblStatistics()

        autoLayoutForpieView()
        
        autolayoutForbtnStackView()


    }


    func autoLayoutimgBg() {

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)

        backgroundImage.image = UIImage(named: "Background2")

        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill

        self.view.insertSubview(backgroundImage, at: 0)
    }

    func autoLayoutForscrollView() {

        view.addSubview(scrollView)

        NSLayoutConstraint.activate([


            scrollView.topAnchor.constraint(equalTo: view.topAnchor),

            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
    }

    func autoLayoutForlandingView() {

        scrollView.addSubview(landingView)

        NSLayoutConstraint.activate([

            landingView.topAnchor.constraint(equalTo: scrollView.topAnchor),

            landingView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),

            landingView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),

            landingView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

            landingView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)

        ])
    }

    func autoLayoutForstatisticsView() {

        landingView.addSubview(statisticsView)

        NSLayoutConstraint.activate([
            
            statisticsView.topAnchor.constraint(equalTo: landingView.topAnchor),

            statisticsView.leadingAnchor.constraint(equalTo: landingView.leadingAnchor),

            statisticsView.trailingAnchor.constraint(equalTo: landingView.trailingAnchor),

            statisticsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)

        ])

    }

    func autolayoutForstackView() {

        statisticsView.addSubview(stackView)

        // let safeLayout = statisticsView.layoutMarginsGuide

        NSLayoutConstraint.activate([

            stackView.topAnchor.constraint(equalTo: statisticsView.topAnchor, constant: 60),

            stackView.centerXAnchor.constraint(equalTo: statisticsView.centerXAnchor),

            statisticsView.bottomAnchor.constraint(equalTo: statisticsView.bottomAnchor),

            imgLogo.heightAnchor.constraint(equalToConstant: 25),

            imgLogo.widthAnchor.constraint(equalToConstant: 25),

            lblTile.heightAnchor.constraint(equalToConstant: 25)
        ])
    }

    func autoLayoutForlblStatistics() {

        landingView.addSubview(lblStatistics)

        NSLayoutConstraint.activate([

            lblStatistics.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),

            lblStatistics.centerXAnchor.constraint(equalTo: landingView.centerXAnchor),

        ])

    }

    func autoLayoutForpieView() {

        statisticsView.addSubview(pieView)

        pieView.addSubview(pieChart)

        NSLayoutConstraint.activate([

            pieView.topAnchor.constraint(equalTo: lblStatistics.bottomAnchor, constant: 18),

            pieView.centerXAnchor.constraint(equalTo: statisticsView.centerXAnchor),

            pieView.widthAnchor.constraint(equalToConstant: 350),

            pieView.heightAnchor.constraint(equalToConstant: 350),
            
            pieChart.topAnchor.constraint(equalTo: pieView.topAnchor),

            pieChart.bottomAnchor.constraint(equalTo: pieView.bottomAnchor),

            pieChart.trailingAnchor.constraint(equalTo: pieView.trailingAnchor),

            pieChart.leadingAnchor.constraint(equalTo: pieView.leadingAnchor),
        ])
    }
    
    func autolayoutForbtnStackView() {

        landingView.addSubview(btnStackView)

        NSLayoutConstraint.activate([
            
            btnStackView.topAnchor.constraint(equalTo: statisticsView.bottomAnchor, constant: 18),
            
            btnStackView.centerXAnchor.constraint(equalTo: landingView.centerXAnchor),
            
            btnViewAll.heightAnchor.constraint(equalToConstant: 63),
            
            btnAddResponder.heightAnchor.constraint(equalToConstant: 63),
          
            btnStackView.trailingAnchor.constraint(equalTo: landingView.trailingAnchor, constant: -27),
            
            btnStackView.leadingAnchor.constraint(equalTo: landingView.leadingAnchor, constant: 27),
            
            btnStackView.bottomAnchor.constraint(equalTo: landingView.bottomAnchor, constant: -28)
            
            
            
           
            
            

            
        ])
    }
    


}

