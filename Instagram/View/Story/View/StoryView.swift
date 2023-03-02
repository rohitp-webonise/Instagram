//
//  StoryView.swift
//  Instagram
//
//  Created by Rohit Patil on 01/03/23.
//

import SwiftUI

struct StoryView: View {
    @StateObject var storyData = StoryViewModel()
    var body: some View {
        NavigationView{
                ScrollView(.horizontal){
                    HStack(spacing:12){
                        Button{
                            
                        }label: {
                            Image("Naruto")
                                .resizable()
                                .aspectRatio(contentMode:.fill)
                                .frame(width: 65, height:65)
                                .clipShape(Circle())
                                .overlay(
                                    Image(systemName: "plus")
                                        .padding(7)
                                        .background(.blue,in:Circle())
                                        .foregroundColor(.white)
                                        .padding(2)
                                        .background(.black,in: Circle())
                                        .offset(x:8, y:0.5 )
                                        
                                    ,alignment: .bottomTrailing
                                )
                        }
                        
                        ForEach($storyData.stories){ $bundle in
                            ProfileStoryView(bundle: $bundle)
                        }
                    }
                    .padding()
                   .padding(.top)
                }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

//
//struct ProfileStoryView:View{
//    @Binding var bundle:StoryBundle
//    @Environment(\.colorScheme) var scheme
//    var body: some View{
//        Image(bundle.profileImage)
//            .resizable()
//            .aspectRatio(contentMode:.fill)
//            .frame(width: 65, height:65)
//            .clipShape(Circle())
//            .padding(2)
//            .background(scheme == .dark ? .black : .white, in:Circle())
//            .padding(2)
//            .background(
//                
//                LinearGradient(colors: [
//                    
//                    .red,
//                    .orange,
//                    .red,
//                    .orange
//                    
//                ],
//                startPoint: .top,
//                endPoint: .bottom)
//                    .clipShape(Circle())
//                    .opacity(bundle.isSeen ? 0:1)
//            )
//            .onTapGesture {
//                withAnimation {
//                    bundle.isSeen = true
//                }
//            }
//    }
//}
