//
//  RBMarkdownViewController.m
//  Markdown Writer
//
//  Created by Robbie Bykowski on 24/11/2012.
//  Copyright (c) 2012 Helium End. All rights reserved.
//

#import "RBMarkdownViewController.h"

#import "RBMarkdownView.h"
#import "RBMarkdownKeyboard.h"

@interface RBMarkdownViewController ()

@end

@implementation RBMarkdownViewController

- (id)init
{
    self = [super init];
    if ( self )
    {
        [[UINib nibWithNibName:@"RBMarkdownView" bundle:nil] instantiateWithOwner:self options:nil];
        
        NSNotificationCenter * c = [NSNotificationCenter defaultCenter];
        [c addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
        
        [c addObserver:self selector:@selector(keybordWillHide:) name:UIKeyboardWillHideNotification object:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - RBMarkdownKeysViewDelegate

- (void)keyPressed:(NSString *)key
{
    RBMarkdownView * view = (RBMarkdownView *) self.view;
    view.textView.text = [view.textView.text stringByAppendingString:key];
}*/

#pragma mark - Notifications
#pragma mark  * UIKeyboard

- (void)keyboardDidShow:(NSNotification *)notification
{
    NSDictionary * userInfo = notification.userInfo;
    
    // get keyboard size
    CGRect kbFrame = [[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    UIWindow * window = [UIApplication sharedApplication].windows[0];
    
    kbFrame = [self.view convertRect:kbFrame fromView:window];
    
    
    // get the view
    RBMarkdownView * view = (RBMarkdownView *) self.view;
    
    // set the text view's insets
    UITextView * textView = [view textView];
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbFrame.size.height /* + mdkb.frame.size.height */, 0.0);
    textView.contentInset = contentInsets;
    textView.scrollIndicatorInsets = contentInsets;
}

- (void)keybordWillHide:(NSNotification *)notification
{
    // reset text view's insets
    RBMarkdownView * view = (RBMarkdownView *) self.view;
    UITextView * textView = [view textView];
    
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    textView.contentInset = contentInsets;
    textView.scrollIndicatorInsets = contentInsets;
}

@end
