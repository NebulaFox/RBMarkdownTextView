//
//  RBMarkdownKeysScrollView.h
//  Markdown Writer
//
//  Created by Robbie Bykowski on 24/11/2012.
//  Copyright (c) 2012 Helium End. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RBMarkdownKeysView.h"

@protocol RBMarkdownKeyboardDelegate <NSObject, UIScrollViewDelegate>

- (void)keyPressed:(NSString *)key;

@end

@class RBMarkdownKeysView;

@interface RBMarkdownKeyboard : UIScrollView <RBMarkdownKeysViewDelegate>

@property ( nonatomic, weak ) IBOutlet RBMarkdownKeysView * keysView;

- (void)setDelegate:(id<RBMarkdownKeyboardDelegate>)delegate;
- (id<RBMarkdownKeyboardDelegate>)delegate;

@end
