# Layout Visual Guide

## Main Screen - Layout Selector (算数ドリル - レイアウト選択)

The main screen displays a scrollable list of 10 layout options. Each layout is presented as a card with:
- A colored square icon showing the layout number
- Layout name in both English and Japanese
- A brief description
- A forward arrow indicating it's tappable
- Gradient background matching the layout's theme

## Common Features Across All Layouts

Every layout includes:
1. **AppBar**: Shows the layout name at the top with colored background
2. **Problem Display Area**: Shows the arithmetic problem (e.g., "12 + 5 = ?")
3. **Answer Display**: Shows the user's typed answer or placeholder text
4. **Feedback Icons**: Visual indicators (✓ or ✗) when answer is submitted
5. **NumPad Section**: 4x3 grid of buttons:
   - Row 1: 7, 8, 9
   - Row 2: 4, 5, 6
   - Row 3: 1, 2, 3
   - Row 4: C (Clear), 0, OK (Submit)

## Individual Layout Descriptions

### Layout 1: Classic Centered (Blue)
```
┌─────────────────────────────┐
│ Classic Centered            │ ← AppBar (Blue)
├─────────────────────────────┤
│                             │
│         12 + 5 = ?          │ ← Problem (Large, centered)
│             17              │ ← Answer (centered)
│             ✓               │ ← Feedback icon
│                             │
├─────────────────────────────┤
│  [7] [8] [9]               │
│  [4] [5] [6]               │ ← NumPad
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Light blue background for problem area
- Centered alignment
- Simple, clean design

### Layout 2: Split Horizontal (Green)
```
┌─────────────────────────────┐
│ Split Horizontal            │ ← AppBar (Green)
├─────────────────────────────┤
│                             │
│ 12 + 5 = ?                 │ ← Problem (left-aligned)
│ Answer: 17                 │ ← Answer with label
│ ✓ Correct!                 │ ← Text feedback
│                             │
├─────────────────────────────┤
│  [7] [8] [9]               │
│  [4] [5] [6]               │ ← NumPad (Green buttons)
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Green theme throughout
- Left-aligned text
- Text-based feedback ("Correct!" or "Try again!")

### Layout 3: Large Header (Purple)
```
┌─────────────────────────────┐
│ Large Header                │ ← AppBar (Purple)
├─────────────────────────────┤
│  ╔═══════════════════════╗  │
│  ║                       ║  │
│  ║    12 + 5 = ?        ║  │ ← Very large font with shadow
│  ║                       ║  │
│  ║      ┌──────┐        ║  │
│  ║      │  17  │        ║  │ ← Answer in white box
│  ║      └──────┘        ║  │
│  ║         ✓            ║  │
│  ╚═══════════════════════╝  │
├─────────────────────────────┤
│  [7] [8] [9]               │
│  [4] [5] [6]               │
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Purple gradient background
- Extra large problem text (64px) with shadow
- White bordered container for answer
- Takes up more vertical space

### Layout 4: Split Vertical 50-50 (Orange)
```
┌─────────────────────────────┐
│ Split Vertical 50-50        │ ← AppBar (Orange)
├─────────────────────────────┤
│         12 + 5 = ?          │
│             17              │ ← Problem section (50% height)
│             😊              │ ← Emoji feedback
├─────────────────────────────┤
│  [7] [8] [9]               │
│  [4] [5] [6]               │ ← NumPad section (50% height)
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Equal height for problem and numpad areas
- Orange color theme
- Emoji feedback (😊 or 😞)

### Layout 5: With Progress Bar (Teal)
```
┌─────────────────────────────┐
│ With Progress Bar           │ ← AppBar (Teal)
├─────────────────────────────┤
│ ████████░░░░░░░░░░░░░░░░   │ ← Progress bar
│ Example Problem             │ ← Progress text
│                             │
│         12 + 5 = ?          │ ← Problem
│     ┌──────────┐            │
│     │    17    │            │ ← Answer in bordered box
│     └──────────┘            │
│     👍 Great job!           │ ← Icon + text feedback
├─────────────────────────────┤
│  [7] [8] [9]               │
│  [4] [5] [6]               │
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Teal color scheme
- Linear progress indicator at top
- Bordered answer input box
- Icon + text combined feedback

### Layout 6: Colorful Theme (Pink/Yellow/Cyan)
```
┌─────────────────────────────┐
│ Colorful Theme              │ ← AppBar (Pink)
├─────────────────────────────┤
│ ╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲   │ ← Gradient background
│ ╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱╲╱   │   (Pink/Yellow/Cyan)
│   ┌─────────────────────┐   │
│   │   12 + 5 = ?       │   │ ← White card with shadow
│   │       17           │   │
│   └─────────────────────┘   │
│     【 ★ Perfect! 】       │ ← Rounded badge feedback
├─────────────────────────────┤
│  [7] [8] [9]               │ ← Pink buttons
│  [4] [5] [6]               │
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Multi-color gradient (pink to yellow to cyan)
- White floating card for problem
- Colorful, playful design
- Star icon for correct answers

### Layout 7: Card Style (Blue)
```
┌─────────────────────────────┐
│ Card Style                  │ ← AppBar (Blue)
├─────────────────────────────┤
│                             │
│   ┏━━━━━━━━━━━━━━━━━━━┓   │
│   ┃  Solve this:       ┃   │ ← Elevated card
│   ┃                    ┃   │
│   ┃   12 + 5 = ?      ┃   │ ← Problem in card
│   ┃                    ┃   │
│   ┃  ┌─────────────┐  ┃   │
│   ┃  │ Type here...│  ┃   │ ← Answer box in card
│   ┃  └─────────────┘  ┃   │
│   ┃        ⊙          ┃   │ ← Large feedback icon
│   ┗━━━━━━━━━━━━━━━━━━━┛   │
├─────────────────────────────┤
│  [7] [8] [9]               │
│  [4] [5] [6]               │
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- Grey background
- High elevation card with shadow
- Professional, modern look
- "Solve this:" prompt text

### Layout 8: Minimal Design (Grey)
```
┌─────────────────────────────┐
│ Minimal Design              │ ← AppBar (Black)
├─────────────────────────────┤
│                             │
│                             │
│      12 + 5 = ?            │ ← Thin font, lots of space
│                             │
│      ───────────            │ ← Simple line separator
│          17                 │ ← Minimal answer display
│                             │
│          (✓)                │ ← Circle icon feedback
│                             │
├─────────────────────────────┤
│  [7] [8] [9]               │ ← Grey/black buttons
│  [4] [5] [6]               │
│  [1] [2] [3]               │
│  [C] [0] [OK]              │
└─────────────────────────────┘
```
- All white/grey color scheme
- Thin font weights (300-400)
- Maximum white space
- Clean, elegant appearance
- Circle with icon for feedback

### Layout 9: Tablet Wide (Indigo)
```
┌───────────────────────────────────────┐
│ Tablet Wide                           │ ← AppBar (Indigo)
├───────────────────────────────────────┤
│                                       │
│  Problem          │  Your Answer     │
│                   │                   │
│  12 + 5 = ?      │      17          │ ← Side by side
│                   │       ✓           │
│                   │                   │
├───────────────────────────────────────┤
│          [7] [8] [9]                 │
│          [4] [5] [6]                 │ ← Centered numpad
│          [1] [2] [3]                 │   (max width 500)
│          [C] [0] [OK]                │
└───────────────────────────────────────┘
```
- Side-by-side layout with vertical divider
- Labeled sections: "Problem" and "Your Answer"
- Optimized for tablets/wide screens
- Indigo color scheme
- Constrained numpad width

### Layout 10: Phone Compact (Deep Orange)
```
┌─────────────────────────────┐
│ Phone Compact               │ ← AppBar (Deep Orange)
├─────────────────────────────┤
│  ┌─────────────────────┐   │
│  │   12 + 5 = ?       │   │ ← White compact card
│  │   ─────────────     │   │
│  │ Tap numbers below   │   │ ← Helpful hint
│  └─────────────────────┘   │
│    【Correct!】           │ ← Chip-style feedback
├─────────────────────────────┤
│ [7] [8] [9]                │
│ [4] [5] [6]                │ ← Compact numpad
│ [1] [2] [3]                │   (small padding)
│ [C] [0] [OK]               │
└─────────────────────────────┘
```
- Compact design for phones
- Small padding, efficient use of space
- Single white card for problem
- Chip/badge style feedback
- Deep orange theme
- Hint text "Tap numbers below"

## Interaction Flow

1. **Start**: App launches showing Layout Selector with 10 cards
2. **Select**: User taps any layout card
3. **Navigate**: App navigates to that layout with a random problem
4. **Input**: User taps numpad buttons to enter answer
5. **Clear**: User can tap "C" to clear the answer
6. **Submit**: User taps "OK" to submit answer
7. **Feedback**: Visual feedback appears for 2 seconds
8. **Auto-clear**: Answer and feedback disappear
9. **Back**: User taps back button to return to selector
10. **Repeat**: User can try another layout

## Technical Notes

- All layouts support 4 operations: +, −, ×, ÷
- Random problem generation on layout entry
- Answer limited to 6 digits
- 2-second feedback display duration
- Automatic state cleanup
- Material Design components throughout
- Responsive to different screen sizes
