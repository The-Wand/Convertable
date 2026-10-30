///
/// Copyright © 2020-2024 El Machine 🤖
/// https://el-machine.com/
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
/// 1) LICENSE file
/// 2) https://apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///
/// Created by Alex Kozin
/// 2020 El Machine

#if canImport(CoreGraphics)
@_exported
import CoreGraphics

@inline(__always)
postfix
public
func |(rect: (CGFloat, CGFloat, CGFloat, CGFloat)) -> CGRect {
    CGRect(x: rect.0, y: rect.1, width: rect.2, height: rect.3)
}

@inline(__always)
postfix
public
func |(size: CGSize) -> CGRect {
    CGRect(origin: .zero, size: size)
}

@inline(__always)
public
func +(rect: CGRect, offset: CGFloat) -> CGRect {
    CGRectOffset(rect, offset, offset)
}

@inline(__always)
public
func +(r1: CGRect, r2: CGRect) -> CGRect {
    CGRectUnion(r1, r2)
}

@inline(__always)
public
func +(rect: CGRect, raw: (CGFloat, CGFloat, CGFloat, CGFloat)) -> CGRect {
    CGRectMake(rect.origin.x + raw.0,
               rect.origin.y + raw.1,
               rect.size.width + raw.2,
               rect.size.height + raw.3)
}

@inline(__always)
public
func +(rect: CGRect, raw: (CGPoint, CGSize)) -> CGRect {
    CGRectMake(rect.origin.x + raw.0.x,
               rect.origin.y + raw.0.y,
               rect.size.width + raw.1.width,
               rect.size.height + raw.1.height)
}

//TODO: -

@inline(__always)
public
func -(rect: CGRect, inset: CGFloat) -> CGRect {
    CGRectInset(rect, inset, inset)
}

#endif
