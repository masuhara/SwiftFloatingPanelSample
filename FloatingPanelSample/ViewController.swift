//
//  ViewController.swift
//  FloatingPanelSample
//
//  Created by Masuhara on 2019/06/10.
//  Copyright © 2019 Ylab Inc. All rights reserved.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController {
    
    var floatingPanelController: FloatingPanelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSecondViewController()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 閉じる
        floatingPanelController.removePanelFromParent(animated: true)
    }

    func setSecondViewController() {
        // floatingPanelを初期化
        floatingPanelController = FloatingPanelController()
        
        // Main.storyboardファイルを取得
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Storyboard上の"SecondViewController"というidentifierを付けたViewControllerを取得
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        // floatingPanelControllerにさっき取得したViewControllerをセット
        floatingPanelController.set(contentViewController: secondViewController)
        floatingPanelController.addPanel(toParent: self, belowView: nil, animated: true)
    }
    
    

}

