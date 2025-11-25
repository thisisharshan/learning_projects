---
id: Guide
aliases: []
tags: []
---

# 🚗 Build Your Own RC Car in 2 Days!
## The Rexy | Jade Model-1 - Complete Beginner's Guide

**What you're building:** A smartphone-controlled RC car that responds to joystick AND voice commands! 🎮🗣️

**Budget:** ₹1,500 total  
**Time:** 2 days (4-6 hours total)  
**Skill needed:** ZERO experience required!

---

## 🎯 What This Car Can Do

- ✅ Control with phone joystick (forward, back, left, right)
- ✅ Voice commands ("go forward", "turn left", "stop")
- ✅ Wireless range: 10-30 feet
- ✅ Speed: Good for indoor/outdoor fun
- ✅ Battery life: 30-60 minutes per charge

**Think of it like:** A remote control car, but your phone is the remote! 📱

---

## 📦 Complete Shopping List (India)

### **1. Electronics (₹677)**

| Item | Price | Where to Buy | Purpose |
|------|-------|--------------|---------|
| STM32F103C8T6 (Blue Pill) | ₹210 | Robu.in, Amazon | The "brain" - controls everything |
| L298N Motor Driver | ₹140 | Local electronics shop, Robu | Makes motors spin |
| HC-05 Bluetooth Module | ₹177 | Amazon, Robocraze | Connects to your phone |
| Jumper wires (40pc) | ₹60 | Local shop | Connects components |
| Misc sensors (optional) | ₹90 | Skip for now | For future upgrades |

### **2. Power System (₹610)**

| Item | Price | Where to Buy | Purpose |
|------|-------|--------------|---------|
| 18650 Battery (2 cells) | ₹320 | Battery shop, Amazon | Power supply (7.4V) |
| Battery Holder (2-cell) | ₹40 | Local electronics | Holds batteries safely |
| USB Li-ion Charger | ₹90 | Amazon | Charges batteries |
| Wires/Connectors | ₹60 | Local shop | Power connections |
| Switch (toggle) | ₹100 | Local shop | On/Off control |

### **3. Motors & Chassis (₹375)**

| Item | Price | Where to Buy | Purpose |
|------|-------|--------------|---------|
| BO Geared Motors (2pc) | ₹130 | Robu, local robotics shop | Drive wheels |
| Plastic Wheels (2pc) | ₹120 | Comes with motor kit usually | Attach to motors |
| Acrylic Chassis | ₹90 | Robocraze, DIY | Body of car |
| Caster Wheel | ₹35 | Robocraze | Front support wheel |

### **4. Tools & Accessories (₹390 - borrow to save money!)**

| Item | Price | Where to Get | Purpose |
|------|-------|--------------|---------|
| Soldering Iron | ₹200 | Borrow or buy cheap | Join wires |
| Screwdriver Set | ₹160 | Borrow from home | Assembly |
| Electrical Tape | ₹30 | Local shop | Insulation |
| Hot Glue Gun (optional) | ₹140 | Optional - use tape instead | Quick fixes |

**💡 Money-Saving Tips:**
- Borrow soldering iron from friend/makerspace = Save ₹200
- Use cardboard instead of acrylic chassis = Save ₹90
- Total can be as low as ₹1,200!

---

## 🧠 Understanding the Parts (ELI5 Style)

### **STM32F103C8T6 (Blue Pill) - The Brain 🧠**
**What it is:** A tiny computer smaller than your thumb  
**What it does:** Receives commands from phone, tells motors what to do  
**Think of it as:** Your car's brain - makes all decisions

### **L298N Motor Driver - The Muscle 💪**
**What it is:** A chip with big power transistors  
**What it does:** Takes weak signals from brain, converts to strong power for motors  
**Think of it as:** A translator - converts "move forward" into actual motor power  
**Why needed:** The brain is too weak to power motors directly

### **HC-05 Bluetooth Module - The Ears 👂**
**What it is:** Wireless receiver  
**What it does:** Listens to your phone's commands  
**Think of it as:** Walkie-talkie - receives messages from phone

### **BO Geared Motors - The Legs 🦵**
**What it is:** Small motors with gears (increases torque/strength)  
**What it does:** Spins wheels  
**Why "geared":** Makes car stronger, can climb small obstacles

### **18650 Batteries - The Stomach 🔋**
**What it is:** Rechargeable battery (like in laptops)  
**What it does:** Powers everything  
**Why 2 batteries:** 2 × 3.7V = 7.4V (perfect power level)

---

## 📅 2-Day Build Schedule

### **DAY 1: Electronics & Testing (3-4 hours)**
**Morning (2 hours):**
- Unbox and organize parts
- Learn to use soldering iron (practice on scrap wire)
- Solder headers to Blue Pill

**Afternoon (1-2 hours):**
- Connect brain to motor driver (test wiring)
- Connect Bluetooth module
- Upload test code
- Test motors spinning (no chassis yet)

### **DAY 2: Assembly & Final Testing (2-3 hours)**
**Morning (1.5 hours):**
- Assemble chassis
- Mount motors and wheels
- Mount electronics on chassis

**Afternoon (1 hour):**
- Connect battery system
- Install switch
- Final testing
- Download phone app and DRIVE! 🎉

---

## 🔧 DAY 1: Electronics Setup

### **Step 1: Prepare Your Workspace**

**What you need:**
- Clear table (2ft × 2ft space)
- Good lighting
- Small container for screws/parts
- Newspaper (protect table from soldering)

**⚠️ SAFETY FIRST:**
- Soldering iron gets HOT (400°C) - never touch the metal tip
- Work in ventilated area (open window)
- Keep water nearby (in case of burns)
- No loose clothing near soldering iron

---

### **Step 2: Solder Headers to Blue Pill (30 min)**

**What are headers?** Pins that stick out so you can plug in wires easily.

**What you'll need:**
- Blue Pill board
- 2 × 20-pin header strips (usually included)
- Soldering iron
- Solder wire
- Helping hands tool (or tape to hold board)

**Instructions:**

1. **Insert headers into Blue Pill:**
   - Headers have short side and long side
   - Insert SHORT side into holes on Blue Pill
   - Long pins stick out the bottom
   - All 40 pins (20 on each side)

2. **Flip board over:**
   - Place on flat surface
   - Headers should keep board elevated
   - Short pins poking through top of board

3. **Heat and solder each pin:**
   ```
   For EACH of the 40 pins:
   
   a) Touch soldering iron tip to BOTH the pin AND the circular pad
   b) Wait 2 seconds (let it heat up)
   c) Touch solder wire to the joint (NOT the iron tip)
   d) Solder will melt and flow around pin
   e) Remove solder wire (keep iron on joint 1 more second)
   f) Remove iron
   g) Let cool 5 seconds
   
   Good joint looks like: Small shiny volcano 🌋
   Bad joint looks like: Blob, or doesn't stick
   ```

4. **Inspect your work:**
   - Each pin should be firmly connected
   - No solder bridges between adjacent pins
   - If bridge exists: Heat it, drag iron to separate

**✅ Test:** Gently try to pull headers - they shouldn't move!

**😰 First time soldering?** Watch this 5-min video: "How to Solder for Beginners" (search YouTube)

---

### **Step 3: Understanding the Wiring (No touching yet!)**

**Let's learn what connects to what:**

```
PHONE (Bluetooth) ←→ HC-05 ←→ BLUE PILL ←→ L298N ←→ MOTORS
                                    ↓
                                 BATTERY
```

**Flow of control:**
1. You press "forward" on phone
2. Phone sends Bluetooth signal "F"
3. HC-05 receives it, sends to Blue Pill
4. Blue Pill thinks: "F means forward, tell L298N"
5. Blue Pill sends signals to L298N
6. L298N powers motors accordingly
7. Car moves forward!

---

### **Step 4: Connect Bluetooth Module to Blue Pill**

**⚠️ BATTERIES NOT CONNECTED YET - NO POWER**

**HC-05 Module Pins (4 pins):**
- VCC = Power (needs 5V)
- GND = Ground (negative/return path)
- TX = Transmit (sends data)
- RX = Receive (receives data)

**Blue Pill Pins (we'll use):**
- 5V = Gives 5V power
- GND = Ground
- PA9 = UART1 TX (transmit)
- PA10 = UART1 RX (receive)

**🔌 Connection Table:**

| HC-05 Pin | Wire Color | Blue Pill Pin | Why |
|-----------|------------|---------------|-----|
| VCC | Red | 5V | Power to HC-05 |
| GND | Black | GND | Common ground |
| TX | Yellow | PA10 (RX) | HC-05 sends → Blue Pill receives |
| RX | Green | PA9 (TX) | Blue Pill sends → HC-05 receives |

**📌 Important:** TX connects to RX, RX connects to TX (they talk to each other)

**How to connect:**
1. Take 4 female-to-female jumper wires
2. Plug one end into HC-05 pins
3. Plug other end into Blue Pill pins per table above
4. Use the color code (helps you remember)

**✅ Double-check:**
- VCC to 5V? ✓
- GND to GND? ✓
- TX to PA10? ✓
- RX to PA9? ✓

---

### **Step 5: Connect Motor Driver (L298N) to Blue Pill**

**L298N Motor Driver Pins (we'll use):**

**Control Side (connects to Blue Pill):**
- IN1, IN2 = Control Motor A (left)
- IN3, IN4 = Control Motor B (right)
- ENA, ENB = Speed control (PWM)
- GND = Ground

**Power Side (connects to motors & battery):**
- OUT1, OUT2 = Motor A terminals
- OUT3, OUT4 = Motor B terminals
- 12V = Battery positive input
- GND = Battery negative

**🔌 Connection Table:**

| L298N Pin | Wire Color | Blue Pill Pin | Purpose |
|-----------|------------|---------------|---------|
| IN1 | Orange | PB12 | Motor A direction bit 1 |
| IN2 | Yellow | PB13 | Motor A direction bit 2 |
| IN3 | Green | PB14 | Motor B direction bit 1 |
| IN4 | Blue | PB15 | Motor B direction bit 2 |
| ENA | Purple | PA8 | Motor A speed (PWM) |
| ENB | Gray | PA11 | Motor B speed (PWM) |
| GND | Black | GND | Common ground |

**How to connect:**
1. Take 7 female-to-male jumper wires
2. Female end → Blue Pill pins
3. Male end → L298N screw terminals (loosen screw, insert wire, tighten)

**⚠️ DON'T connect battery power yet!**

**✅ Double-check all 7 wires connected correctly**

---

### **Step 6: Connect Motors to L298N**

**BO Geared Motors:**
- Each motor has 2 wires (red and black)
- Direction depends on polarity (swap wires = reverse direction)

**🔌 Connection:**

| Motor | L298N Terminals | Notes |
|-------|-----------------|-------|
| Left Motor (A) | OUT1 and OUT2 | Red to OUT1, Black to OUT2 |
| Right Motor (B) | OUT3 and OUT4 | Red to OUT3, Black to OUT4 |

**How to connect:**
1. Loosen L298N screw terminals (OUT1-4)
2. Strip motor wire ends (if needed)
3. Insert wires into terminals
4. Tighten screws firmly

**🔄 If motors spin backwards later:**
- Just swap the two wires for that motor!
- Example: OUT1 ↔ OUT2 for left motor

---

### **Step 7: Connect Power System (CAREFUL!)**

**⚠️ TRIPLE-CHECK BEFORE POWERING:**
- Wrong polarity = components fry 💥
- When in doubt, ASK SOMEONE!

**Battery Setup:**
1. Insert 2 × 18650 batteries into holder
2. **Check polarity** (+ and - marked on holder)
3. Attach holder wires (red = positive, black = negative)

**🔌 Power Connections:**

| Component | Power Input | Connect to |
|-----------|-------------|------------|
| L298N | 12V terminal | Battery RED (through switch) |
| L298N | GND terminal | Battery BLACK |
| Blue Pill | 5V pin | L298N 5V output |
| Blue Pill | GND pin | Already connected |

**Adding the Switch:**
1. Cut battery RED wire in middle
2. Connect both ends to switch terminals
3. Switch controls power on/off

**Detailed Steps:**

1. **Connect battery to L298N:**
   ```
   Battery RED → Switch → L298N "12V" terminal
   Battery BLACK → L298N "GND" terminal
   ```

2. **L298N powers Blue Pill:**
   - L298N has 5V output pin (it converts 7.4V down to 5V)
   - Connect L298N 5V pin → Blue Pill 5V pin (another red wire)
   - GND already shared

**✅ Final check before first power-on:**
- [ ] All wiring matches tables above
- [ ] No loose wires touching each other
- [ ] Battery polarity correct (RED to +, BLACK to -)
- [ ] Switch is OFF
- [ ] You're ready!

---

### **Step 8: First Power Test (Exciting! 🎉)**

**What should happen:**
- Red LED on Blue Pill lights up
- Red LED on HC-05 blinks rapidly
- Motors do NOT spin yet (no code uploaded)

**Instructions:**
1. Have your phone ready
2. Turn switch ON
3. Observe LEDs

**✅ Success signs:**
- Blue Pill LED: solid red
- HC-05 LED: blinking (1-2 times per second)
- No smoke, no burning smell

**❌ Problem signs & fixes:**

| Problem | Cause | Fix |
|---------|-------|-----|
| Nothing lights up | No power | Check battery voltage (should be 7.4V), check switch |
| Blue Pill lights, HC-05 doesn't | HC-05 not connected | Check VCC and GND wires |
| Smoke or hot components | SHORT CIRCUIT! | Turn OFF immediately, check for touching wires |
| Motors spin randomly | Normal without code | Don't worry, we'll fix with software |

**Turn OFF after test (save battery for tomorrow!)**

---

### **Step 9: Install Programming Software (30 min)**

**We need to upload code to Blue Pill. Here's how:**

**A) Install Arduino IDE:**

1. Go to: https://www.arduino.cc/en/software
2. Download Arduino IDE for Windows/Mac/Linux
3. Install (keep clicking "Next")
4. Open Arduino IDE

**B) Add STM32 Board Support:**

1. In Arduino IDE: File → Preferences
2. Find "Additional Board Manager URLs"
3. Paste this URL:
   ```
   https://github.com/stm32duino/BoardManagerFiles/raw/main/package_stmicroelectronics_index.json
   ```
4. Click OK
5. Go to: Tools → Board → Boards Manager
6. Search "STM32"
7. Install "STM32 MCU based boards" by STMicroelectronics
8. Wait for download (2-5 minutes)

**C) Install USB Driver:**

**For Windows:**
1. Download: STM32 Virtual COM Port Driver (Google it)
2. Install driver
3. Restart computer

**For Mac/Linux:** Usually works automatically

**D) Select Board:**

1. Tools → Board → STM32 boards → Generic STM32F1 series
2. Tools → Board part number → BluePill F103C8
3. Tools → Upload method → STM32CubeProgrammer (DFU)
   - If not working, try "Serial" later

**✅ You're ready to upload code!**

---

### **Step 10: Upload Test Code**

**Let's make the Blue Pill LED blink (test if programming works):**

**Code (copy-paste into Arduino IDE):**

```cpp
// Blink test - Day 1
void setup() {
  pinMode(PC13, OUTPUT);  // Built-in LED on Blue Pill
}

void loop() {
  digitalWrite(PC13, HIGH);  // LED off (inverted logic)
  delay(1000);               // Wait 1 second
  digitalWrite(PC13, LOW);   // LED on
  delay(1000);               // Wait 1 second
}
```

**How to upload:**

1. Connect Blue Pill to computer (USB cable)
2. Switch car OFF (disconnect battery)
3. Click "Upload" button (→ arrow icon)
4. Wait for "Done uploading" message

**✅ Success:** Blue Pill LED blinks every second!

**❌ Upload failed?**
- Try different USB cable
- Press RESET button on Blue Pill
- Change upload method: Tools → Upload method → Serial
- Set BOOT0 jumper to "1", upload, then back to "0"

---

## 🎉 DAY 1 COMPLETE!

**What you achieved today:**
- ✅ Soldered headers
- ✅ Wired entire electronics system
- ✅ First power test successful
- ✅ Installed software
- ✅ Uploaded test code

**Tomorrow:** Assembly + driving!

**Take photos of your wiring - helps troubleshooting later! 📸**

---

## 🔧 DAY 2: Mechanical Assembly & Final Code

### **Step 11: Assemble Chassis (45 min)**

**What you'll build:**
```
        [Caster Wheel]
              ↑
    [========================]  ← Chassis platform
         ↓             ↓
    [Left Motor]  [Right Motor]
    [Left Wheel]  [Right Wheel]
```

**Parts needed:**
- Acrylic chassis (or cardboard 20cm × 15cm)
- 2 × BO motors
- 2 × wheels
- 1 × caster wheel
- 4-6 screws
- Screwdriver

**Instructions:**

**A) Mount Motors:**

1. **Position motors:**
   - Near the BACK of chassis
   - Parallel to each other
   - Motor shafts pointing OUTWARD
   - About 10-12cm apart

2. **Mark screw holes:**
   - Place motor on chassis
   - Mark mounting holes with pen
   - Repeat for other motor

3. **Drill/poke holes** (if cardboard, just poke with screwdriver)

4. **Screw motors down:**
   - Use included screws (usually M3 size)
   - Tighten firmly
   - Motors should not wiggle

**B) Attach Wheels:**

1. **Slide wheel onto motor shaft**
2. **Tighten set screw** on wheel (small screw on side)
   - Screw should touch flat part of motor shaft
   - Test: try to pull wheel off - shouldn't move
3. Repeat for other wheel

**C) Install Caster Wheel:**

1. **Position at FRONT** of chassis (center)
2. Mark holes
3. Screw down
4. Caster should swivel freely

**✅ Test:** Place chassis on floor - should sit level, roll smoothly

---

### **Step 12: Mount Electronics on Chassis (30 min)**

**Goal:** Secure all components so they don't move while driving.

**Mounting options:**
- Hot glue (permanent but strong)
- Double-sided tape (easier to remove)
- Zip ties through holes (professional)
- Velcro strips (easily removable)

**Recommended layout:**

```
    [Battery] [Blue Pill]
    [L298N Motor Driver ]
    ─────────────────────
    [Motor]     [Motor]
```

**Instructions:**

1. **Mount L298N:**
   - Position BEHIND motors (close to motors = shorter wires)
   - Ensure screw terminals accessible
   - Glue/tape down

2. **Mount Blue Pill:**
   - Near L298N (front-middle area)
   - Ensure USB port accessible (for reprogramming)
   - Leave space for HC-05

3. **Mount HC-05:**
   - Near Blue Pill
   - Antenna pointing UP/AWAY from metal
   - Check wires aren't stretched

4. **Mount Battery Holder:**
   - FRONT of chassis (balance weight)
   - Secure well (heaviest part)
   - Ensure easy battery removal

5. **Mount Switch:**
   - Side of chassis (easy access)
   - Hot glue or drill hole

**⚠️ Wire Management:**
- No loose wires dangling
- Use zip ties or tape to bundle wires
- Avoid wires near wheels (will get tangled!)

**✅ Shake test:** Gently shake chassis - nothing falls off!

---

### **Step 13: Final Wiring Check**

**Before uploading final code, verify EVERYTHING:**

**Use this checklist (print it out!):**

```
POWER SYSTEM:
[ ] Battery holder secure
[ ] Battery polarity correct (RED = +, BLACK = -)
[ ] Switch works (test with multimeter if available)
[ ] L298N gets 7.4V when switch ON

MOTOR CONNECTIONS:
[ ] Left motor wires in OUT1 & OUT2
[ ] Right motor wires in OUT3 & OUT4
[ ] Wires tight in screw terminals
[ ] Motors don't touch each other

BLUE PILL CONNECTIONS:
[ ] HC-05 VCC → Blue Pill 5V
[ ] HC-05 GND → Blue Pill GND
[ ] HC-05 TX → Blue Pill PA10
[ ] HC-05 RX → Blue Pill PA9
[ ] L298N IN1 → Blue Pill PB12
[ ] L298N IN2 → Blue Pill PB13
[ ] L298N IN3 → Blue Pill PB14
[ ] L298N IN4 → Blue Pill PB15
[ ] L298N ENA → Blue Pill PA8
[ ] L298N ENB → Blue Pill PA11
[ ] L298N GND → Blue Pill GND

SAFETY:
[ ] No exposed wire ends
[ ] No wires touching each other
[ ] Battery can't short circuit
[ ] Everything firmly mounted
```

**Fix any issues before proceeding!**

---

### **Step 14: Upload Final Control Code**

**This is the actual car control code!**

**Code explanation (before we show it):**

```
1. Listen for Bluetooth commands from phone
2. When 'F' received → both motors forward
3. When 'B' received → both motors backward
4. When 'L' received → left motor slow, right motor fast (turn left)
5. When 'R' received → right motor slow, left motor fast (turn right)
6. When 'S' received → stop all motors
```

**Full Arduino Code (copy entire thing):**

```cpp
// Rexy Jade Model-1 - Final Code
// Connect via Bluetooth and control!

// Motor A (Left) pins
#define IN1 PB12
#define IN2 PB13
#define ENA PA8

// Motor B (Right) pins
#define IN3 PB14
#define IN4 PB15
#define ENB PA11

// Speed settings (0-255)
int normalSpeed = 200;  // Adjust if too fast/slow
int turnSpeed = 150;

// Bluetooth command variable
char command;

void setup() {
  // Initialize motor pins as outputs
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);
  
  // Start serial for HC-05 (9600 baud)
  Serial.begin(9600);
  
  // Start with motors stopped
  stopMotors();
}

void loop() {
  // Check if Bluetooth data available
  if (Serial.available() > 0) {
    command = Serial.read();  // Read command
    
    // Execute command
    switch(command) {
      case 'F':  // Forward
      case 'f':
        moveForward();
        break;
        
      case 'B':  // Backward
      case 'b':
        moveBackward();
        break;
        
      case 'L':  // Turn Left
      case 'l':
        turnLeft();
        break;
        
      case 'R':  // Turn Right
      case 'r':
        turnRight();
        break;
        
      case 'S':  // Stop
      case 's':
        stopMotors();
        break;
        
      default:
        stopMotors();  // Unknown command = stop
    }
  }
}

// Movement functions
void moveForward() {
  // Left motor forward
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  analogWrite(ENA, normalSpeed);
  
  // Right motor forward
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
  analogWrite(ENB, normalSpeed);
}

void moveBackward() {
  // Left motor backward
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  analogWrite(ENA, normalSpeed);
  
  // Right motor backward
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
  analogWrite(ENB, normalSpeed);
}

void turnLeft() {
  // Left motor slow
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  analogWrite(ENA, turnSpeed);
  
  // Right motor fast
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
  analogWrite(ENB, normalSpeed);
}

void turnRight() {
  // Left motor fast
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  analogWrite(ENA, normalSpeed);
  
  // Right motor slow
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
  analogWrite(ENB, turnSpeed);
}

void stopMotors() {
  // Turn off all motors
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  analogWrite(ENA, 0);
  
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, LOW);
  analogWrite(ENB, 0);
}
```

**How to upload:**

1. Disconnect battery (switch OFF)
2. Connect Blue Pill to computer USB
3. Open Arduino IDE
4. Copy-paste entire code above
5. Click "Upload" (→ arrow)
6. Wait for "Done uploading"
7. Disconnect USB
8. Reconnect battery

**✅ Code is now in Blue Pill's memory (stays forever until you upload new code!)**

---

### **Step 15: Install Phone App**

**We'll use a free Bluetooth joystick app:**

**For Android:**

1. Open Google Play Store
2. Search **"Arduino Bluetooth Controller"** (by Giumig Apps)
3. Install it (free, no ads)

**Alternative apps:**
- "Bluetooth RC Controller" (by Andi.Co)
- "BlueDotLite" (simple)

**App setup:**

1. Open app
2. Tap "Settings" or ⚙️ icon
3. Change button mappings:
   ```
   Forward button → Send "F"
   Backward button → Send "B"
   Left button → Send "L"
   Right button → Send "R"
   Stop button → Send "S"
   ```
4. Save settings

---

### **Step 16: Connect Phone to Car (First Time)**

**This is the moment! 🎉**

**Instructions:**

1. **Turn car ON (switch)**
   - HC-05 LED should blink rapidly

2. **Enable Bluetooth on phone**
   - Settings → Bluetooth → ON

3. **Pair with HC-05:**
   - In available devices, look for "HC-05" or "Rexy"
   - Tap to pair
   - If asked for PIN: try **1234** or **0000**
   - Paired! HC-05 LED now blinks slowly

4. **Open controller app**
   - Tap "Connect" or Bluetooth icon
   - Select "HC-05" from list
   - Status should show "Connected"

5. **TEST IT:**
   - Place car on floor (not carpet, hard floor is better)
   - Press "Forward" button in app
   - **CAR SHOULD MOVE FORWARD!** 🎉🎉🎉

---

### **Step 17: Troubleshooting Common Issues**

**Problem: Car doesn't move**

| Symptom | Likely Cause | Fix |
|---------|--------------|-----|
| LEDs on, motors silent | Code not uploaded | Re-upload code |
| Motors hum but don't spin | Not enough power | Check battery voltage (need 7.4V) |
| One motor works, one doesn't | Loose wire | Check motor wiring, screw terminals |
| Motors spin opposite direction | Wrong polarity | Swap motor wires (OUT1↔OUT2 or OUT3↔OUT4) |

**Problem: Bluetooth won't connect**

| Symptom | Likely Cause | Fix |
|---------|--------------|-----|
| HC-05 not visible | No power to HC-05 | Check VCC and GND wires |
| Pairs but can't control | Wrong app settings | Verify button mappings (F, B, L, R, S) |
| Connects then disconnects | Interference | Move away from WiFi routers |

**Problem: Car turns when it should go straight**

| Cause | Fix |
|-------|-----|
| Motors different speeds | Adjust `normalSpeed` in code for each motor separately |
| Wheels different sizes | Use same size wheels |
| Weight unbalanced | Center the battery |

**Problem: Car too fast/slow**

```cpp
// In code, change this line:
int normalSpeed = 200;  // Try 150 (slower) or 255 (faster)
```

Upload new code with changed value.

---

### **Step 18: Adding Voice Control (Bonus! 10 min)**

**Want to say "forward" instead of pressing buttons? Here's how:**

**Method 1: Using Google Assistant (Android)**

1. Open Google app
2. Say **"OK Google, connect to HC-05"**
3. Then say commands:
   - "Send F" (forward)
   - "Send B" (backward)
   - "Send L" (left)
   - "Send R" (right)
   - "Send S" (stop)

**Method 2: Better Voice App**

1. Install **"BlueDotLite Voice"** from Play Store
2. Enable voice control in settings
