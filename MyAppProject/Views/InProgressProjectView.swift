//
//  InProgressProjectView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 12/12/22.
//

import SwiftUI

struct InProgressProjectView: View {
    var body: some View {
        VStack{
            Spacer()
            Text(" Hi Name!")
            Text(" # InProgress Tasks")
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

struct InProgressProjectView_Previews: PreviewProvider {
    static var previews: some View {
        InProgressProjectView()
    }
}
