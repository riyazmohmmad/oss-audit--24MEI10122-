#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Riyaz Mohammad
# Registration number : 24MEI10122
echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

# Taking input from user
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and filename
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Writing manifesto
echo "" > $OUTPUT
echo "----- Open Source Manifesto -----" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL as part of my daily work, and it represents the power of open-source software." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share knowledge." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and make it freely available to everyone." >> $OUTPUT
echo "I believe in collaboration, transparency, and community-driven innovation." >> $OUTPUT

echo "" >> $OUTPUT
echo "---------------------------------" >> $OUTPUT

# Show output
echo ""
echo "✅ Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
