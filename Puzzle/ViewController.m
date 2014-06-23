//
//  ViewController.m
//  Puzzle
//
//  Created by BSA univ 1 on 20/06/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *dot;
}

@end

@implementation ViewController
@synthesize images;



- (void)viewDidLoad
{
    [super viewDidLoad];

    

    
  UIImage * image = [[UIImage alloc] init];
    
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 70, 670, 400)];
       view.backgroundColor = [UIColor blueColor];
    
 
    

    [self.view addSubview:view];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(50,530,670,400)];
    view1.backgroundColor = [UIColor redColor];
   
    
    
   dot = [[UIImageView alloc] initWithFrame:CGRectMake(50, 70, 50, 50)];
    dot.image=[UIImage imageNamed:@"3.png"];
     
    [view1 addSubview:dot];
    [dot setImage:dot.image];


    
    [self.view addSubview:view1];
    
//    [self setGesture];
	// Do any additional setup after loading the view, typically from a nib.
}

//-(void)setGesture
//
//{
// 
//    UIPanGestureRecognizer *panGesture;
//    
//    [dot addGestureRecognizer:panGesture];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
