#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "----- Open Source Manifesto -----" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL daily, and it represents the idea of $FREEDOM." >> $OUTPUT
echo "I believe knowledge should be shared openly." >> $OUTPUT
echo "One day, I will build $BUILD and share it with the world." >> $OUTPUT
echo "Open source is not just code — it is a philosophy of collaboration." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT

# Example alias (for explanation purpose)
# alias manifesto='./script5.sh'
#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Aditya Raj Singh

echo "================================"
echo "Open Source Manifesto Generator"
echo "================================"

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "================================" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "================================" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I regularly use $TOOL, which represents the idea of $FREEDOM in the digital world." >> $OUTPUT
echo "Inspired by tools like Git, I believe in collaboration and transparency." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it freely with the community." >> $OUTPUT
echo "Open source empowers innovation by allowing everyone to contribute and improve technology." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "================================"

# Display file
cat $OUTPUT

# Example alias (for concept)
# alias manifesto='./script5.sh'
