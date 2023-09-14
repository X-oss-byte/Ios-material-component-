// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCButtonScheme.h"

#import "MaterialButtons.h"

#import <Foundation/Foundation.h>

API_DEPRECATED_BEGIN("🤖👀 Use branded M3CButton instead. "
                     "See go/material-ios-buttons/gm2-migration for more details. "
                     "This has go/material-ios-migrations#scriptable-potential 🤖👀.",
                     ios(12, 12))

/**
 The Material Design contained button themer for instances of MDCButton.

 @warning This API will eventually be deprecated. The replacement API is:
 `MDCButton`'s `-applyContainedThemeWithScheme:`
 Learn more at docs/theming.md#migration-guide-themers-to-theming-extensions
 */
@interface MDCContainedButtonThemer : NSObject

/**
 Applies a button scheme's properties to an MDCButton using the contained button style.

 @param scheme The button scheme to apply to the component instance.
 @param button A component instance to which the scheme should be applied.

 @warning This API will eventually be deprecated. The replacement API is:
 `MDCButton`'s `-applyContainedThemeWithScheme:`
 Learn more at docs/theming.md#migration-guide-themers-to-theming-extensions
 */
+ (void)applyScheme:(nonnull id<MDCButtonScheming>)scheme toButton:(nonnull MDCButton *)button;

@end

API_DEPRECATED_END
