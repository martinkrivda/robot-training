# 🤖 Robot Framework Training with Selenium

This repository is designed to help you get started with [Robot Framework](https://robotframework.org/) using **SeleniumLibrary** for web automation.

## 🔧 Prerequisites

- Python 3.10+ (3.12 recommended)
- Google Chrome

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

### ✅ 3. Install Chrome (may be skipped)

🔹 a) Install Google Chrome
If you don't already have it, download Chrome from:
👉 https://www.google.com/chrome/

## 🚀 Setup

```bash
git clone https://github.com/martinkrivda/robot-training
cd robot-training

python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate

pip install -r requirements.txt
```

Create your own `.env` file by copying the example:
```bash
cp .env.example .env
```
Then edit `.env` and replace the placeholder values with your personal configuration.

**Note:** The `.env` file is listed in `.gitignore`, so your credentials will not be committed to the repository.

## ▶️ Running Tests

To run the entire test suite:

```bash
robot tests/
```

To run a single test file:

```bash
robot tests/GoogleSearch.robot
```

## ✅ Robot Framework – Training Plan

### 📚 Goals

- Study the tool for automated tests — [Robot Framework](https://robotframework.org/)
- Watch YouTube tutorials and get familiar with Robot Framework structure

### 🧪 First Practical Task

- Create a very simple test:
  - Open a browser
  - Navigate to any website
  - Click any button

### 🧩 Project Application

- Implement automated tests for the **Centris** application:
  - URL: [https://centristest.claudox.com/csmtest](https://centristest.claudox.com/csmtest)
  - Focus on the **Settings** section under **Contracts**
  - Use valid login credentials stored **outside the Git repository**, e.g.:
    - `.env` file with environment variables
    - or `credentials.yaml` (ignored via `.gitignore`)

### 🤝 Consultation

- Discuss the solution with **MŠ / MK**

## 🧩 Recommended VS Code Extensions

To enhance your development experience with Robot Framework, we recommend installing the following Visual Studio Code extensions:

| Extension                                                                                                                               | Description                                                                     |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)                                                          | Required for Python-based Robot libraries and virtual environments              |
| [Robot Framework Language Server (robotframework-lsp)](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp) | Syntax highlighting, IntelliSense, code navigation, linting, test execution     |
| [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)                                           | Enforces consistent formatting (indentation, line endings, etc.) across editors |
| [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)                                                          | Visual Git history, blame annotations, and repository insights                  |
| [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)                                       | Highlights `TODO`, `FIXME`, and other annotations for better readability        |

> 💡 Optionally, try [RobotCode](https://marketplace.visualstudio.com/items?itemName=tomiturtiainen.rf-intellisense), an alternative to `robotframework-lsp` with similar features.
