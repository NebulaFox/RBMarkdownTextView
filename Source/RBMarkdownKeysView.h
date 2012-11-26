//
//  RBMarkdownKeysView.h
//  Markdown Writer
//
//  Created by Robbie Bykowski on 24/11/2012.
//  Copyright (c) 2012 Helium End. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RBMarkdownKeysViewDelegate <NSObject>

- (void)keyPressed:(NSString *)key;

@end

@interface RBMarkdownKeysView : UIView

@property ( nonatomic, weak ) IBOutlet id <RBMarkdownKeysViewDelegate> delegate;

- (IBAction)asterikButtonTapped:(id)sender;
- (IBAction)underscoreButtonTapped:(id)sender;
- (IBAction)rightAngleBracketButtonTapped:(id)sender;
- (IBAction)hashButtonTapped:(id)sender;
- (IBAction)equalsButtonTapped:(id)sender;
- (IBAction)dashButtonTapped:(id)sender;
- (IBAction)plusButtonTapped:(id)sender;
- (IBAction)backtickButtonTapped:(id)sender;
- (IBAction)exclamationMarkButtonTapped:(id)sender;
- (IBAction)leftSquareBraketButtonTapped:(id)sender;
- (IBAction)rightSquareBraketButtonTapped:(id)sender;
- (IBAction)leftParentheseButtonTapped:(id)sender;
- (IBAction)rightParentheseButtonTapped:(id)sender;
- (IBAction)colonButtonTapped:(id)sender;
- (IBAction)backslashButtonTapped:(id)sender;

@end
