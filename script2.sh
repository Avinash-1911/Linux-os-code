#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE=$1

if [ -z "$PACKAGE" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

# Check if package is installed (Debian/Ubuntu)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    apache2) echo "Apache: powers the open web" ;;
    mysql) echo "MySQL: backbone of many applications" ;;
    vlc) echo "VLC: plays almost any media format" ;;
    firefox) echo "Firefox: browser for open internet" ;;
    git) echo "Git: distributed version control system" ;;
    *)
        echo "No description available for this package."
        ;;
esac
#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Aditya Raj Singh

PACKAGE=$1

# Check if user provided input
if [ -z "$PACKAGE" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

# Check if package is installed (Ubuntu/Debian)
if dpkg -l | grep -qw $PACKAGE; then
    echo "================================"
    echo "$PACKAGE is installed."
    echo "Package Details:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "================================"

# Case statement for package description
case $PACKAGE in
    git)
        echo "Git: A distributed version control system created by Linus Torvalds to manage source code efficiently."
        ;;
    apache2)
        echo "Apache: An open-source web server that powers a large portion of the internet."
        ;;
    mysql)
        echo "MySQL: A widely used open-source relational database management system."
        ;;
    firefox)
        echo "Firefox: An open-source web browser focused on privacy and openness."
        ;;
    vlc)
        echo "VLC: A free multimedia player that supports almost all media formats."
        ;;
    *)
        echo "No description available for this package."
        ;;
esac
