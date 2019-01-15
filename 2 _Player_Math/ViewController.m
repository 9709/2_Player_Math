//
//  ViewController.m
//  2 _Player_Math
//
//  Created by Matthew Chan on 2019-01-14.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionDisplay;
@property (weak, nonatomic) IBOutlet UILabel *inputDisplay;
@property (weak, nonatomic) IBOutlet UILabel *feedbackDisplay;
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreDisplay;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreDisplay;

@property (nonatomic, strong) GameModel *initializeGameModel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.initializeGameModel = [GameModel new];
    NSString *questionOutput = [NSString stringWithFormat:@"Player 1: %@", [_initializeGameModel generateQuestion]];
    self.questionDisplay.text = questionOutput;
}




- (IBAction)button1Pressed:(UIButton *)sender {
    NSString *button1String = [NSString stringWithFormat:@"Input: 1"];
    self.inputDisplay.text = button1String;
}

- (IBAction)button2Pressed:(UIButton *)sender {
    NSString *button2String = [NSString stringWithFormat:@"Input: 2"];
    self.inputDisplay.text = button2String;
}

- (IBAction)button3Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"3"];
}

- (IBAction)button4Pressed:(UIButton *)sender {
}

- (IBAction)button5Pressed:(UIButton *)sender {
}

- (IBAction)button6Pressed:(UIButton *)sender {
}

- (IBAction)button7Pressed:(UIButton *)sender {
}

- (IBAction)button8Pressed:(UIButton *)sender {
}

- (IBAction)button9Pressed:(UIButton *)sender {
}

- (IBAction)button0Pressed:(UIButton *)sender {
}

- (IBAction)buttonEnterPressed:(UIButton *)sender {
}

@end
