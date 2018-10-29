//
//  AppDelegate.h
//  AVC906
//
//  Created by Huang Verona on 2018/9/10.
//  Copyright © 2018 cgmind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

