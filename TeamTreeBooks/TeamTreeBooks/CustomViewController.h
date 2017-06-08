//
//  CustomViewController.h
//  TeamTreeBooks
//
//  Created by Remotetiger on 10/15/15.
//  Copyright © 2015 Remotetiger. All rights reserved.
//

#import <UIKit/UIKit.h>




@protocol CustomViewControllerDelegate <NSObject> //creating our own custom delegate and then ending it

@end


@interface CustomViewController : UIViewController
    @property (weak,nonatomic) NSString* bookwebview;
    @property (weak,nonatomic) NSString* bookImageicon;
    @property (weak, nonatomic) NSString *storingdate; //Creating the variables to store the local data
    @property (nonatomic, weak) id <CustomViewControllerDelegate> myDelegate; //declaring a name for that

@end

