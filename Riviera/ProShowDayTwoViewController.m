//
//  ProShowDayTwoViewController.m
//  Riviera
//
//  Created by Pratham Mehta on 19/01/14.
//  Copyright (c) 2014 Pratham Mehta. All rights reserved.
//

#import "ProShowDayTwoViewController.h"

@interface ProShowDayTwoViewController ()

@end

@implementation ProShowDayTwoViewController

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
        _pictures = @[
                      [UIImage imageNamed:@"sivamani.png"],
                      [UIImage imageNamed:@"devassy.png"],
                      [UIImage imageNamed:@"haricharan.png"],
                      [UIImage imageNamed:@"vijay.png"],
                      [UIImage imageNamed:@"swetha.png"],
                      [UIImage imageNamed:@"sreeram"]];
    }
    return _pictures;
}

- (NSArray *) textContent
{
    if(!_textContent)
    {
        _textContent = @[
                         @"Anandan Sivamani popularly known as Sivamani is a world renowned percussionist. He plays many instruments including drums, octoban, darkuba, udukai and kanjira. Dance to hi beats this Riviera",
                         @"The energy he delivers while playing the instrument makes him enjoy each and every note he plays which inturn tell the audience a story. Join this prodigy this Riviera",
                         @"Haricharan is a carnatic musician and Indian playback singer. Enjoy this singers beautiful tunes this riviera.",
                         @"Vijay is an Indian playback singer who works predominantly on the south indian music industry. Dance with him this Riviera.",
                         @"Shwetha is the recipient of several coveted awards for her effervescent style of singing. She has rendered her voice for some of the most celebrated music directors. Join her this Riviera.",
                         @"Sreeram Chandra is a professional singer and 2010 Indian Idol winner. He has gifted us with hits like Subahnalla from Yeh Jawani Hai Diwani, Balma Balma and many more!"];
    }
    return _textContent;
}

- (void) viewWillAppear:(BOOL)animated
{
    self.image.image = [self.pictures objectAtIndex:0];
    self.textView.text = [self.textContent objectAtIndex:0];
    [self.textView setBackgroundColor:[UIColor clearColor]];
}


- (IBAction)showHideMenu:(UIButton *)sender
{
    [self.revealViewController performSelector:@selector(revealToggle:) withObject:nil afterDelay:0];
}

- (IBAction)rightPressed:(UIButton *)sender
{
    if(self.index > 0)
    {
        self.index--;
        [self.image setImage:[self.pictures objectAtIndex:self.index] withTransitionAnimation:NO];
        self.textView.text = [self.textContent objectAtIndex:self.index];
    }

}

- (IBAction)leftPressed:(UIButton *)sender
{
    if(self.index < [self.pictures count]-1)
    {
        self.index++;
        [self.image setImage:[self.pictures objectAtIndex:self.index] withTransitionAnimation:NO];
        self.textView.text = [self.textContent objectAtIndex:self.index];
    }
}
@end
