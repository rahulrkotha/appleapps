//
//  FirstTableViewController.m
//  TeamTreeBooks
//
//  Created by Remotetiger on 10/15/15.
//  Copyright © 2015 Remotetiger. All rights reserved.
//

#import "FirstTableViewController.h"
#import "booksTableViewCell.h"
#import "CustomViewController.h"
#import "webViewController.h"



@interface FirstTableViewController () <UITableViewDelegate, UITableViewDataSource, CustomViewControllerDelegate>
{
    NSMutableArray *arrayOfBooks;
//    NSString *authordetails;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *patternImageView;
@property (weak, nonatomic) IBOutlet UILabel *patternLabel;
@end

@implementation FirstTableViewController



//getting data and looking for main part which is called badges(came fro link, open link for conformation)
-(void) viewDidLoad{
    [super viewDidLoad];
    arrayOfBooks = [[NSMutableArray alloc] init];
    NSData *TreeData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://teamtreehouse.com/jonathanschneider.json"]];
    NSDictionary *TreeDict = [NSJSONSerialization JSONObjectWithData:TreeData options:NSJSONReadingMutableContainers error:nil];
    
    arrayOfBooks = [TreeDict objectForKey:@"badges"];
//    authordetails = [TreeDict objectForKey:@"gravatar_url"];
    
}

//row for the tabel view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayOfBooks.count;//number of rows will the count of items in arrayofbooks
}

// working on individual cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    booksTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"treeCell"];
    
    //setting title of the book
    cell.lblbook.text = [[arrayOfBooks objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.lblbook.adjustsFontSizeToFitWidth = YES;
    
    //for book image
    NSString *imageURL = [[arrayOfBooks objectAtIndex:indexPath.row] objectForKey:@"icon_url"];
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageURL]];
    cell.bookimage.image = [UIImage imageWithData:imageData];
    
    //for author image
//    NSData *imageData1 = [NSData dataWithContentsOfURL:[NSURL URLWithString:authordetails]];
//    cell.authorimage.image = [UIImage imageWithData:imageData1];
//    
return cell;
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];//1: Get the index of the table view cell you want to pass
    
    CustomViewController *detailViewController = segue.destinationViewController;
    //Step 2: create a new instance of the detail view controller and set it as the destination (destination is built in)
   
    detailViewController.storingdate = [[arrayOfBooks objectAtIndex:indexPath.row] objectForKey:@"earned_date"];
    //Step 3: Pass whatever information you need to the new detail view controller
    
    //for book image in CustomViewController
    detailViewController.bookImageicon = [[arrayOfBooks objectAtIndex:indexPath.row] objectForKey:@"icon_url"];
    
    //for webVview
    detailViewController.bookwebview = [[arrayOfBooks objectAtIndex:indexPath.row] objectForKey:@"url"];
    
}

//deletig the data at indexpath
//below methods that should be used for delete
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [arrayOfBooks removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
    
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}

@end
