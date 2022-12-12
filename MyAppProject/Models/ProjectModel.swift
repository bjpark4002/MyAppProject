//
//  ProjectModel.swift
//  MyAppProject
//
//  Created by Bumjin Park on 5/29/22.
//

import Foundation


//Identifiable

// Identifiable 를 선언하면
// foreach 등으로 각 아이템을 출력할 때,
// id 를 따로 설정해 줄 필요가 없음.

struct ProjectModel : Identifiable {
    var id = UUID().uuidString
    var startDate : Date
    var endDate : Date
    var title : String
    var subTitle :String
    var status : StatusEnum
    var notes : String
    
    init(){
        startDate = Date()
        endDate = Date()
        title = ""
        subTitle = ""
        status = StatusEnum.Ready
        notes = ""
    }
    
}
