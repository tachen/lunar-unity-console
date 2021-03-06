//
//  FakeLogEntry.m
//
//  Lunar Unity Mobile Console
//  https://github.com/SpaceMadness/lunar-unity-console
//
//  Copyright 2016 Alex Lementuev, SpaceMadness.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "FakeLogEntry.h"

@implementation FakeLogEntry

- (instancetype)initWithType:(LUConsoleLogType)type message:(NSString *)message stackTrace:(NSString *)stackTrace
{
    self = [super init];
    if (self)
    {
        _type = type;
        _message = [message copy];
        _stacktrace = [stackTrace copy];
    }
    return self;
}

- (void)dealloc
{
    LU_RELEASE(_message);
    LU_RELEASE(_stacktrace);
    LU_SUPER_DEALLOC
}

@end
