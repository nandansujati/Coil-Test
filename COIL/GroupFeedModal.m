//
//  GroupFeedModal.m
//  COIL
//
//  Created by Aseem 9 on 22/03/16.
//  Copyright © 2016 Aseem 9. All rights reserved.
//

#import "GroupFeedModal.h"

@implementation GroupFeedModal
-(id)ListAttributes :(NSDictionary*)Dict
{
    GroupFeedModal *data=[[GroupFeedModal alloc]init];
    
    data.postId = [Dict valueForKey:@"id"];
    data.title = [Dict valueForKey:@"title"];
    data.post_type = [Dict valueForKey:@"post_type"];
    data.media = [Dict valueForKey:@"media"];
    data.thumb=[Dict valueForKey:@"thumb"];
    data.media_type=[Dict valueForKey:@"media_type"];
    data.created_at=[Dict valueForKey:@"created_at"];
    data.MemberName=[Dict valueForKey:@"name"];
    data.MemberImage=[Dict valueForKey:@"image"];
    data.like_count=[Dict valueForKey:@"like_count"];
    data.comment_count=[Dict valueForKey:@"comment_count"];
    data.is_liked=[Dict valueForKey:@"i_liked"];
    data.groupName = [[Dict valueForKey:@"group"] valueForKey:@"name"];
    data.Course_ids=[[Dict valueForKey:@"group"]valueForKey:@"course_id"];
    data.activeMemberCount = [Dict valueForKey:@"member_count"];
    return data;
    
}



-(NSMutableArray*)ListmethodCall:(NSMutableArray*)arrayFromServer
{
    _FinalArray=[[NSMutableArray alloc]init];
    
    for(NSDictionary *eachPlace in arrayFromServer)
    {
        GroupFeedModal *obj = [[GroupFeedModal alloc] ListAttributes:eachPlace];
        
        [_FinalArray addObject:obj];
        
    }
    return _FinalArray;
}
@end
