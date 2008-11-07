//
//  BDBezierView.h
//  BezierDemo
//
//  Created by Alexander v. Below on 07.11.08.
//  Copyright 2008 AVB Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BDPointView.h"

@interface BDBezierView : UIView {
	BDPointView * startView;
	BDPointView * endView;
	BDPointView * controlView;
}
- (void) setUpView;

@end
