$ErrorActionPreference = "Stop"
Write-Host "Digital Dark Spot setup - backend"
Set-Location "$PSScriptRoot\backend"
py -3 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt
if (!(Test-Path "$PSScriptRoot\.env")) { Copy-Item "$PSScriptRoot\.env.example" "$PSScriptRoot\.env" }
Write-Host "Backend dependencies installed. Run: uvicorn app.main:app --reload --port 8000"
Write-Host "In a second terminal: cd frontend; npm install; npm run dev"
