//
//  Organization.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct Organization: Codable {
    let name: String
    let description: String
    let address: String
    let borough: Borough
    let phone: String
    let email: String
    let website: String
    let donateURL: String
    let logoString: String//Stored in assets folder
    let type: OrganizationType
    var actions: [Action]
    
    static let allOrganizations = [
        Organization(name: "Black Lives Matter", description: "Black Lives Matter Foundation, Inc is a global organization in the US, UK, and Canada, whose mission is to eradicate white supremacy and build local power to intervene in violence inflicted on Black communities by the state and vigilantes. ", address: "33 E 17th St, New York, NY 10003", borough: .manhattan, phone: "212-111-1111", email: "fake@bml.com", website: "https://blacklivesmatter.com/", donateURL: "https://secure.actblue.com/donate/ms_blm_homepage_2019", logoString: "BlackLivesMatterLogo", type: .movement, actions: [Action]()),
        Organization(name: "Color of Change", description: "We help people respond effectively to injustice in the world around us. As a national online force driven by 1.7 million members, we move decision-makers in corporations and government to create a more human and less hostile world for Black people in America.", address: "10 Grand Army Plaza, Brooklyn, NY 11238", borough: .brooklyn, phone: "646-111-1111", email: "fake@colorofchange.com", website: "https://colorofchange.org", donateURL: "https://secure.actblue.com/contribute/page/support-us", logoString: "ColorOfChangeLogo", type: .nonprofit, actions: [Action]()),
        Organization(name: "Black Alliance for Just Immigration", description: "BAJI educates and engages African American and black immigrant communities to organize and advocate for racial, social and economic justice.", address: "36-01 35th Ave, Astoria, NY 11106", borough: .queens, phone: "718-111-1111", email: "fake@baji.com", website: "https://baji.org/", donateURL: "https://donorbox.org/baji-black-migrants-journeying-to-the-us-mexico-border", logoString: "BAJILogo", type: .nonprofit, actions: [Action]()),
        Organization(name: "NAACP Legal Defense and Educational Fund", description: "The NAACP Legal Defense and Educational Fund, Inc. is America’s premier legal organization fighting for racial justice. ", address: "40 Rector Street, New York, NY 10006", borough: .manhattan, phone: "(212)-965-2200", email: "fake@ldf.org", website: "https://www.naacpldf.org/", donateURL: "https://org2.salsalabs.com/o/6857/p/salsa/donation/common/public/?donate_page_KEY=15780&_ga=2.99302878.1759281725.1592066124-1336823071.1592066124", logoString: "LDFLogo", type: .nonprofit, actions: [Action]()),
        Organization(name: "CUNY Black Law Students Association", description: "The Black Law Students Association (BLSA) at CUNY School of Law is committed to supporting the success and empowerment of its members by maintaining a student mentorship program, hosting alumni networking activities, and fundraising to award annual summer fellowships to students partaking in internships serving the Black community.", address: "2 Ct Square W, Long Island City, NY 11101", borough: .queens, phone: "718-111-1111", email: "fake@cunyblsa.ued", website: "https://www.nblsa.org/", donateURL: "https://nationalblsa.wildapricot.org/donate", logoString: "NBLSALogo", type: .academic, actions: [Action]())
            
    ]
}

enum OrganizationType: String, Codable {
    case movement
    case nonprofit
    case forProfit
    case lobby
    case academic
    case individual
}

enum Borough: String, Codable {
    case manhattan = "Manhattan"
    case brooklyn = "Brooklyn"
    case queens = "Queens"
    case bronx = "The Bronx"
    case statenIsland = "Staten Island"
    case multiple = "Multiple"
}
