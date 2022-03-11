//
//  Storyboarded.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import UIKit
import Foundation

/// Storyboards
enum Storyboard: String {
    case songs = "SongsStoryboard"
    case songsDetails = "SongDetailsStoryboard"
    case architecture = "ArchitectureTasks"
    case main = "Main"
}

/// Storyboarded
protocol Storyboarded {
    static func instantiate(from storyboard: Storyboard) -> Self
}

// MARK: - Storyboarded extension to return view controller
extension Storyboarded where Self: UIViewController {
    
    /// Instantiate
    static func instantiate(from storyboard: Storyboard) -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
