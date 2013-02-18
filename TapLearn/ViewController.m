//
//  ViewController.m
//  TapLearn
//
//  Created by Clarice on 21/01/13.
//  Copyright (c) 2013 Omkar Nisal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction) myTapGesture : (UIGestureRecognizer *) recognizer
{
    myLabel.text = @"Tapped";
//    sleep(1);
//    myLabel.text = @"";
}

-(IBAction) myPincher : (UIPinchGestureRecognizer *) pincher
{
    myLabel.text = @"pinched";
    pincher.view.transform = CGAffineTransformScale(pincher.view.transform, pincher.scale, pincher.scale);
    pincher.scale =1;
    

}

-(IBAction) myRotator : (UIRotationGestureRecognizer *) rotator
{

    myLabel.text = @"rotate";
    rotator.view.transform = CGAffineTransformRotate(rotator.view.transform, rotator.rotation);
    rotator.rotation = 0;
}

-(IBAction) mySwipeUp:(UISwipeGestureRecognizer *) swipeUp
{
    myLabel.text = @"UP";

}

-(IBAction) mySwipeDn:(UISwipeGestureRecognizer *) swipeDn
{
    myLabel.text = @"DOWN";
    
}

-(IBAction) mySwipeLt:(UISwipeGestureRecognizer *) swipeLt
{
    myLabel.text = @"LEFT";
    
}

-(IBAction) mySwipeRt:(UISwipeGestureRecognizer *) swipeRt
{
    myLabel.text = @"RIGHT";
    
}

-(IBAction) myPan : (UIPanGestureRecognizer *) panner
{
    myLabel.text = @"Panning (dragging)";
    CGPoint translation = [panner translationInView:self.view];
    panner.view.center = CGPointMake(panner.view.center.x + translation.x, panner.view.center.y + translation.y);
    [panner setTranslation:CGPointMake(0, 0) inView:self.view];
    
    
}

-(IBAction) myLongPresser :(UILongPressGestureRecognizer *) longPresser
{
    myLabel.text = @"LONG PRESSED";
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
