//
//  BDPointView.h
//  BezierDemo
//
//  Created by Alexander v. Below on 07.11.08.
//  Copyright 2008 AVB Software. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BDPointView : UIView {
	UIColor * color;
}
@property (readwrite, nonatomic, copy) UIColor * color;
- (id)initWithFrame:(CGRect)frame color:(UIColor *)color;
@end
