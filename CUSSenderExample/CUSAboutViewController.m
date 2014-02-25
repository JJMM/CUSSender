//
//  CUSAboutViewController.m
//  CUSLayout
//
//  Created by zhangyu on 13-4-22.
//  Copyright (c) 2013年 zhangyu. All rights reserved.
//

#import "CUSAboutViewController.h"

@implementation CUSAboutViewController
@synthesize table;
@synthesize dataItems;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"About";
        self.dataItems = [NSMutableArray array];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Author:",@"zhangyu", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Version:",@"1.0", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"e-mail:",@"cuslayout@163.com", nil]];
        [self.dataItems addObject:[NSArray arrayWithObjects:@"Blog",@"http://weibo.com/cuslayout", nil]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Contact Us";
}
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
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    NSArray *array = [self.dataItems objectAtIndex:indexPath.row];
    if (array && [array count] >= 1) {
        cell.textLabel.text = [array objectAtIndex:0];
        cell.detailTextLabel.text = [array objectAtIndex:1];
    }
    
    return cell;
}

@end
