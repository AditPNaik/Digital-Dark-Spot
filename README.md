# DIGITAL DARK SPOT
### "AI-Powered Information Gap Detection & Autonomous Research Intelligence"

Digital Dark Spot is an enterprise-grade epistemic research platform designed to solve the critical flaws of standard Retrieval-Augmented Generation (RAG) and conversational search engines: **epistemic smoothing, unverified AI assertions, hidden contradictions, and outdated policy guidance**.

Rather than merely summarizing available information, Digital Dark Spot actively discovers what is missing, identifies conflicting claims, detects potentially outdated information, verifies evidence provenance, and computes a deterministic **Research Completeness Score**.

---

## 🚀 Key Architectural Innovations

1. **De-coupled 8-Component Intelligence Engine:**
   - **Research Planner:** Decomposes objectives into orthogonal sub-questions and coverage matrices.
   - **Source Discovery:** Tavily API integration with canonical URL deduplication and official (`.gov`, `.edu`) prioritization.
   - **Information Extractor:** Extracts atomic claims and verbatim quotes, isolating direct evidence from AI interpretation.
   - **Contradiction Analyst:** Cross-examines claims across sources without declaring winners without evidence.
   - **Gap Detection Engine:** Exposes unknown unknowns and generates prioritized verification tasks.
   - **Temporal Intelligence:** Detects stale publication dates and expired application cycle references.
   - **Evidence Auditor:** Verifies verbatim quote alignment against scraped source text.
   - **Research Completeness Analyst:** Computes transparent mathematical coverage metrics.

2. **Autonomous Iterative Research Loop:**
   - Automatically executes targeted follow-up searches for high-priority information gaps across configured iteration bounds.

3. **Robust Security Architecture:**
   - **SSRF Protection:** Resolves hostnames and blocks private, loopback, and cloud metadata IP ranges (`169.254.169.254`).
   - **Prompt Injection Quarantine:** Wraps external webpage content in XML quarantine tags to neutralize indirect prompt injection.
   - **Secret Scrubbing:** Scrubs API keys from logs and adheres to zero-key-leak principles.

---

## 🛠️ Technology Stack

- **Frontend:** React, TypeScript, Vite, Tailwind CSS, Lucide Icons
- **Backend:** Python 3.13, FastAPI, Pydantic V2, Asynchronous SQLAlchemy (SQLite/PostgreSQL)
- **AI & Search:** Google Gemini API (`google-genai`), Tavily Search API, Trafilatura, BeautifulSoup4, ReportLab

---

## 📦 Local Installation & Setup (Windows / macOS / Linux)

### Prerequisites
- Python 3.11+ installed.
- Node.js 18+ installed.

### 1. Extract and configure environment (Windows PowerShell)

Extract the ZIP and open the `Digital_Dark_Spot` folder in VS Code. In the project root:

```powershell
Copy-Item .env.example .env
```

Edit `.env` and add your own `GEMINI_API_KEY` and `TAVILY_API_KEY` for live research. Keep `.env` private; it is excluded from the archive and Git.

### 2. Start the backend

```powershell
cd backend
py -3 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt
uvicorn app.main:app --reload --port 8000
```

### 3. Start the frontend (open a second terminal)

```powershell
cd frontend
npm install
npm run dev
```

### 4. Open the application

- Frontend: http://localhost:5173
- Backend health: http://localhost:8000/health
- API documentation: http://localhost:8000/docs

### 5. Run tests

From the project root, after installing backend dependencies:

```powershell
cd backend
.\.venv\Scripts\Activate.ps1
pytest -v ../tests
```

For the hackathon presentation script, see `documentation/HACKATHON_DEMO_GUIDE.md`. For the actual recovery and test status, see `PROJECT_PROVENANCE.md` and `VERIFICATION_REPORT.md`.
