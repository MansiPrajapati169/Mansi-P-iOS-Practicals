//
//  Constants.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 18/04/22.
//

import Foundation
import UIKit

struct Constants {
    
    //MARK: - Main
    static let iosAIdentifier = "signUpViewController"
    static let iosCIdentifier = "uiComponentTasksViewController"
    static let iosChapFour = "loginViewController"
    static let iosDIdentifier = "sendMessageNavigationController"
    static let signUpStoryBoard = "SignUpScreen"
    static let signUpLoginStoryBoard = "SignUpLogin"
    static let loginStoryBoard = "LoginApi"
    
    //MARK: - BasicLayout
    static let basicAutoLayout = "basicLayout"
    static let unwindSegue = "unwindSegue"
    
    //MARK: - UIComponents
    static let signUpIdentifier = "signupViewController"
    static let loginIdentifier = "loginViewController"
    static let dataTableViewCell = "dataTableViewCell"
    static let collectionCell = "collectionCell"
    static let detailSegue = "detailSegue"
    static let tableViewIdentifier = "tableViewController"
    static let tabBarStoryBoard = "TabBar"
    static let tabBarIdentifier = "tabBarViewController"
    static let progress: Float = 1.0
    static let progressDuration = 5.0
    
    static let one: CGFloat = 1
    static let two: CGFloat = 2
    static let four: CGFloat = 1
    static let intOne = 1
    static let intTwo = 2
    static let fifty: CGFloat = 50
    static let hundred: CGFloat = 100
    static let ten: CGFloat = 10
    static let twoThausand: Double = 2000
    static let threeThausand: Double = 3000
    static let mapDuration: Double = 3.0
    static let googleUrl = "https://google.com"
    
    //MARK: - StoryBoard Names
    static let dataTableViewStoryBoard = "DataTableViewCell"
    static let navigationStoryBoard = "Navigation"
    static let mainStoryBoard = "Main"
    
    //MARK: - Navigation Controller
    static let receiveMessageIdentifier = "receiveMessageNavigationController"
    static let sendMessageIdentifier =  "sendMessageNavigationController"
    static let viewController = "viewController"
    static let firstCell = "firstCell"
    static let secondCell = "secondCell"
    static let thirdIdentifier = "thirdViewController"
    static let fourthIdentifier = "fourthViewController"
    static let fifthIdentifier = "fifthViewController"
    static let tableViewFooterIdentifier = "tableViewFooterTitle"
    static let receiveMessageController = "receiveMessageNavigationController"
    
    //MARK: - Web Services
    static let get = "GET"
    static let post = "POST"
    static let applicationJson = "application/json"
    static let contentType = "Content-Type"
    static let addUserUrl = "https://reqres.in/api/users"
    static let listUserUrl = "https://reqres.in/api/users?delay=3"
    static let loginApiUrl = "https://reqres.in/api/login"
    static let userDetailsUrl = "https://reqres.in/api/users/"
    static let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    static let emailFormat = "SELF MATCHES %@"
    static let userDetailsIdentifier = "userDetailsViewController"
    static let listUserCellIdentifier = "listUserCell"
    static let addUserViewIdentifier = "addUserView"
    static let listUserIdentifier = "listUser"
    
    //MARK: - Architecture
    static let architectureIdentifier = "architectureTasksViewController"
    static let mvpIdentifier = "mvpViewController"
    static let mvcIdentifier = "mvcViewController"
    static let mvcStoryBoard = "MVCStoryboard"
    static let mvpStoryBoard = "MVPStoryboard"
    static let loginMvvmViewController = "loginMvvmViewController"
    static let songCellIdentifier = "songCell"
}
