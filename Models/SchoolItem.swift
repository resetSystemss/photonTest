//
//  SchoolItem.swift
//  TestPhoton
//
//  Created by José González on 2/14/24.
//

import Foundation

struct SchoolItem: Codable {
    let dbn: String
    let schoolName: String
    let boro: String
    let overviewParagraph: String
    let location: String
    
    enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case overviewParagraph = "overview_paragraph"
        case boro
        case location
    }
}

extension SchoolItem {
    static var mock: SchoolItem {
        SchoolItem(dbn: "303",
                   schoolName: "BUAP",
                   boro: "M",
                   overviewParagraph: "Students who are prepared for college must have an education that encourages them to take risks as they produce and perform. Our college preparatory curriculum develops writers and has built a tight-knit community. Our school develops students who can think analytically and write creatively. Our arts programming builds on our 25 years of experience in visual, performing arts and music on a middle school level. We partner with New Audience and the Whitney Museum as cultural partners. We are a International Baccalaureate (IB) candidate school that offers opportunities to take college courses at neighboring universities.",
                   location: "10 East 15th Street, Manhattan NY 10003 (40.736526, -73.992727)")
    }
}
