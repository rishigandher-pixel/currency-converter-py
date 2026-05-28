# Python Currency Converter & Automation Utility Toolkit

## Description
A lightweight, procedural Python command-line utility designed to handle user inputs, execute dynamic data-type casting, and perform algorithmic arithmetic calculations to deliver accurate multi-currency conversions. 

## Technical Highlights
* **Data-Type Sanitization:** Implements explicit type casting (`float`) to convert string-based keyboard inputs into manageable numerical floating-point data.
* **Procedural Logic:** Leverages dynamic variable tracking to ensure scalable codebase maintenance (updating exchange rates globally at runtime).
* **String Formatting:** Utilizes Python literal string interpolation (f-strings) for optimized memory output rendering.

## How To Run
1. Ensure Python 3.x is installed on your local environment.
2. Clone this repository or download the source files.
3. Execute the script via terminal or command prompt:
   ```bash
   python converter.py

## Automation & Maintenance

The repository includes a native PowerShell automation script, `Fix-ProjectExtensions.ps1`, designed to handle environment hygiene by programmatically auditing and correcting workspace file anomalies.

### Automated Workspace Cleanup
If local file extensions are altered or improperly appended during system-level text editing (e.g., creating artifact `.txt` extensions on core configuration files), this script automatically targets, tests, and repairs the file structure.

#### How to Execute:
1. Open a PowerShell terminal.
2. Navigate to the root directory of the project.
3. Execute the script:
   ```powershell
   .\Fix-ProjectExtensions.ps1