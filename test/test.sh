#!/bin/bash
source ../venv/bin/activate

rm -rf app2app

echo
echo "expected behaviour"
echo "=================="
echo "app2app is a module:"
python3 -c "import app2app; print(app2app)"
echo "... containing a constant app2app=1:"
python3 -c "from app2app import app2app; print(app2app)"

echo
echo "surprising behaviour"
echo "===================="
echo "now we add a subfolder named app2app..."
mkdir app2app
echo "... and execute the same python code:"
echo "app2app is a NamespaceLoader object now:"
python3 -c "import app2app; print(app2app)"
echo "... containing a module:"
python3 -c "from app2app import app2app; print(app2app)"
