//
//  SongViewModel.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 14/04/22.
//

import Foundation

class SongViewModel {
    
    //MARK: - Variables
    var userName = Dynamic("")
        
    //MARK: -
    func setUserName(name: String){
        let data = LoginModel(name: name)
        userName.value = data.name
    }

    func getSongDetails() -> [SongModel] {
        return [SongModel(image: "BTSWings", songName: "Wings", singer: "BTS"),
                SongModel(image: "BTSWings", songName: "Steal My Girl", singer: "One Direction"),
                SongModel(image: "BTSWings", songName: "Excuses", singer: "AP Dhillon"),
                SongModel(image: "BTSWings", songName: "Born To Shine", singer: "Diljit Dosanjh"),
                SongModel(image: "BTSWings", songName: "Khairiyat", singer: "Arijit Singh")]
    }
}
