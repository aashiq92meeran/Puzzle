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
          UIImageView * dot = [[UIImageView alloc] initWithFrame:CGRectMake(150+x, 170, 50, 50)];
            
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
                         @"1.png",
                         @"2.png",
                         @"3.png",@"4.png",nil];
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
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
