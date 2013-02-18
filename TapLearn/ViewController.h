//
//  ViewController.h
//  TapLearn
//
//  Created by Clarice on 21/01/13.
//  Copyright (c) 2013 Omkar Nisal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>

-(IBAction) myTapGesture : (UIGestureRecognizer *) recognizer;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

-(IBAction) myPincher : (UIPinchGestureRecognizer *) pincher;

-(IBAction) myRotator : (UIRotationGestureRecognizer *) rotator;

-(IBAction) mySwipeUp:(UISwipeGestureRecognizer *) swipeUp ;

-(IBAction) mySwipeDn:(UISwipeGestureRecognizer *) swipeDn ;

-(IBAction) mySwipeLt:(UISwipeGestureRecognizer *) swipeLt ;

-(IBAction) mySwipeRt:(UISwipeGestureRecognizer *) swipeRt;

-(IBAction) myPan : (UIPanGestureRecognizer *) panner;


-(IBAction) myLongPresser :(UILongPressGestureRecognizer *) longPresser;


@end
