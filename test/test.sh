#!/bin/bash
source ../venv/bin/activate

rm -rf app2app
PYTHON_CODE="import app2app; print(f\"app2app: {app2app}\"); print(f\"CONSTANT_ONE: {app2app.CONSTANT_ONE}\")"

echo
echo "expected behaviour"
echo "=================="
echo "app2app is a module and provides CONSTANT_ONE:"
python3 -c "$PYTHON_CODE"

echo
echo "surprising behaviour"
echo "===================="
echo "now we add a subfolder named app2app..."
mkdir app2app
echo "... and execute the same python code:"
echo "app2app is a NamespaceLoader object now and does not provide CONSTANT_ONE anymore:"
python3 -c "$PYTHON_CODE"

rm -rf app2app
