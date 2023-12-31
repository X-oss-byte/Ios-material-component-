// Copyright 2019-present the Material Components for iOS authors. All Rights Reserved.
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

#import "ChipsExampleAssets.h"

@implementation ChipsExampleAssets

+ (UIImage *)doneImage {
  return [UIImage imageNamed:@"system_icons/done"
                           inBundle:[NSBundle bundleForClass:[ChipsExampleAssets class]]
      compatibleWithTraitCollection:nil];
}

+ (UIImage *)faceImage {
  return [UIImage imageNamed:@"ic_mask"
                           inBundle:[NSBundle bundleForClass:[ChipsExampleAssets class]]
      compatibleWithTraitCollection:nil];
}

+ (UIButton *)deleteButton {
  UIImage *image = [UIImage imageNamed:@"ic_cancel"
                              inBundle:[NSBundle bundleForClass:[ChipsExampleAssets class]]
         compatibleWithTraitCollection:nil];
  image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];

  UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero];
  button.tintColor = [UIColor colorWithWhite:0 alpha:(CGFloat)0.7];
  [button setImage:image forState:UIControlStateNormal];
  return button;
}

@end
