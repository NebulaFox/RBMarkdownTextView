//
//  RBMarkdownKeysView.m
//  Markdown Writer
//
//  Created by Robbie Bykowski on 24/11/2012.
//  Copyright (c) 2012 Helium End. All rights reserved.
//

#import "RBMarkdownKeysView.h"

@implementation RBMarkdownKeysView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

#pragma mark - IBActions

- (void)asterikButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"*"];
    }
}

- (void)underscoreButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"_"];
    }
}

- (void)rightAngleBracketButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@">"];
    }
}

- (void)hashButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"#"];
    }
}

- (void)equalsButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"="];
    }
}

- (void)dashButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"-"];
    }
}

- (void)plusButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"+"];
    }
}

- (void)backtickButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"`"];
    }
}

- (void)exclamationMarkButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"!"];
    }
}

- (void)leftSquareBraketButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"["];
    }
}

- (void)rightSquareBraketButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"]"];
    }
}

- (void)leftParentheseButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"("];
    }
}

- (void)rightParentheseButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@")"];
    }
}

- (void)colonButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@":"];
    }
}

- (void)backslashButtonTapped:(id)sender
{
    if ( _delegate )
    {
        [_delegate keyPressed:@"\\"];
    }
}

@end
