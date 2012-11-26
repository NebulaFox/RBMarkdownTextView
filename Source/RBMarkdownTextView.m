//
//  RBMarkdownTextView.m
//  Markdown Writer
//
//  Created by Robbie Bykowski on 26/11/2012.
//  Copyright (c) 2012 Helium End. All rights reserved.
//

#import "RBMarkdownTextView.h"

@implementation RBMarkdownTextView
{
    RBMarkdownKeyboard * _markdownKeyboard;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [self setup];
}

#pragma mark - RBMarkdownKeyboardDelegate

- (void)keyPressed:(NSString *)key
{
    [self insertText:key];
}

#pragma mark - Helpers

- (void)setup
{
    _markdownKeyboard = [RBMarkdownKeyboard new];
    _markdownKeyboard.delegate = self;
    self.inputAccessoryView = _markdownKeyboard;
}

@end
