//
//  RoutineEndpoints.swift
//  BioMonitor
//
//  Created by Mauricio Cousillas on 8/11/17.
//  Copyright © 2017 Open Fermentor. All rights reserved.
//

import Foundation
import OperaSwift
import RxSwift

struct RoutineEndpoints {

    struct Index: GetRouteType {
        let page: Int

        let path = "/routines"

        var parameters: [String : Any]? {
            return ["page": page]
        }
    }

}

class RoutineController {

    static let shared = RoutineController()

    func index(page: Int) -> Single<RoutinePage> {
        return RoutineEndpoints.Index(page: page).rx.object()
    }

}
