//
//  RBMarkdownKeysScrollView.m
//  Markdown Writer
//
//  Created by Robbie Bykowski on 24/11/2012.
//  Copyright (c) 2012 Helium End. All rights reserved.
//

#import "RBMarkdownKeysView.h"
#import "RBMarkdownKeyboard.h"

@implementation RBMarkdownKeyboard

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

#pragma mark - Properties

- (void)setDelegate:(id<RBMarkdownKeyboardDelegate>)delegate
{
    if ( [super delegate] != delegate )
    {
        [super setDelegate:delegate];
    }
}

- (id<RBMarkdownKeyboardDelegate>)delegate
{
    return (id<RBMarkdownKeyboardDelegate>) [super delegate];
}

#pragma mark - RBMarkdownKeysViewDelegate

- (void)keyPressed:(NSString *)key
{
    if ( [self delegate] )
    {
        [[self delegate] keyPressed:key];
    }
}

#pragma mark - Helpers

- (void)setup
{
    [[UINib nibWithNibName:@"RBMarkdownKeysView" bundle:nil] instantiateWithOwner:self options:nil];
    
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    
    self.contentSize = _keysView.frame.size;
    
    self.backgroundColor = _keysView.backgroundColor;
    
    [self addSubview:_keysView];
    
    if ( self.frame.size.width == 0 )
    {
        self.frame = CGRectMake(0.0, 0.0, 320.0, 54.0);
    }
}

@end
