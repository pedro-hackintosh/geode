// The macOS 26 SDK no longer ships the Carbon framework, but this file only
// needs the virtual key code constants from it. Fall back to local definitions
// so the loader keeps building against newer SDKs.
#if __has_include(<Carbon/Carbon.h>)
#include <Carbon/Carbon.h>
#else
enum {
    kVK_ANSI_A              = 0x00,
    kVK_ANSI_S              = 0x01,
    kVK_ANSI_D              = 0x02,
    kVK_ANSI_F              = 0x03,
    kVK_ANSI_H              = 0x04,
    kVK_ANSI_G              = 0x05,
    kVK_ANSI_Z              = 0x06,
    kVK_ANSI_X              = 0x07,
    kVK_ANSI_C              = 0x08,
    kVK_ANSI_V              = 0x09,
    kVK_ISO_Section         = 0x0A,
    kVK_ANSI_B              = 0x0B,
    kVK_ANSI_Q              = 0x0C,
    kVK_ANSI_W              = 0x0D,
    kVK_ANSI_E              = 0x0E,
    kVK_ANSI_R              = 0x0F,
    kVK_ANSI_Y              = 0x10,
    kVK_ANSI_T              = 0x11,
    kVK_ANSI_1              = 0x12,
    kVK_ANSI_2              = 0x13,
    kVK_ANSI_3              = 0x14,
    kVK_ANSI_4              = 0x15,
    kVK_ANSI_6              = 0x16,
    kVK_ANSI_5              = 0x17,
    kVK_ANSI_Equal          = 0x18,
    kVK_ANSI_9              = 0x19,
    kVK_ANSI_7              = 0x1A,
    kVK_ANSI_Minus          = 0x1B,
    kVK_ANSI_8              = 0x1C,
    kVK_ANSI_0              = 0x1D,
    kVK_ANSI_RightBracket   = 0x1E,
    kVK_ANSI_O              = 0x1F,
    kVK_ANSI_U              = 0x20,
    kVK_ANSI_LeftBracket    = 0x21,
    kVK_ANSI_I              = 0x22,
    kVK_ANSI_P              = 0x23,
    kVK_Return              = 0x24,
    kVK_ANSI_L              = 0x25,
    kVK_ANSI_J              = 0x26,
    kVK_ANSI_Quote          = 0x27,
    kVK_ANSI_K              = 0x28,
    kVK_ANSI_Semicolon      = 0x29,
    kVK_ANSI_Backslash      = 0x2A,
    kVK_ANSI_Comma          = 0x2B,
    kVK_ANSI_Slash          = 0x2C,
    kVK_ANSI_N              = 0x2D,
    kVK_ANSI_M              = 0x2E,
    kVK_ANSI_Period         = 0x2F,
    kVK_Tab                 = 0x30,
    kVK_Space               = 0x31,
    kVK_ANSI_Grave          = 0x32,
    kVK_Delete              = 0x33,
    kVK_Escape              = 0x35,
    kVK_Command             = 0x37,
    kVK_Shift               = 0x38,
    kVK_CapsLock            = 0x39,
    kVK_Option              = 0x3A,
    kVK_Control             = 0x3B,
    kVK_RightShift          = 0x3C,
    kVK_RightOption         = 0x3D,
    kVK_RightControl        = 0x3E,
    kVK_Function            = 0x3F,
    kVK_F17                 = 0x40,
    kVK_ANSI_KeypadDecimal  = 0x41,
    kVK_ANSI_KeypadMultiply = 0x43,
    kVK_ANSI_KeypadPlus     = 0x45,
    kVK_ANSI_KeypadClear    = 0x47,
    kVK_VolumeUp            = 0x48,
    kVK_VolumeDown          = 0x49,
    kVK_Mute                = 0x4A,
    kVK_ANSI_KeypadDivide   = 0x4B,
    kVK_ANSI_KeypadEnter    = 0x4C,
    kVK_ANSI_KeypadMinus    = 0x4E,
    kVK_F18                 = 0x4F,
    kVK_F19                 = 0x50,
    kVK_ANSI_KeypadEquals   = 0x51,
    kVK_ANSI_Keypad0        = 0x52,
    kVK_ANSI_Keypad1        = 0x53,
    kVK_ANSI_Keypad2        = 0x54,
    kVK_ANSI_Keypad3        = 0x55,
    kVK_ANSI_Keypad4        = 0x56,
    kVK_ANSI_Keypad5        = 0x57,
    kVK_ANSI_Keypad6        = 0x58,
    kVK_ANSI_Keypad7        = 0x59,
    kVK_F20                 = 0x5A,
    kVK_ANSI_Keypad8        = 0x5B,
    kVK_ANSI_Keypad9        = 0x5C,
    kVK_F5                  = 0x60,
    kVK_F6                  = 0x61,
    kVK_F7                  = 0x62,
    kVK_F3                  = 0x63,
    kVK_F8                  = 0x64,
    kVK_F9                  = 0x65,
    kVK_F11                 = 0x67,
    kVK_F13                 = 0x69,
    kVK_F16                 = 0x6A,
    kVK_F14                 = 0x6B,
    kVK_F10                 = 0x6D,
    kVK_F12                 = 0x6F,
    kVK_F15                 = 0x71,
    kVK_Help                = 0x72,
    kVK_Home                = 0x73,
    kVK_PageUp              = 0x74,
    kVK_ForwardDelete       = 0x75,
    kVK_F4                  = 0x76,
    kVK_End                 = 0x77,
    kVK_F2                  = 0x78,
    kVK_PageDown            = 0x79,
    kVK_F1                  = 0x7A,
    kVK_LeftArrow           = 0x7B,
    kVK_RightArrow          = 0x7C,
    kVK_DownArrow           = 0x7D,
    kVK_UpArrow             = 0x7E,
};
#endif

#import <Cocoa/Cocoa.h>

#import <Geode/cocos/platform/mac/EAGLView.h>
#include <Geode/modify/CCKeyboardDispatcher.hpp>
#include <Geode/utils/Keyboard.hpp>
#include <Geode/utils/ObjcHook.hpp>
#include <objc/message.h>

using namespace geode::prelude;

// https://github.com/SpaghettDev/BetterInputs/blob/44f249cd94f4cc19fca4de570dfab28f4efa3db8/src/platform/macos.mm#L121
// we use this instead of [event keyCode] because the returned value of keyCode for letters is keyboard locale-specific
int normalizedCodeFromEvent(NSEvent* event) {
    if ([[event characters] length] > 0) {
        return [[event characters] characterAtIndex:0];
    } else if ([[event charactersIgnoringModifiers] length] > 0) {
        return [[event charactersIgnoringModifiers] characterAtIndex:0];
    }

    return 0;
}

enumKeyCodes extraKeyToKeyCode(NSEvent* event) {
    switch (normalizedCodeFromEvent(event)) {
        case ';':
            return KEY_Semicolon;
        case '\'':
            return KEY_Apostrophe;
        case '/':
            return KEY_Slash;
        case '=':
            return KEY_OEMEqual;
        case '[':
            return KEY_LeftBracket;
        case '\\':
            return KEY_Backslash;
        case ']':
            return KEY_RightBracket;
        case '`':
            return KEY_GraveAccent;
        default:
            break;
    }

    switch ([event keyCode]) {
        case kVK_ISO_Section:
            return KEY_World2;
        default:
            break;
    }

    return KEY_Unknown;
}
enumKeyCodes numpadToKeyCode(NSEvent* event) {
    switch (normalizedCodeFromEvent(event)) {
        case '0':
            return KEY_NumPad0;
        case '1':
            return KEY_NumPad1;
        case '2':
            return KEY_NumPad2;
        case '3':
            return KEY_NumPad3;
        case '4':
            return KEY_NumPad4;
        case '5':
            return KEY_NumPad5;
        case '6':
            return KEY_NumPad6;
        case '7':
            return KEY_NumPad7;
        case '8':
            return KEY_NumPad8;
        case '9':
            return KEY_NumPad9;
        case '.':
            return KEY_Decimal;
        case '/':
            return KEY_Divide;
        case '*':
            return KEY_Multiply;
        case '-':
            return KEY_Subtract;
        case '+':
            return KEY_Add;
        case 3:
            return KEY_NumEnter;
        case '=':
            return KEY_Equal;
        case NSUpArrowFunctionKey:
            return KEY_Up;
        case NSDownArrowFunctionKey:
            return KEY_Down;
        case NSLeftArrowFunctionKey:
            return KEY_Left;
        case NSRightArrowFunctionKey:
            return KEY_Right;
        default:
            return KEY_Unknown;
    }
}

enumKeyCodes convertKeyCode(NSEvent* event) {
    switch ([event keyCode]) {
        case kVK_ANSI_A: return KEY_A;
        case kVK_ANSI_S: return KEY_S;
        case kVK_ANSI_D: return KEY_D;
        case kVK_ANSI_F: return KEY_F;
        case kVK_ANSI_H: return KEY_H;
        case kVK_ANSI_G: return KEY_G;
        case kVK_ANSI_Z: return KEY_Z;
        case kVK_ANSI_X: return KEY_X;
        case kVK_ANSI_C: return KEY_C;
        case kVK_ANSI_V: return KEY_V;
        case kVK_ISO_Section: return KEY_World2;
        case kVK_ANSI_B: return KEY_B;
        case kVK_ANSI_Q: return KEY_Q;
        case kVK_ANSI_W: return KEY_W;
        case kVK_ANSI_E: return KEY_E;
        case kVK_ANSI_R: return KEY_R;
        case kVK_ANSI_Y: return KEY_Y;
        case kVK_ANSI_T: return KEY_T;
        case kVK_ANSI_1: return KEY_One;
        case kVK_ANSI_2: return KEY_Two;
        case kVK_ANSI_3: return KEY_Three;
        case kVK_ANSI_4: return KEY_Four;
        case kVK_ANSI_6: return KEY_Six;
        case kVK_ANSI_5: return KEY_Five;
        case kVK_ANSI_Equal: return KEY_OEMEqual;
        case kVK_ANSI_9: return KEY_Nine;
        case kVK_ANSI_7: return KEY_Seven;
        case kVK_ANSI_Minus: return KEY_Subtract;
        case kVK_ANSI_8: return KEY_Eight;
        case kVK_ANSI_0: return KEY_Zero;
        case kVK_ANSI_RightBracket: return KEY_RightBracket;
        case kVK_ANSI_O: return KEY_O;
        case kVK_ANSI_U: return KEY_U;
        case kVK_ANSI_LeftBracket: return KEY_LeftBracket;
        case kVK_ANSI_I: return KEY_I;
        case kVK_ANSI_P: return KEY_P;
        case kVK_Return: return KEY_Enter;
        case kVK_ANSI_L: return KEY_L;
        case kVK_ANSI_J: return KEY_J;
        case kVK_ANSI_Quote: return KEY_Apostrophe;
        case kVK_ANSI_K: return KEY_K;
        case kVK_ANSI_Semicolon: return KEY_Semicolon;
        case kVK_ANSI_Backslash: return KEY_Backslash;
        case kVK_ANSI_Comma: return KEY_OEMComma;
        case kVK_ANSI_Slash: return KEY_Slash;
        case kVK_ANSI_N: return KEY_N;
        case kVK_ANSI_M: return KEY_M;
        case kVK_ANSI_Period: return KEY_OEMPeriod;
        case kVK_Tab: return KEY_Tab;
        case kVK_Space: return KEY_Space;
        case kVK_ANSI_Grave: return KEY_GraveAccent;
        case kVK_Delete: return KEY_Backspace;
        case kVK_Escape: return KEY_Escape;
        case kVK_Shift: return KEY_LeftShift;
        case kVK_CapsLock: return KEY_CapsLock;
        case kVK_Option: return KEY_Alt;
        case kVK_Control: return KEY_LeftControl;
        case kVK_RightShift: return KEY_RightShift;
        case kVK_RightOption: return KEY_RightMenu;
        case kVK_RightControl: return KEY_RightControl;
        case kVK_F17: return KEY_F17;
        case kVK_ANSI_KeypadDecimal: return KEY_Decimal;
        case kVK_ANSI_KeypadMultiply: return KEY_Multiply;
        case kVK_ANSI_KeypadPlus: return KEY_Add;
        case kVK_ANSI_KeypadClear: return KEY_Clear;
        case kVK_VolumeUp: return KEY_VolumeUp;
        case kVK_VolumeDown: return KEY_VolumeDown;
        case kVK_Mute: return KEY_VolumeMute;
        case kVK_ANSI_KeypadDivide: return KEY_Divide;
        case kVK_ANSI_KeypadEnter: return KEY_Enter;
        case kVK_ANSI_KeypadMinus: return KEY_OEMMinus;
        case kVK_F18: return KEY_F18;
        case kVK_F19: return KEY_F19;
        case kVK_ANSI_KeypadEquals: return KEY_Equal;
        case kVK_ANSI_Keypad0: return KEY_NumPad0;
        case kVK_ANSI_Keypad1: return KEY_NumPad1;
        case kVK_ANSI_Keypad2: return KEY_NumPad2;
        case kVK_ANSI_Keypad3: return KEY_NumPad3;
        case kVK_ANSI_Keypad4: return KEY_NumPad4;
        case kVK_ANSI_Keypad5: return KEY_NumPad5;
        case kVK_ANSI_Keypad6: return KEY_NumPad6;
        case kVK_ANSI_Keypad7: return KEY_NumPad7;
        case kVK_F20: return KEY_F20;
        case kVK_ANSI_Keypad8: return KEY_NumPad8;
        case kVK_ANSI_Keypad9: return KEY_NumPad9;
        case kVK_F5: return KEY_F5;
        case kVK_F6: return KEY_F6;
        case kVK_F7: return KEY_F7;
        case kVK_F3: return KEY_F3;
        case kVK_F8: return KEY_F8;
        case kVK_F9: return KEY_F9;
        case kVK_F11: return KEY_F11;
        case kVK_F13: return KEY_F13;
        case kVK_F16: return KEY_F16;
        case kVK_F14: return KEY_F14;
        case kVK_F10: return KEY_F10;
        case kVK_F12: return KEY_F12;
        case kVK_F15: return KEY_F15;
        case kVK_Help: return KEY_Help;
        case kVK_Home: return KEY_Home;
        case kVK_PageUp: return KEY_PageUp;
        case kVK_F4: return KEY_F4;
        case kVK_End: return KEY_End;
        case kVK_F2: return KEY_F2;
        case kVK_PageDown: return KEY_PageDown;
        case kVK_F1: return KEY_F1;
        case kVK_LeftArrow: return KEY_Left;
        case kVK_RightArrow: return KEY_Right;
        case kVK_DownArrow: return KEY_Down;
        case kVK_UpArrow: return KEY_Up;
        default: return KEY_Unknown;
    }
}

enumKeyCodes getKeyCode(NSEvent* event) {
    enumKeyCodes keyCode = extraKeyToKeyCode(event);
    if (keyCode != KEY_Unknown) {
        return keyCode;
    } else if (([event modifierFlags] & NSEventModifierFlagNumericPad) != 0) {
        return numpadToKeyCode(event);
    } else {
        return convertKeyCode(event);
    }
}

static KeyboardModifier extractModifiersFromNSEvent(NSEvent* event) {
    NSEventModifierFlags flags = [event modifierFlags];
    KeyboardModifier modifiers = KeyboardModifier::None;

    if ((flags & NSEventModifierFlagShift) != 0) {
        modifiers |= KeyboardModifier::Shift;
    }
    if ((flags & NSEventModifierFlagControl) != 0) {
        modifiers |= KeyboardModifier::Control;
    }
    if ((flags & NSEventModifierFlagOption) != 0) {
        modifiers |= KeyboardModifier::Alt;
    }
    if ((flags & NSEventModifierFlagCommand) != 0) {
        modifiers |= KeyboardModifier::Super;
    }

    return modifiers;
}

void keyDownExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    unichar nativeCode = [event keyCode];
    enumKeyCodes keyCode = getKeyCode(event);
    CCIMEDispatcher* imeDispatcher = CCIMEDispatcher::sharedDispatcher();
    CCKeyboardDispatcher* keyboardDispatcher = CCKeyboardDispatcher::get();
    double timestamp = [event timestamp];
    bool isRepeat = [event isARepeat];
    bool isDown = true;

    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    NSString* characters = [event characters];
    if ([characters length] == 0) {
        characters = [event charactersIgnoringModifiers];
    }

    if ([characters length] != 0) {
        unichar character = [characters characterAtIndex:0];
        if (character == 0x7f) {
            imeDispatcher->dispatchDeleteBackward();
        }
        else if (character == NSDeleteFunctionKey) {
            imeDispatcher->dispatchDeleteForward();
        }
        else if (keyCode == KEY_V && (modifiers & KeyboardModifier::Super) != KeyboardModifier::None) {
            NSString* str = [[NSPasteboard generalPasteboard] stringForType:NSPasteboardTypeString];
            if (str != nil && ![str isEqualToString:NSPasteboardTypeString]) {
                std::string_view input{[str UTF8String], [str lengthOfBytesUsingEncoding:NSUTF8StringEncoding]};
                imeDispatcher->dispatchInsertText(input.data(), input.size(), keyCode);
            }
        }
        else {
            // we might send multiple bytes of data as utf8!
            std::string_view input{[characters UTF8String], [characters lengthOfBytesUsingEncoding:NSUTF8StringEncoding]};
            imeDispatcher->dispatchInsertText(input.data(), input.size(), keyCode);
        }
    }

    KeyboardInputData data(
        keyCode, isRepeat ? KeyboardInputData::Action::Repeat : KeyboardInputData::Action::Press,
        { nativeCode },
        timestamp,
        modifiers
    );

    if (KeyboardInputEvent(keyCode).send(data) != ListenerResult::Propagate) return;

    isDown = data.action != KeyboardInputData::Action::Release;
    isRepeat = data.action == KeyboardInputData::Action::Repeat;
    keyCode = data.key;
    modifiers = data.modifiers;

    if (keyCode != KEY_Unknown && (!imeDispatcher->hasDelegate() || keyCode == KEY_Escape || keyCode == KEY_Enter)) {
        keyboardDispatcher->dispatchKeyboardMSG(keyCode, isDown, isRepeat, timestamp);
    }

    keyboardDispatcher->updateModifierKeys(
        modifiers & KeyboardModifier::Shift,
        modifiers & KeyboardModifier::Control,
        modifiers & KeyboardModifier::Alt,
        modifiers & KeyboardModifier::Super
    );
}

void keyUpExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    unichar nativeCode = [event keyCode];
    enumKeyCodes keyCode = getKeyCode(event);
    CCIMEDispatcher* imeDispatcher = CCIMEDispatcher::sharedDispatcher();
    CCKeyboardDispatcher* keyboardDispatcher = CCKeyboardDispatcher::get();
    double timestamp = [event timestamp];
    bool isRepeat = false;
    bool isDown = false;

    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    KeyboardInputData data(
        keyCode, KeyboardInputData::Action::Release,
        { nativeCode },
        timestamp,
        modifiers
    );

    if (KeyboardInputEvent(keyCode).send(data) != ListenerResult::Propagate) return;

    isDown = data.action != KeyboardInputData::Action::Release;
    isRepeat = data.action == KeyboardInputData::Action::Repeat;
    keyCode = data.key;
    modifiers = data.modifiers;

    if (keyCode != KEY_Unknown && (!imeDispatcher->hasDelegate() || keyCode == KEY_Escape || keyCode == KEY_Enter)) {
        keyboardDispatcher->dispatchKeyboardMSG(keyCode, isDown, isRepeat, timestamp);
    }

    keyboardDispatcher->updateModifierKeys(
        modifiers & KeyboardModifier::Shift,
        modifiers & KeyboardModifier::Control,
        modifiers & KeyboardModifier::Alt,
        modifiers & KeyboardModifier::Super
    );
}

void mouseDownExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    double timestamp = [event timestamp];
    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    MouseInputData data(
        MouseInputData::Button::Left,
        MouseInputData::Action::Press,
        timestamp,
        modifiers
    );

    if (MouseInputEvent().send(data) != ListenerResult::Propagate) return;

    NSPoint point = [self convertPoint:[event locationInWindow] fromView:nil];
    int eventNumber = [event eventNumber];
    float frameZoomFactor = [self frameZoomFactor];
    float backingScaleFactor = [self getBackingFactor];
    float mouseX = (point.x / frameZoomFactor) / backingScaleFactor;
    float mouseY = (([self getHeight] - point.y) / frameZoomFactor) / backingScaleFactor;
    CCEGLView* eglView = CCEGLView::get();
    if (data.action == MouseInputData::Action::Press) {
        eglView->handleTouchesBegin(1, &eventNumber, &mouseX, &mouseY, timestamp);
    }
    else {
        eglView->handleTouchesEnd(1, &eventNumber, &mouseX, &mouseY, timestamp);
    }
}

void mouseMovedExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    //always update CCEGLView mouse pos to match windows behaviour
    [self storeEventPoint:event key:0];

    NSPoint pt = [self convertPoint:[event locationInWindow] fromView:nil];
    if (MouseMoveEvent().send(pt.x, pt.y) != ListenerResult::Propagate) return;

    [self performSelector:sel withObject:event];
}

void mouseDraggedExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    NSPoint point = [self convertPoint:[event locationInWindow] fromView:nil];
    if (MouseMoveEvent().send(point.x, point.y) != ListenerResult::Propagate) return;

    [self performSelector:sel withObject:event];
}

void mouseUpExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    double timestamp = [event timestamp];
    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    MouseInputData data(
        MouseInputData::Button::Left,
        MouseInputData::Action::Release,
        timestamp,
        modifiers
    );

    if (MouseInputEvent().send(data) != ListenerResult::Propagate) return;

    NSPoint point = [self convertPoint:[event locationInWindow] fromView:nil];
    int eventNumber = [event eventNumber];
    float frameZoomFactor = [self frameZoomFactor];
    float backingScaleFactor = [self getBackingFactor];
    float mouseX = (point.x / frameZoomFactor) / backingScaleFactor;
    float mouseY = (([self getHeight] - point.y) / frameZoomFactor) / backingScaleFactor;
    CCEGLView* eglView = CCEGLView::get();
    if (data.action == MouseInputData::Action::Press) {
        eglView->handleTouchesBegin(1, &eventNumber, &mouseX, &mouseY, timestamp);
    }
    else {
        eglView->handleTouchesEnd(1, &eventNumber, &mouseX, &mouseY, timestamp);
    }
}

void rightMouseDownHook(EAGLView* self, SEL sel, NSEvent* event) {
    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    MouseInputData data(
        MouseInputData::Button::Right,
        MouseInputData::Action::Press,
        [event timestamp],
        modifiers
    );

    Loader::get()->queueInMainThread([data = std::move(data)] mutable {
        MouseInputEvent().send(data);
    });

    [self performSelector:sel withObject:event];
}

void rightMouseDraggedHook(EAGLView* self, SEL sel, NSEvent* event) {
    NSPoint point = [self convertPoint:[event locationInWindow] fromView:nil];

    Loader::get()->queueInMainThread([point] {
        MouseMoveEvent().send(point.x, point.y);
    });

    [self performSelector:sel withObject:event];
}

void rightMouseUpHook(EAGLView* self, SEL sel, NSEvent* event) {
    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    MouseInputData data(
        MouseInputData::Button::Right,
        MouseInputData::Action::Release,
        [event timestamp],
        modifiers
    );

    Loader::get()->queueInMainThread([data = std::move(data)] mutable {
        MouseInputEvent().send(data);
    });

    [self performSelector:sel withObject:event];
}

static void dispatchMouseButtonAsKey(MouseInputData const& data) {
    auto key = MouseInputData::buttonToKeyCode(data.button);
    if (key == KEY_None) return;

    bool isDown = data.action == MouseInputData::Action::Press;
    if (isDown && CCIMEDispatcher::sharedDispatcher()->hasDelegate()) return;

    auto* keyboardDispatcher = CCKeyboardDispatcher::get();
    keyboardDispatcher->updateModifierKeys(
        data.modifiers & KeyboardModifier::Shift,
        data.modifiers & KeyboardModifier::Control,
        data.modifiers & KeyboardModifier::Alt,
        data.modifiers & KeyboardModifier::Super
    );
    keyboardDispatcher->dispatchKeyboardMSG(key, isDown, false, data.timestamp);
}

void otherMouseDownHook(EAGLView* self, SEL sel, NSEvent* event) {
    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    MouseInputData data(
        static_cast<MouseInputData::Button>([event buttonNumber]),
        MouseInputData::Action::Press,
        [event timestamp],
        modifiers
    );

    Loader::get()->queueInMainThread([data = std::move(data)] mutable {
        if (MouseInputEvent().send(data) == ListenerResult::Propagate) {
            dispatchMouseButtonAsKey(data);
        }
    });

    [self performSelector:sel withObject:event];
}

void otherMouseDraggedHook(EAGLView* self, SEL sel, NSEvent* event) {
    NSPoint point = [self convertPoint:[event locationInWindow] fromView:nil];

    Loader::get()->queueInMainThread([point] {
        MouseMoveEvent().send(point.x, point.y);
    });

    [self performSelector:sel withObject:event];
}

void otherMouseUpHook(EAGLView* self, SEL sel, NSEvent* event) {
    KeyboardModifier modifiers = extractModifiersFromNSEvent(event);

    MouseInputData data(
        static_cast<MouseInputData::Button>([event buttonNumber]),
        MouseInputData::Action::Release,
        [event timestamp],
        modifiers
    );

    Loader::get()->queueInMainThread([data = std::move(data)] mutable {
        if (MouseInputEvent().send(data) == ListenerResult::Propagate) {
            dispatchMouseButtonAsKey(data);
        }
    });

    [self performSelector:sel withObject:event];
}

void scrollWheelExecHook(EAGLView* self, SEL sel, NSEvent* event) {
    double xoffset = [event scrollingDeltaX];
    double yoffset = [event scrollingDeltaY];

    if (ScrollWheelEvent().send(xoffset, yoffset) != ListenerResult::Propagate) return;

    [self performSelector:sel withObject:event];
}

template <class Func>
void hookObjcMethod(const char* className, const char* methodName, Func newImp) {
    if (Result<std::shared_ptr<Hook>> res = ObjcHook::create(className, methodName, newImp)) {
        std::shared_ptr<Hook> hook = std::move(res).unwrap();
        hook->setPriority(Priority::Replace);
        (void)Mod::get()->claimHook(std::move(hook));
    }
}

$execute {
    hookObjcMethod("EAGLView", "keyDownExec:", &keyDownExecHook);
    hookObjcMethod("EAGLView", "keyUpExec:", &keyUpExecHook);
    hookObjcMethod("EAGLView", "mouseDownExec:", &mouseDownExecHook);
    hookObjcMethod("EAGLView", "mouseMovedExec:", &mouseMovedExecHook);
    hookObjcMethod("EAGLView", "mouseDraggedExec:", &mouseDraggedExecHook);
    hookObjcMethod("EAGLView", "mouseUpExec:", &mouseUpExecHook);
    hookObjcMethod("EAGLView", "rightMouseDown:", &rightMouseDownHook);
    hookObjcMethod("EAGLView", "rightMouseDragged:", &rightMouseDraggedHook);
    hookObjcMethod("EAGLView", "rightMouseUp:", &rightMouseUpHook);
    hookObjcMethod("EAGLView", "otherMouseDown:", &otherMouseDownHook);
    hookObjcMethod("EAGLView", "otherMouseDragged:", &otherMouseDraggedHook);
    hookObjcMethod("EAGLView", "otherMouseUp:", &otherMouseUpHook);
    hookObjcMethod("EAGLView", "scrollWheelExec:", &scrollWheelExecHook);
}
