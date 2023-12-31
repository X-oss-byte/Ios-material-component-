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

#import <XCTest/XCTest.h>

#import "MaterialButtons.h"
#import "MaterialButtons+TypographyThemer.h"
#import "MaterialTypographyScheme.h"

@interface MDCButtonTypographyThemerTests : XCTestCase
@end

@implementation MDCButtonTypographyThemerTests

- (void)testButtonTypographyThemer {
  // Given
  MDCTypographyScheme *typographyScheme = [[MDCTypographyScheme alloc] init];
  MDCButton *button = [[MDCButton alloc] initWithFrame:CGRectZero];
  [button setTitle:@"Hello World" forState:UIControlStateNormal];
  typographyScheme.button = [UIFont boldSystemFontOfSize:12];
  [button setTitleFont:[UIFont systemFontOfSize:21] forState:UIControlStateNormal];
  [button setTitleFont:[UIFont systemFontOfSize:22] forState:UIControlStateHighlighted];
  [button setTitleFont:[UIFont systemFontOfSize:23] forState:UIControlStateSelected];
  [button setTitleFont:[UIFont systemFontOfSize:24] forState:UIControlStateDisabled];

  // When
  [MDCButtonTypographyThemer applyTypographyScheme:typographyScheme toButton:button];

  // Then
  NSUInteger maximumStateValue = UIControlStateNormal | UIControlStateSelected |
                                 UIControlStateHighlighted | UIControlStateDisabled;
  for (NSUInteger state = 0; state <= maximumStateValue; ++state) {
    XCTAssertEqual([button titleFontForState:state], typographyScheme.button);
  }
}

@end
