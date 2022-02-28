//
//  UserData.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 29/03/22.
//

struct Response: Codable {
    let page, perPage, total, totalPages: Int
    let data: [Users]
    let support: Support
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data
        case support
    }
}

struct Users: Codable {
    let id: Int
    let email, firstName, lastName, avatar: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

struct Support: Codable {
    let url: String
    let text: String
}

struct SingleUser: Codable {
    let data: Users
    let support: Support
}

struct AddUser: Codable {
    let name: String
    let id: String
    let job: String
    let createdAt: String
}

struct UploadData: Codable {
    let email: String
    let password: String
}
