@echo off
setlocal
cd ..

::echo "-_-_-_-_-_-_-_-_-_-_-_-_auto_route_fresh_basket-_-_-_-_-_-_-_-_-_-_-_-_"
::tasklist | dart run build_runner build -c auto_route_fresh_basket --delete-conflicting-outputs
echo "-_-_-_-_-_-_-_-_-_-_-_-_-_-auto_route_main-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
tasklist | dart run build_runner build 
:: -c auto_route_main --delete-conflicting-outputs
PAUSE