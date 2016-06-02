//
//  ViewController.h
//  WordSearch
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (strong, nonatomic) NSString *puzzleArray;
@property (strong, nonatomic) NSMutableArray *originalArray;


- (void)scrambleOriginalArray;

@end

