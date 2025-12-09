# 算数ドリルさん - Math Drill Application

## Overview
This Flutter application provides 10 different layout patterns for displaying arithmetic problems with a numeric keypad for answers.

## Features
- **10 Unique Layouts**: Each layout offers a different visual presentation of math problems
- **Four Operations**: Addition (+), Subtraction (−), Multiplication (×), Division (÷)
- **Interactive Numpad**: Custom numeric keypad for entering answers
- **Instant Feedback**: Visual indicators for correct/incorrect answers

## Layout Descriptions

### 1. Classic Centered (Blue Theme)
- Simple, centered layout
- Clean and traditional design
- Problem displayed prominently in the center
- Blue color scheme

### 2. Split Horizontal (Green Theme)
- Problem aligned to the left
- Clear separation between problem and answer
- Text feedback for results
- Green color scheme

### 3. Large Header (Purple Theme)
- Extra large font for the problem
- Gradient background
- Answer displayed in a white container
- Purple gradient theme with shadows

### 4. Split Vertical 50-50 (Orange Theme)
- Equal space for problem and keypad
- Balanced layout
- Emoji feedback icons
- Orange color scheme

### 5. With Progress Bar (Teal Theme)
- Progress indicator at the top
- Shows problem number (e.g., "Problem 3 of 10")
- Bordered answer input
- Teal color scheme

### 6. Colorful Theme (Pink/Yellow/Cyan)
- Multi-color gradient background
- White card for problem display
- Vibrant, playful design
- Stars and refresh icons for feedback

### 7. Card Style (Blue Theme)
- Elevated card design with shadows
- "Solve this:" prompt
- Professional, modern appearance
- Raised numpad section

### 8. Minimal Design (Grey Theme)
- Clean, minimalist aesthetic
- Lots of white space
- Simple line separator
- Monochrome color palette

### 9. Tablet Wide (Indigo Theme)
- Optimized for tablets and wide screens
- Side-by-side layout with divider
- Labeled sections for "Problem" and "Your Answer"
- Centered, constrained numpad

### 10. Phone Compact (Deep Orange Theme)
- Optimized for mobile phones
- Compact, efficient use of space
- All elements tightly grouped
- Chip-style result indicator

## Project Structure

```
lib/
├── main.dart                          # Application entry point
├── models/
│   └── math_problem.dart              # Math problem data model
├── widgets/
│   └── numpad.dart                    # Reusable numeric keypad widget
└── screens/
    ├── base_drill_layout.dart         # Base class for all layouts
    ├── layout_1_to_5.dart             # Layouts 1-5 implementations
    ├── layout_6_to_10.dart            # Layouts 6-10 implementations
    └── layout_selector_screen.dart    # Main screen for selecting layouts
```

## Usage

1. Launch the application
2. On the main screen, you'll see all 10 layout options
3. Tap on any layout to view it
4. A random math problem will be generated
5. Use the numpad to enter your answer
6. Press "OK" to submit
7. Press "C" to clear your answer
8. Visual feedback will appear for 2 seconds
9. Use the back button to return to the layout selector

## Technical Details

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: StatefulWidget with setState
- **UI Components**: Material Design
- **Random Problem Generation**: Built-in Random class
- **Navigation**: Material PageRoute

## Features of Each Layout

All layouts include:
- Random math problem generation
- Interactive numeric keypad (0-9, Clear, OK)
- Visual feedback on answer submission
- Auto-clear after 2 seconds
- Back navigation to selector screen
- Themed color schemes
- Responsive design

## Future Enhancements

Potential improvements could include:
- Problem difficulty levels
- Score tracking
- Timer mode
- Multiple problems in sequence
- Sound effects
- Achievement system
- User preferences/favorites
- Problem history
