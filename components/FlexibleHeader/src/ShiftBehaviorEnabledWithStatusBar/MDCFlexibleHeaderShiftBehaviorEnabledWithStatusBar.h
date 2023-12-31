// Copyright 2020-present the Material Components for iOS authors. All Rights
// Reserved.
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

#import "MaterialFlexibleHeader+ShiftBehavior.h"

API_DEPRECATED_BEGIN("Use a branded UINavigationController instead.",
                     ios(12, API_TO_BE_DEPRECATED))

/**
 When fully-collapsed, the header translates vertically in reaction to scroll
 events along with the status bar.

 If used with a vertically-paging scroll view, this behavior acts like
 MDCFlexibleHeaderShiftBehaviorEnabled.
 */
FOUNDATION_EXTERN const MDCFlexibleHeaderShiftBehavior
    MDCFlexibleHeaderShiftBehaviorEnabledWithStatusBar;

API_DEPRECATED_END
