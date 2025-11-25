---
id: arduino
aliases: []
tags: []
---


What Changes With Arduino UNO:

    Wiring stays almost the same:

        Instead of Blue Pill pins (like PA9, PA10, PB12…), you’ll use UNO pins (labeled Digital 0–13, A0–A5).

        The HC-05 Bluetooth connects to UNO’s TX/RX (Digital 0 and 1 for hardware serial, or use SoftwareSerial on other pins for safer uploads).

        The L298N motor driver connects to any available digital pins—most UNO RC tutorials show which ones to use.

    Programming is even easier:

        You can skip all STM32 driver/board manager steps.

        Just use the regular Arduino IDE, select “Arduino UNO” as your board, and upload code.

    Code adapts with minor changes:

        Change the pin numbers in the code to match UNO’s pins.

        “analogWrite” and “digitalWrite” work the exact same way!


UNO Pin Mapping Example
Functional Pin	STM32 Example	UNO Example
Bluetooth TX	PA10	Digital 0 or D10 (via SoftwareSerial)
Bluetooth RX	PA9	Digital 1 or D11 (via SoftwareSerial)
Motor Driver IN1	PB12	D6 (choose any free digital pin)
Motor Driver IN2	PB13	D7
IN3	PB14	D8
IN4	PB15	D9
ENA/ENB	PA8/PA11	D5/D3 (PWM-capable pins)
Powerful Benefits

    Arduino UNO has the biggest community, so you’ll find thousands of RC car tutorials, wiring diagrams, and ready-made code online. You can use the exact same “Arduino Bluetooth Car” phone apps.

    Your hardware (UNO + HC-05 + L298N + BO motors) is the classic combo for projects like this—perfect for hands-on learning.

What To Do Next

    Convert the tutorial code and pin mappings to match your UNO (or ask for a ready-to-use UNO version).

    If you need help with wiring or code for UNO specifically, just ask—happy to provide exact diagrams and sketches!

    You’re set up for success with your hardware choice, and the process will be even easier using Arduino UNO.

    ​

