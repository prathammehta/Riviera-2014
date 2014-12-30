//
//  ProShowDayOneViewController.m
//  Riviera
//
//  Created by Pratham Mehta on 18/01/14.
//  Copyright (c) 2014 Pratham Mehta. All rights reserved.
//

#import "ProShowDayOneViewController.h"

@interface ProShowDayOneViewController ()

@end

@implementation ProShowDayOneViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [self.view addGestureRecognizer:self.revealViewController.tapGestureRecognizer];
    self.index = 0;
}

- (NSArray *) pictures
{
    if(!_pictures)
    {
        _pictures = @[[UIImage imageNamed:@"salim.png"],[UIImage imageNamed:@"shaktishree.png"]];
    }
    return _pictures;
}

- (NSArray *) textContent
{
    if(!_textContent)
    {
        _textContent = @[
                         @"Salim Merchant and Sulaiman Merchant are a pair of musician brothers, born and brought up in Bhuj, Kutch, Gujarat. Rock out to their music this Riviera.",
                         @"Shaktishree Gopalan is an indian vocalist, songwriter and performer in both indian contemporary, pop and soft rock genres. Jam to her tunes this Riviera"];
    }
    return _textContent;
}

- (void) viewWillAppear:(BOOL)animated
{
    self.image.image = [self.pictures objectAtIndex:0];
    self.textView.text = [self.textContent objectAtIndex:0];
}

- (IBAction)rightPressed:(UIButton *)sender
{
    if(self.index < [self.pictures count]-1)
    {
        self.index++;
        [self.image setImage:[self.pictures objectAtIndex:self.index] withTransitionAnimation:NO];
        self.textView.text = [self.textContent objectAtIndex:self.index];
    }
}

- (IBAction)leftPressed:(UIButton *)sender
{
    if(self.index > 0)
    {
        self.index--;
        [self.image setImage:[self.pictures objectAtIndex:self.index] withTransitionAnimation:NO];
        self.textView.text = [self.textContent objectAtIndex:self.index];
    }
}

- (IBAction)showHideMenu:(UIButton *)sender
{
    [self.revealViewController performSelector:@selector(revealToggle:) withObject:nil afterDelay:0];
}


@end
