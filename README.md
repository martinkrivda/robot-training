# 🤖 Robot Framework Training with Selenium

This repository is designed to help you get started with [Robot Framework](https://robotframework.org/) using **SeleniumLibrary** for web automation.

## 🔧 Prerequisites

- Python 3.8+
- Google Chrome or Firefox
- ChromeDriver or GeckoDriver available in your PATH

## Install RobotFramework

### ✅ 1. Install Python

Download the latest Python version from:
👉 https://www.python.org/downloads/windows/

During installation:

✅ Check "Add Python to PATH"

✅ Select "Install for all users"

After installation, verify in Command Prompt or PowerShell:

```bash
python --version
pip --version
```

### ✅ 2. Create a Virtual Environment (Recommended)

Open PowerShell or Command Prompt, then run:

```bash
python -m venv venv
venv\Scripts\activate
```

You should now see (venv) in your terminal prompt.

### ✅ 3. Install Robot Framework

Upgrade pip and install Robot Framework:

```bash
pip install --upgrade pip
pip install robotframework
```

Check that it’s installed:

```bash
robot --version
```

### ✅ 4. Install SeleniumLibrary

Install the Selenium library for Robot Framework:

```bash
pip install robotframework-seleniumlibrary
```

### ✅ 5. Install Chrome and ChromeDriver

🔹 a) Install Google Chrome
If you don't already have it, download Chrome from:
👉 https://www.google.com/chrome/

Find your Chrome version by going to:
Menu → Help → About Google Chrome

🔹 b) Download Matching ChromeDriver
Visit:
👉 https://googlechromelabs.github.io/chrome-for-testing/

Find and download the version that matches your Chrome version.

Extract chromedriver.exe and move it to a folder like:

```bash
C:\Tools\chromedriver\
```

Add that folder to your system PATH:

Control Panel → System → Advanced → Environment Variables

Edit the Path variable and add:

```bash
C:\Tools\chromedriver\
```

Open a new terminal and test:

```bash
chromedriver --version
```

## 🚀 Setup

```bash
git clone https://github.com/your-username/robot-training.git
cd robot-training

python3 -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate

pip install -r requirements.txt
```

## ▶️ Running Tests

```bash
robot tests/
```

To run a single test file:

```bash
robot tests/GoogleSearch.robot
```
