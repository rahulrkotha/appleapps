//
//  CustomViewController.m
//  TeamTreeBooks
//
//  Created by Remotetiger on 10/15/15.
//  Copyright © 2015 Remotetiger. All rights reserved.
//

#import "CustomViewController.h"
#import "webViewController.h"

@interface CustomViewController ()

@property (weak, nonatomic) IBOutlet UILabel *earnedDateLabel;
@property (strong, nonatomic) IBOutlet UIImageView *bookimage;
@property (strong, nonatomic) IBOutlet UIButton *mybutton;

- (IBAction)openwebsitebutton:(id)sender;


@end

@implementation CustomViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    //text in CustomViewController
    self.earnedDateLabel.text = self.storingdate;
    self.earnedDateLabel.layer.borderColor = [UIColor blackColor].CGColor;//optional
    self.earnedDateLabel.layer.borderWidth = 1;//optional
    
    //for image in CustomViewController
    NSData *bookImagedata = [NSData dataWithContentsOfURL:[NSURL URLWithString:_bookImageicon]];
    self.bookimage.image = [UIImage imageWithData:bookImagedata];
}
- (IBAction)openwebsitebutton:(id)sender {
    


}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    // 1. Create a new instance of the child VC
    // 2. Pass it the URL -- bookwebview
    // (3.) In the child view controller, load the URL
    
    // IMPORTANT: If you create the segue in Storyboard, Xcode is smart enough to know to use this built-in method PrepareForSegue where you can insert this logic
    
    webViewController *webDisplayController = segue.destinationViewController;
    
//    webDisplayController.myURL = _bookwebview;
    webDisplayController.myURL = _bookwebview;
    

}
    
    
@end

