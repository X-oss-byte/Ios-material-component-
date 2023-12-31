/*
 Copyright 2015-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// TODO(b/151929968): Delete import of delegate headers when client code has been migrated to no
// longer import delegates as transitive dependencies.
#import "MDCFlexibleHeaderTopSafeAreaDelegate.h"

@protocol MDCFlexibleHeaderTopSafeAreaDelegate;

API_DEPRECATED_BEGIN("Use a branded UINavigationController instead.", ios(12, API_TO_BE_DEPRECATED))

/**
 Extracts the top safe area for a given view controller.

 @note This class implements legacy behavior gated behind the
 inferTopSafeAreaInsetFromViewController flag. When this flag is disabled (currently the default),
 we don't extract the top safe area from the given view controller - we extract it from
 MDCDeviceTopSafeAreaInset. We hope to deprecate MDCDeviceTopSafeAreaInset, but this work is blocked
 on all clients enabling inferTopSafeAreaInsetFromViewController on their flexible header view
 controller.
 */
__attribute__((objc_subclassing_restricted)) @interface MDCFlexibleHeaderTopSafeArea : NSObject

#pragma mark Configuring the top safe area source

/**
 See MDCFlexibleHeaderViewController.h for detailed documentation.
 */
@property(nonatomic, weak, nullable) UIViewController *topSafeAreaSourceViewController;

/**
 Whether to subtract additionalSafeAreaInsets from the extracted safeAreaInsets.

 Ignored if topSafeAreaSourceViewController is nil.
 */
@property(nonatomic) BOOL subtractsAdditionalSafeAreaInsets;

#pragma mark Querying the top safe area

/**
 Returns the top safe area inset value in a manner that depends on the
 inferTopSafeAreaInsetFromViewController runtime flag.

 If inferTopSafeAreaInsetFromViewController is enabled, returns the most recent top safe area inset
 value we've extracted from the top safe area source view controller.

 If inferTopSafeAreaInsetFromViewController is disabled, returns the device's top safe area insets.
 */
- (CGFloat)topSafeAreaInset;

#pragma mark Informing the object of safe area inset changes

/**
 Informs the receiver that the safe area insets have changed.
 */
- (void)safeAreaInsetsDidChange;

#pragma mark Migratory behavioral flags

/**
 See MDCFlexibleHeaderViewController.h for detailed documentation.

 Defaults to NO, but we eventually want to default it to YES and remove this property altogether.
 */
@property(nonatomic) BOOL inferTopSafeAreaInsetFromViewController;

#pragma mark Delegating changes in state

/**
 The delegate may react to changes in the top safe area inset.
 */
@property(nonatomic, weak, nullable) id<MDCFlexibleHeaderTopSafeAreaDelegate> topSafeAreaDelegate;

@end

API_DEPRECATED_END
