//
//  ViewController.m
//  Puzzle
//
//  Created by BSA univ 1 on 20/06/14.
//  Copyright (c) 2014 hibrise. All rights reserved.
//

#import "ViewController.h"
#import "TKDragView.h"

@interface ViewController ()
{

}

@end

@implementation ViewController

@synthesize images;



- (void)viewDidLoad
{
    [super viewDidLoad];

    

    
//  UIImage * image = [[UIImage alloc] init];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 70, 670, 400)];
    
       view2.backgroundColor = [UIColor blueColor];
  
    // Place Holders for images
    
    UIImageView *dot1 =[[UIImageView alloc] initWithFrame:CGRectMake(30,50,80,70)];
    dot1.backgroundColor = [UIColor redColor];
    
    UIImageView *dot2 =[[UIImageView alloc] initWithFrame:CGRectMake(110,120,80,70)];
    dot2.backgroundColor = [UIColor brownColor];
    UIImageView *dot3 =[[UIImageView alloc] initWithFrame:CGRectMake(110,50,80,70)];
    dot3.backgroundColor = [UIColor blackColor];
    UIImageView *dot4 =[[UIImageView alloc] initWithFrame:CGRectMake(30,120,80,70)];
    dot4.backgroundColor = [UIColor purpleColor];

    
        [view2 addSubview:dot1];
        [view2 addSubview:dot2];
        [view2 addSubview:dot3];
        [view2 addSubview:dot4];
    
    
    int x=10;
    int y=10;

    [self.view addSubview:view2];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(50,530,670,400)];
    
    view1.backgroundColor = [UIColor redColor];
   
    
        for (int i=0; i<4; i++) {
            if (i<4) {
                
                 x=x+50;
                 y+=50;
            }
            
          [self panImages];
          UIImageView * dot = [[UIImageView alloc] initWithFrame:CGRectMake(50+x+x, 170, 80, 70)];
            
            NSString * imageName=[NSString stringWithFormat:@"%@",[images objectAtIndex:i]];
    dot.image=[UIImage imageNamed:imageName];

         
//[self setGesture];

   
    
    [view1 addSubview:dot];
    [dot setImage:dot.image];



    
    [self.view addSubview:view1];
    
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)setGesture

{
    UIPanGestureRecognizer *panGesture= [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(setGesture)];
//    
//   [images addGestureRecognizer:panGesture];
    
}

-(void)panImages

{

images = [NSMutableArray arrayWithObjects:
                         @"1.png" ,
                         @"2.png",
                         @"3.png",
                         @"4.png",nil];
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//     if ([touches count] == 1)
//     {
//  CGPoint touchPoint = [[touches anyObject] locationInView:self.view];
//         for (UIImageView *iView in self.view.subviews) {
//             if ([iView isMemberOfClass:[UIImageView class]]) {
//                 if (touchPoint.x > iView.frame.origin.x &&
//                     touchPoint.x < iView.frame.origin.x + iView.frame.size.width &&
//                     touchPoint.y > iView.frame.origin.y &&
//                     touchPoint.y < iView.frame.origin.y + iView.frame.size.height)
                     }
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
