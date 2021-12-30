//
//  Course.swift
//  Nadine
//
//  Created by SEAN BLAKE on 12/29/21.
//

import Foundation

struct Course: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
}

var courses = [
    Course(title: "Swift for iOS 15", subtitle: "20 sections - 3 hours", text: "Build an iOS app for iOS 15 with custom layouts, animations and ...", image: "Illustration 5", logo: "Logo 2"),
    Course(title: "How to Cook Oxtail", subtitle: "5 sections - 3 hours", text: "Learn how to make Jamaican style Oxtail that is finger licking good.", image: "Illustration 3", logo: "Logo 4"),
    Course(title: "Speak Vietnamese", subtitle: "50 sections - 10 hours", text: "Learn to speak the basic Vietnamese language of South Vietnam along with the correct pronunciations", image: "Illustration 1", logo: "Logo 1"),
    Course(title: "React Hooks Advanced", subtitle: "10 sections - 3 hours", text: "Learn how to build a website with Typescript, Hooks, Contentful and Gatsby Cloud", image: "Illustration 2", logo: "Logo 3")
]
