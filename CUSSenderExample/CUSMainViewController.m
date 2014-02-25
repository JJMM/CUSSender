//
//  CUSMainViewController.m
//  CUSPadFrameSample
//
//  Created by zhangyu on 13-4-3.
//  Copyright (c) 2013年 zhangyu. All rights reserved.
//

#import "CUSMainViewController.h"
#import "CUSSenderStarVC.h"
#import "CUSAboutViewController.h"

@implementation CUSMainViewController
@synthesize dataItems;
- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"CUSSender";
        self.dataItems = [NSMutableArray array];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"I miss you",@"",@"CUSSenderStarVC", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Happy birthday",@"",@"CUSSenderBirthdayVC", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Kiss",@"",@"CUSSenderKissVC", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"May prosperity be with you",@"",@"CUSSenderProsperityVC", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Snow",@"",@"CUSSenderSnowVC", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Rain",@"",@"CUSSenderRainVC", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Flower",@"",@"CUSSenderFlowerVC", nil]];
        
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	
    UITableView *talbeView = [[UITableView alloc]init];
    talbeView.dataSource = self;
    talbeView.delegate = self;
    talbeView.frame = self.view.bounds;
    [self.view addSubview:talbeView];
    
    UIBarButtonItem *aboutButton = [[UIBarButtonItem alloc]initWithTitle:@"about" style:UIBarButtonItemStyleBordered target:self action:@selector(aboutButtonClicked)];
    self.navigationItem.rightBarButtonItem = aboutButton;
}

- (void)aboutButtonClicked{
    CUSAboutViewController *nextController = [[CUSAboutViewController alloc]initWithNibName:@"CUSAboutViewController" bundle:nil];
    [self.navigationController pushViewController:nextController animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataItems count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CUS_CELL";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    NSArray *array = [self.dataItems objectAtIndex:indexPath.row];
    if (array && [array count] >= 1) {
        cell.textLabel.text = [array objectAtIndex:0];
        cell.detailTextLabel.text = [array objectAtIndex:1];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *array = [self.dataItems objectAtIndex:indexPath.row];
    if (array && [array count] > 2) {
        BOOL flag = [self loadViewWithClassName:[array objectAtIndex:2] title:[array objectAtIndex:0]];
        if(!flag){
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"message" message:@"Unimplement. After,we will add it." delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [alert show];
        }
    }else{
        NSLog(@"dataItems format error");
    }
}

-(BOOL)loadViewWithClassName:(NSString*)name title:(NSString*)title {
    Class controllerClass=NSClassFromString(name);
    if(controllerClass){
        UIViewController* backController=[[controllerClass alloc]initWithNibName:@"CUSLayerVC" bundle:nil];
        backController.title = title;
        [self.navigationController pushViewController:backController animated:YES];
        return YES;
    }
    return NO;
}


@end
