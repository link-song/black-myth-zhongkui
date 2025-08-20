#!/bin/bash

# Black Myth: Zhong Kui Site Preview Script
# This script opens your site in the default browser for preview

echo "🌐 Black Myth: Zhong Kui Site Preview"
echo "====================================="

# Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ index.html not found. Please make sure you're in the correct directory."
    exit 1
fi

# Get the absolute path
SITE_PATH=$(pwd)/index.html

echo "📍 Site location: $SITE_PATH"
echo "🚀 Opening in browser..."

# Open in default browser based on OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    open "$SITE_PATH"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    if command -v xdg-open &> /dev/null; then
        xdg-open "$SITE_PATH"
    elif command -v gnome-open &> /dev/null; then
        gnome-open "$SITE_PATH"
    else
        echo "❌ No suitable browser opener found. Please open $SITE_PATH manually."
    fi
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    # Windows
    start "$SITE_PATH"
else
    echo "❌ Unsupported OS. Please open $SITE_PATH manually in your browser."
fi

echo "✅ Site should now be open in your browser!"
echo ""
echo "💡 Tips:"
echo "- Make sure to update the YouTube video ID in index.html"
echo "- Test the responsive design by resizing your browser window"
echo "- Check the browser console for any JavaScript errors"
echo ""
echo "🔧 To make changes:"
echo "1. Edit the HTML, CSS, or JavaScript files"
echo "2. Refresh your browser to see updates"
echo "3. Use the deploy script when ready to publish"
