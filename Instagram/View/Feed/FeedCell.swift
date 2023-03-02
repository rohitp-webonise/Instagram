//
//  FeedCell.swift
//  Instagram
//
//  Created by Rohit Patil on 28/02/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image("Naruto")
                    .resizable()
                    .scaledToFill()
                    .frame(width:36,height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14,weight: .semibold))
            }
            .padding([.leading,.bottom],8)
            //PostImage
            Image("Naruto")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 300)
                .clipped()
            
            
            //Actionbuttons
            HStack(spacing:16){
                Button(action: { },label:  {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width:22,height: 22)
                        .font(.system(size: 20))
                        .padding(4)
                })
            
                Button(action: { },label:  {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width:22,height: 22)
                        .font(.system(size: 20))
                        .padding(4)
                })
            
                Button(action: { },label:  {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width:22,height: 22)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding(.leading,4)
            .foregroundStyle(.black)
            
            //caption
            Text("3 Likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading,8)
                .padding(.bottom,2)
            
            HStack{
                Text("naruto").font(.system(size: 14,weight: .semibold)) +
                Text("If You don't like the hand that fate’s dealt you with, fight for a new one.")
                    .font(.system(size: 15))
            }.padding(.horizontal,8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
                .padding(.leading,8)
                .padding(.top,-2)
            
            Spacer()
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
