//
//  StoryViewModel.swift
//  Instagram
//
//  Created by Rohit Patil on 01/03/23.
//

import SwiftUI

class StoryViewModel: ObservableObject{
    
    //List of stories...
    @Published var stories:[StoryBundle] = [
    
        StoryBundle(profileName: "iJustine", profileImage: "Itachi-2", stories: [
        
            Story(imageURL: "Naruto"),
            Story(imageURL: "Itachi"),
            Story(imageURL: "Itachi-2")
            
        ]),
        
        StoryBundle(profileName: "Jenna", profileImage: "Itachi", stories: [
        
            Story(imageURL: "Itachi"),
            Story(imageURL: "Naruto"),
            
        ])
        
    ]
    
    @Published var showStory:Bool = false
    @Published var currentStory:String = ""
}
