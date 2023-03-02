//
//  MainStoryView.swift
//  Instagram
//
//  Created by Rohit Patil on 01/03/23.
//

import SwiftUI

struct MainStoryView: View {
    @EnvironmentObject var storyData: StoryViewModel
    var body: some View {
        if storyData.showStory{
            TabView(selection: $storyData.currentStory) {
                
            }
            .tabViewStyle(.page(indexDisplayMode:.never))
            .frame(maxWidth:.infinity,maxHeight:.infinity)
            .background(.black)
            .transition(.move(edge: .bottom))
            
        }
    }
}

struct MainStoryView_Previews: PreviewProvider {
    static var previews: some View {
        MainStoryView()
    }
}
