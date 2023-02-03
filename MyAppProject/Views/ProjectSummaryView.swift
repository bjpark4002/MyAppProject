//
//  ProjectSummaryView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 2/3/23.
//

import SwiftUI

struct ProjectSummaryView: View {
    var body: some View {
        VStack{
            HStack{
                Image("placeholderMan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: ScreenWidth * 0.15, height : ScreenHeight * 0.15)
                    .clipShape(Circle())
                    .padding()
                
                VStack(alignment: .leading){
                    Text("Proejct Title")
                    Text("Subject")
                    Text("Start Date")
                    Text("End Date")
                }
            }

//            Text("This is the Summary of single task")

        }.frame(width: ScreenWidth * 0.75, height: ScreenHeight * 0.2)
            .background(Color.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            .shadow(radius:3 )
    }
}

struct ProjectSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectSummaryView()
    }
}

// below is for partial corner radius
struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
