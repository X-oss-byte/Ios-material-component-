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

#import "MDCTextControlLabelSupport.h"
#import <UIKit/UIKit.h>

MDCTextControlLabelPosition MDCTextControlLabelPositionWith(BOOL hasLabelText, BOOL hasText,
                                                            BOOL canLabelFloat, BOOL isEditing) {
  if (hasLabelText) {
    if (canLabelFloat) {
      if (isEditing) {
        return MDCTextControlLabelPositionFloating;
      } else {
        if (hasText) {
          return MDCTextControlLabelPositionFloating;
        } else {
          return MDCTextControlLabelPositionNormal;
        }
      }
    } else {
      if (isEditing) {
        return MDCTextControlLabelPositionNone;
      } else {
        if (hasText) {
          return MDCTextControlLabelPositionNone;
        } else {
          return MDCTextControlLabelPositionNormal;
        }
      }
    }
  } else {
    return MDCTextControlLabelPositionNone;
  }
}

CGSize MDCTextControlLabelSizeWith(NSString *text, CGFloat maxWidth, UIFont *font) {
  if (!font || text.length == 0) {
    return CGSizeZero;
  }
  CGSize fittingSize = CGSizeMake(maxWidth, CGFLOAT_MAX);
  NSDictionary *attributes = @{NSFontAttributeName : font};
  CGRect rect = [text boundingRectWithSize:fittingSize
                                   options:NSStringDrawingUsesLineFragmentOrigin
                                attributes:attributes
                                   context:nil];
  return rect.size;
}
