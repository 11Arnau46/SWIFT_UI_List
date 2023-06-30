//
//  videoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct videoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView{
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video: video), label:{
                    VideoCell(video: video)
                })
                
            }
            .navigationTitle("Arnau's top 10")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        videoListView()
    }
}

struct VideoCell: View {
    var video: Video
    var body: some View{
        HStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame (height: 70)
                .cornerRadius(4)
                .padding(.vertical,5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
