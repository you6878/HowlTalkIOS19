//
//  NotificationModel.swift
//  HowlTalk
//
//  Created by 유명식 on 2017. 12. 6..
//  Copyright © 2017년 swift. All rights reserved.
//

import ObjectMapper

class NotificationModel: Mappable {
    
    public var to :String?
    public var notification: Notification = Notification()
    
    init() {
        
    }
    required init?(map: Map) {
        
    }
     func mapping(map: Map) {
        to <- map["to"]
        notification <- map["notification"]
    }
    class Notification :Mappable{
        
        public var title :String?
        public var text :String?
        
        init() {
            
        }
        required init?(map: Map) {
            
        }
        func mapping(map: Map) {
            title <- map["title"]
            text <- map["text"]
        }
    }
    

}
