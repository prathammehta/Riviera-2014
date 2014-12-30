//
//  ProShowDayOneViewController.h
//  Riviera
//
//  Created by Pratham Mehta on 18/01/14.
//  Copyright (c) 2014 Pratham Mehta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "TransitionImageView.h"

@interface ProShowDayOneViewController : UIViewController

@property (weak, nonatomic) IBOutlet TransitionImageView *image;
@property (nonatomic ,strong) NSArray *pictures;
@property (nonatomic ,strong) NSArray *textContent;
@property (nonatomic) NSInteger index;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
