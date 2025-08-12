//
//  FeedCell.swift
//  InstragranClon
//
//  Created by German David Vertel Narvaez on 12/08/25.
//

import SwiftUI


struct FeedCell: View {
    var body: some View {
        VStack{
            // image + username
            HStack{
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                Text("Batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading,8)
            
            //Post image
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // action buttons
            HStack(spacing: 16){
                Button(action: {
                    print("like post")
                }){
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button(action: {
                    print("comment post")
                }){
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button(action: {
                    print("like post")
                }){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
            
            //likes label
            
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            
            // caption label
            
            HStack{
                Text("Batman ").fontWeight(.semibold) +
                Text("This is some text caption for naw this is some test caption")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }        
    
    }
}


#Preview {
    FeedCell()
}
