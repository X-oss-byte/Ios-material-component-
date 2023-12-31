// Copyright 2020-present the Material Components for iOS authors. All Rights Reserved.
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

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprivate-header"
#import "MDCCollectionStringResources.h"
#pragma clang diagnostic pop

NS_ASSUME_NONNULL_BEGIN

@interface CollectionsLocalizationTests : XCTestCase

@end

@implementation CollectionsLocalizationTests

- (void)testInfoBarMessageIsTranslated {
  // Given
  NSString *infoBarGestureHintString = MDCCollectionStringResources(infoBarGestureHintString);
  NSString *deleteButtonString = MDCCollectionStringResources(deleteButtonString);
  NSString *languageCode =
      [NSLocale.preferredLanguages.firstObject componentsSeparatedByString:@"-"].firstObject;

  // Then
  if ([languageCode isEqualToString:@"ar"]) {
    XCTAssertEqualObjects(infoBarGestureHintString, @"مرِّر سريعًا على عنصر ليتم حذفه");
    XCTAssertEqualObjects(deleteButtonString, @"حذف");
  } else {
    XCTFail(@"Language %@ isn't supported by this localization test case", languageCode);
  }
}

@end

NS_ASSUME_NONNULL_END
