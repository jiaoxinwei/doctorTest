//
//  BaseTabBarViewController.swift
//  DoctorTest
//
//  Created by 茭白 on 2017/1/19.
//  Copyright © 2017年 茭白. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //tabBar.tintColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        tabBar.tintColor=UIColor.black
        // 添加子控制器
        
        addChildViewControllers()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func addChildViewControllers (){
        
        
        let homeVC:MianChatListViewController! = MianChatListViewController()
        
        let cricleVC:DTCricleViewController! = DTCricleViewController()
        let mineVC:DTMyViewController! = DTMyViewController()
        //主页面
        let homeNav:BaseNavigationController = BaseNavigationController(rootViewController: homeVC)
        homeVC.navigationItem.title = "主页"
        //构造器的知识点
        let homeItem = UITabBarItem(title: "主页", image: UIImage(named: "bt_bottom_mess0"), selectedImage:UIImage(named: "bt_bottom_mess1"))
        homeNav.tabBarItem = homeItem
        
        
        //消息
        cricleVC.navigationItem.title = "圈子"
        let cricleNav:BaseNavigationController = BaseNavigationController(rootViewController: cricleVC)
        let cricleItem = UITabBarItem(title: "圈子", image: UIImage(named: "bt_bottom_mine0"), selectedImage: UIImage(named: "bt_bottom_mine1"))
        cricleNav.tabBarItem = cricleItem
        
        
        //我的
        mineVC.navigationItem.title = "我的"
        let mineNav:BaseNavigationController = BaseNavigationController(rootViewController: mineVC)
        let mineItem = UITabBarItem(title: "我的", image: UIImage(named: "bt_bottom_social0"), selectedImage: UIImage(named: "bt_bottom_social1"))
        mineNav.tabBarItem = mineItem
        
        self.tabBar.tintColor = UIColor.red
        self.viewControllers = [homeNav,cricleNav,mineNav]
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
