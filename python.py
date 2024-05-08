# Activate the virtual environment before installing the required packages and/or running the script.
import pyautogui
import time
pyautogui. FAILSAFE = False
# while True:
#     time.sleep(100)
#     for i in range(0, 100):
#     pyautogui.moveTo(0, i * 5)
#     for i in range(0, 3):
#     pyautogui.press('shift')
print("Running the script")

iterations = 7200 // 100  # calculate the number of iterations needed to reach 2 hours

for _ in range(iterations):
    time.sleep(100)
    for i in range(0, 100):
        pyautogui.moveTo(0, i * 5)
    for i in range(0, 2):
        pyautogui.press('shift')
        print("Shift pressed")
