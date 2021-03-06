//
//  NewGroupVC.h
//  COIL
//
//  Created by Aseem 9 on 11/02/16.
//  Copyright © 2016 Aseem 9. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"
@interface NewGroupVC : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIGestureRecognizerDelegate,UIActionSheetDelegate>
{
    NSInteger ValueValidation;
    NSData *Imagedata;
}

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property(nonatomic,strong)NSDictionary *DictParameters;
@property(nonatomic,strong)NSString *privacyString;
@property(nonatomic,strong)NSString *Course_Ids;
@property (weak, nonatomic) IBOutlet UIImageView *imagePlus;
@property (weak, nonatomic) IBOutlet UITextField *txtGroupName;
@property (weak, nonatomic) IBOutlet UILabel *lblDiscoverablity;
@property (weak, nonatomic) IBOutlet UIImageView *ImageStretched;
@property (weak, nonatomic) IBOutlet UILabel *labelOnImage;
@property (weak, nonatomic) IBOutlet UIImageView *ImageBubble;
- (IBAction)btnDiscoverabilityDD:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblDisOptions;
- (IBAction)btnBack:(id)sender;
- (IBAction)btnNext:(id)sender;
- (IBAction)btnCanvasIntegration:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnCanvasInt;
@end
