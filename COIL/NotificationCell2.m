//
//  NotificationCell2.m
//  COIL
//
//  Created by Aseem 13 on 26/04/16.
//  Copyright © 2016 Aseem 9. All rights reserved.
//

#import "NotificationCell2.h"

@implementation NotificationCell2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCell:(NotificationsModal*)modal
{
    
    NSDictionary *dict1=@{NSFontAttributeName:[UIFont fontWithName:@"SFUIText-SemiBold" size:15.0f],NSForegroundColorAttributeName : [UIColor blackColor]};
    NSDictionary *dict2=@{NSFontAttributeName:[UIFont fontWithName:@"SFUIText-Regular" size:12.0f],NSForegroundColorAttributeName : [UIColor lightGrayColor]};
    NSDictionary *dict3=@{NSFontAttributeName:[UIFont fontWithName:@"SFUIText-SemiBold" size:13.0f],NSForegroundColorAttributeName : [UIColor darkGrayColor]};
    
     NSMutableAttributedString *FirstString=[[NSMutableAttributedString alloc]initWithString:[modal.userName capitalizedString]attributes:dict1];
  

    
    NSMutableAttributedString *MiddleString=[[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@" %@",[self GetMiddleString:modal]] attributes:dict2];
    
    
    NSMutableAttributedString *ThirdString=[[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@" %@",[modal.GroupName capitalizedString]]attributes:dict3];
    
    [FirstString appendAttributedString:MiddleString];
    [FirstString appendAttributedString:ThirdString];
    _lblNotificationTxt.attributedText=FirstString ;
    
    if (modal.UserImage.length!=0)
    {
        NSURL *URLImage=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@/40/40",ImagePath,modal.UserImage]];
        [self.imageUser sd_setImageWithURL:URLImage placeholderImage:[UIImage imageNamed:@"img_placeholder_user"]];
    }
    else
        self.imageUser.image=[UIImage imageNamed:@"img_placeholder_user"];
    
    _lblPost.text=[[SharedClass SharedManager] GetTimePeriodLeftForNotification:modal];

}

-(NSString *)GetMiddleString:(NotificationsModal*)modal
{
    NSString *String;
    switch ([modal.NotificationType integerValue]) {
        case 1:
            String=@"invited you to join";
            break;
            
        case 2:
            String=@"requests you to join";
            break;
        default:
            break;
    }
    return String;
}

- (IBAction)btnConfirm:(id)sender {
}

- (IBAction)btnReject:(id)sender {
}
@end
