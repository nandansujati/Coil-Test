//
//  CanvasEventsModal.h
//  COIL
//
//  Created by Aseem 13 on 23/04/16.
//  Copyright © 2016 Aseem 9. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CanvasEventsModal : NSObject
@property (nonatomic, strong) NSString *EventTitle;
@property (nonatomic, strong) NSString *EventStartAt;

-(id)ListAttributes :(NSDictionary*)Dict;
-(NSMutableArray*)ListmethodCall:(NSMutableArray*)arrayFromServer;
@property(strong, nonatomic)NSMutableArray *FinalArray;
@end
