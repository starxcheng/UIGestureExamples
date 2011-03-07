/*
 The MIT License
 
 Copyright (c) 2010 Free Time Studios and Nathan Eror
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/

#import "UIGestureExamplesAppDelegate.h"
#import "RootViewController.h"
#import "DetailViewController.h"


@implementation UIGestureExamplesAppDelegate

@synthesize window = window_;
@synthesize splitViewController = splitViewController_;
@synthesize rootViewController = rootViewController_;
@synthesize detailViewController = detailViewController_;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
  [self.window addSubview:self.splitViewController.view];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)dealloc {
  [splitViewController_ release], splitViewController_ = nil;
  [rootViewController_ release], rootViewController_ = nil;
  [detailViewController_ release], detailViewController_ = nil;
  [window_ release], window_ = nil;
  [super dealloc];
}


@end

