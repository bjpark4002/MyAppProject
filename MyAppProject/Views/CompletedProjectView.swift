//
//  CompletedProjectView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 12/12/22.
//

import SwiftUI

struct CompletedProjectView: View {
    var body: some View {
        VStack{
            Spacer()
            Text(" Hi Name!")
            Text(" # Completed Tasks")
            Spacer()
            ScrollView(){
                ProjectSummaryView()
                ProjectSummaryView()
                ProjectSummaryView()
                ProjectSummaryView()
                
            }
        }
    }
}

struct CompletedProjectView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedProjectView()
    }
}
