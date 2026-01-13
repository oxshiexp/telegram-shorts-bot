#!/bin/bash
set -e
PROJECT_NAME="telegram-shorts-bot"
PROJECT_DIR="./$PROJECT_NAME"
echo "🚀 Generating Telegram Shorts Bot Project..."
echo "=============================================="
echo ""
# Create project directory
if [ -d "$PROJECT_DIR" ]; then
    read -p "⚠️  Directory $PROJECT_DIR exists. Overwrite? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Cancelled."
        exit 1
    fi
    rm -rf "$PROJECT_DIR"
fi
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"
echo "[1/20] Creating directory structure..."
# Create all directories
mkdir -p .github/workflows
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p app/bot
mkdir -p app/monitor
mkdir -p app/services
mkdir -p app/utils
mkdir -p scripts
mkdir -p docs
mkdir -p data/outputs
mkdir -p data/tmp
mkdir -p data/jobs
mkdir -p logs
mkdir -p assets/fonts
echo "[2/20] Creating .gitkeep files..."
touch data/outputs/.gitkeep
touch data/tmp/.gitkeep
touch data/jobs/.gitkeep
touch logs/.gitkeep
touch assets/fonts/.gitkeep
echo "[3/20] Creating __init__.py files..."
touch app/__init__.py
touch app/bot/__init__.py
touch app/monitor/__init__.py
touch app/services/__init__.py
touch app/utils/__init__.py
echo "[4/20] Creating requirements.txt..."
cat > requirements.txt << 'EOF'
# Telegram Bot
python-telegram-bot==20.7
# Video Processing
yt-dlp==2023.12.30
ffmpeg-python==0.2.0
# Speech Recognition
faster-whisper==0.10.0
openai-whisper==20231117
stable-ts==2.14.2
# Text Processing & NLP
rake-nltk==1.0.6
scikit-learn==1.3.2
numpy==1.24.3
# Web Monitoring
fastapi==0.109.0
uvicorn[standard]==0.25.0
prometheus-client==0.19.0
# System & Utils
psutil==5.9.7
python-dotenv==1.0.0
aiofiles==23.2.1
pillow==10.1.0
# Optional (for face detection - lightweight)
opencv-python-headless==4.8.1.78
EOF
echo "[5/20] Creating .env.example..."
cat > .env.example << 'EOF'
# Telegram Bot
BOT_TOKEN=YOUR_BOT_TOKEN_HERE
# Whisper Configuration
WHISPER_BACKEND=faster-whisper
WHISPER_MODEL=small
WHISPER_DEVICE=cpu
WHISPER_COMPUTE_TYPE=int8
# Alignment Backend
ALIGN_BACKEND=auto
# Job System
MAX_CONCURRENCY=2
JOB_TIMEOUT=3600
# Paths
OUTPUT_DIR=./data/outputs
TMP_DIR=./data/tmp
JOBS_DIR=./data/jobs
# Subtitle Configuration
SUBTITLE_MAX_LINES=2
SUBTITLE_SAFE_AREA=1
SUBTITLE_MAX_CPS=17
SUBTITLE_MIN_DURATION=0.8
SUBTITLE_MAX_DURATION=4.0
# Hook Finder
HOOK_TOP_K=10
CLIP_MAX=7
# Video Output
DEFAULT_CLIP_DURATION=20
DEFAULT_CLIP_COUNT=3
DEFAULT_RESOLUTION=1080x1920
AUDIO_LUFS=-14
# Monitoring
MONITOR_PORT=9100
MONITOR_BIND=127.0.0.1
ADMIN_TOKEN=CHANGE_THIS_TO_RANDOM_STRING
# Logging
LOG_LEVEL=INFO
LOG_FILE=./logs/bot.log
EOF
echo "[6/20] Creating .gitignore..."
cat > .gitignore << 'EOF'
# Environment & Secrets
.env
.env.local
.env.*.local
*.key
*.pem
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
pip-wheel-metadata/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST
# Virtual Environment
venv/
env/
ENV/
env.bak/
venv.bak/
# Data & Outputs
data/outputs/*
data/tmp/*
data/jobs/*
!data/outputs/.gitkeep
!data/tmp/.gitkeep
!data/jobs/.gitkeep
logs/*.log
!logs/.gitkeep
# Models (Whisper models bisa besar)
*.pt
*.bin
models/
# Temporary files
*.tmp
*.temp
.cache/
tmp/
# IDE
.vscode/
.idea/
*.swp
*.swo
*~
# OS
.DS_Store
Thumbs.db
# Testing
.pytest_cache/
.coverage
htmlcov/
EOF
echo "[7/20] Creating .dockerignore..."
cat > .dockerignore << 'EOF'
.git
.gitignore
.gitattributes
__pycache__
*.py[cod]
*$py.class
*.so
.Python
venv/
env/
ENV/
*.egg-info/
data/outputs/*
data/tmp/*
data/jobs/*
!**/.gitkeep
.env
.env.local
*.key
*.pem
.vscode/
.idea/
*.swp
*.swo
.DS_Store
Thumbs.db
*.md
!README.md
docker-compose*.yml
Dockerfile*
scripts/
*.sh
.pytest_cache/
.coverage
htmlcov/
EOF
echo "[8/20] Creating Dockerfile..."
cat > Dockerfile << 'EOF'
FROM python:3.10-slim
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    libopencv-dev \
    wget \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*
RUN useradd -m -u 1000 -s /bin/bash appuser
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
COPY app/ ./app/
COPY assets/ ./assets/
RUN mkdir -p /app/data/outputs /app/data/tmp /app/data/jobs /app/logs && \
    chown -R appuser:appuser /app
USER appuser
EXPOSE 9100
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
    CMD curl -f http://localhost:9100/health || exit 1
CMD ["python", "app/main.py"]
EOF
echo "[9/20] Creating docker-compose.yml..."
cat > docker-compose.yml << 'EOF'
version: '3.8'
services:
  telegram-bot:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: telegram-shorts-bot
    restart: unless-stopped
    env_file: .env
    volumes:
      - ./data/outputs:/app/data/outputs
      - ./data/jobs:/app/data/jobs
      - ./logs:/app/logs
      - ./data/tmp:/app/data/tmp
      - ./assets:/app/assets
    ports:
      - "${MONITOR_PORT:-9100}:9100"
    networks:
      - shorts-bot-network
    deploy:
      resources:
        limits:
          cpus: '2.0'
          memory: 4G
        reservations:
          memory: 2G
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
networks:
  shorts-bot-network:
    driver: bridge
EOF
echo "[10/20] Creating Makefile..."
cat > Makefile << 'EOF'
.PHONY: help build up down restart logs clean
help:
	@echo "Telegram Shorts Bot - Docker Commands"
	@echo ""
	@echo "  make build     - Build Docker image"
	@echo "  make up        - Start bot (production)"
	@echo "  make dev       - Start bot (development)"
	@echo "  make down      - Stop bot"
	@echo "  make restart   - Restart bot"
	@echo "  make logs      - View logs"
	@echo "  make shell     - Enter container shell"
	@echo "  make clean     - Clean up Docker resources"
	@echo ""
build:
	docker-compose build
up:
	docker-compose up -d
	@echo "✅ Bot started! View logs: make logs"
dev:
	docker-compose up
down:
	docker-compose down
restart:
	docker-compose restart telegram-bot
logs:
	docker-compose logs -f --tail=100 telegram-bot
shell:
	docker-compose exec telegram-bot bash
clean:
	docker-compose down -v
	docker system prune -f
status:
	docker-compose ps
	@curl -s http://localhost:9100/health | python3 -m json.tool || true
EOF
echo "[11/20] Creating LICENSE..."
cat > LICENSE << 'EOF'
MIT License
Copyright (c) 2024
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF
echo "[12/20] Creating VERSION..."
echo "1.0.0" > VERSION
echo "[13/20] Creating README.md..."
cat > README.md << 'EOF'
# 🎬 Telegram Shorts Bot
**Free & Open Source** Telegram bot untuk otomasi pembuatan short video 9:16 (TikTok/YouTube Shorts) dari video YouTube dengan **AI hook detection** dan **auto-subtitles**.
## ✨ Features
- 🤖 **AI Hook Detection** - Deteksi bagian paling menarik secara otomatis
- 🎯 **Multi-Clip Generation** - Buat 1-7 clip sekaligus
- 📝 **Auto Subtitles** - Subtitle rapi 2 baris maksimal
- 🎨 **Metadata Generator** - Judul, deskripsi, dan hashtag siap upload
- 📊 **Job Queue System** - Multiple jobs dengan progress tracking
- 🔍 **Web Monitoring** - FastAPI dashboard
- 💯 **100% FREE** - Tanpa API berbayar
## 🚀 Quick Start
### Docker (Recommended)
\`\`\`bash
# Install Docker
curl -fsSL https://get.docker.com | sh
# Clone
git clone https://github.com/YOUR_USERNAME/telegram-shorts-bot.git
cd telegram-shorts-bot
# Configure
cp .env.example .env
nano .env  # Add BOT_TOKEN
# Start
docker-compose up -d
# Check logs
docker-compose logs -f
\`\`\`
### Manual Installation
See [QUICK_START.md](QUICK_START.md) for detailed instructions.
## 📖 Documentation
- [Quick Start Guide](QUICK_START.md)
- [Docker Guide](README.docker.md)
- [Deployment Guide](docs/DEPLOYMENT.md)
- [CI/CD Setup](docs/CICD_SETUP.md)
- [Contributing](CONTRIBUTING.md)
## 📋 Requirements
- Ubuntu 20.04+ / Debian 11+
- Python 3.10+ or Docker
- 4GB+ RAM
- ffmpeg
## 🤝 Contributing
Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md).
## 📄 License
MIT License - see [LICENSE](LICENSE).
## ⚠️ Disclaimer
For educational purposes. Respect copyright and ToS.
---
Made with ❤️
EOF
echo "[14/20] Creating QUICK_START.md..."
cat > QUICK_START.md << 'EOF'
# ⚡ Quick Start Guide
Get your bot running in 5 minutes!
## 🎯 Get Bot Token
1. Open Telegram → **@BotFather**
2. Send \`/newbot\`
3. Follow instructions
4. Copy token
## 🐳 Docker Method
\`\`\`bash
curl -fsSL https://get.docker.com | sh
git clone https://github.com/YOUR_USERNAME/telegram-shorts-bot.git
cd telegram-shorts-bot
cp .env.example .env
nano .env  # Add BOT_TOKEN
docker-compose up -d
\`\`\`
## ✅ Test
Send \`/start\` to your bot!
## 🎬 First Clip
1. Click **🎬 Buat Shorts**
2. Send YouTube URL
3. Select options
4. Wait 5-10 minutes
5. Download results!
---
Need help? Open an issue on GitHub!
EOF
echo "[15/20] Creating scripts..."
# Quick install script
cat > scripts/quick-install.sh << 'EOF'
#!/bin/bash
set -e
echo "🚀 Installing Telegram Shorts Bot..."
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
git clone https://github.com/YOUR_USERNAME/telegram-shorts-bot.git ~/telegram-shorts-bot
cd ~/telegram-shorts-bot
cp .env.example .env
read -p "Enter Bot Token: " TOKEN
sed -i "s/YOUR_BOT_TOKEN_HERE/$TOKEN/g" .env
docker-compose up -d
echo "✅ Bot started!"
EOF
chmod +x scripts/quick-install.sh
# Health check script
cat > scripts/health-check.sh << 'EOF'
#!/bin/bash
curl -f http://localhost:9100/health || exit 1
EOF
chmod +x scripts/health-check.sh
echo "[16/20] Creating GitHub workflows..."
# CI workflow
cat > .github/workflows/ci.yml << 'EOF'
name: CI
on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'
      - name: Install dependencies
        run: pip install -r requirements.txt
      - name: Build Docker
        run: docker build -t test .
EOF
# CD workflow
cat > .github/workflows/cd.yml << 'EOF'
name: CD
on:
  push:
    branches: [ main ]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Deploy
        run: echo "Deploy to VPS"
EOF
echo "[17/20] Creating issue templates..."
cat > .github/ISSUE_TEMPLATE/bug_report.md << 'EOF'
---
name: Bug Report
about: Create a bug report
---
## Bug Description
Describe the bug.
## Steps to Reproduce
1. ...
2. ...
## Expected vs Actual
Expected: ...
Actual: ...
## Environment
- OS:
- Docker version:
- Bot version:
EOF
cat > .github/ISSUE_TEMPLATE/feature_request.md << 'EOF'
---
name: Feature Request
about: Suggest a feature
---
## Feature Description
Describe the feature.
## Motivation
Why is this needed?
## Proposed Solution
How should it work?
EOF
echo "[18/20] Creating CONTRIBUTING.md..."
cat > CONTRIBUTING.md << 'EOF'
# Contributing
Thank you for contributing! 🎉
## How to Contribute
1. Fork the repository
2. Create feature branch
3. Make changes
4. Test thoroughly
5. Submit pull request
## Code Style
- Follow PEP 8
- Use type hints
- Add docstrings
## Testing
Test with real YouTube URLs before submitting.
Thank you! 🚀
EOF
echo "[19/20] Creating CHANGELOG.md..."
cat > CHANGELOG.md << 'EOF'
# Changelog
## [1.0.0] - 2024-01-XX
### Added
- Initial release
- AI Hook Detection
- Multi-clip generation
- Auto subtitles
- Metadata generator
- Docker support
- CI/CD pipeline
EOF
echo "[20/20] Creating placeholder Python files..."
# Create minimal placeholder files (user will need to copy full content from previous responses)
cat > app/main.py << 'EOF'
# TODO: Copy full content from previous response
# This is a placeholder
print("Telegram Shorts Bot - Copy full source code here")
EOF
cat > app/config.py << 'EOF'
# TODO: Copy full content from previous response
EOF
# Create placeholders for all Python files
touch app/bot/handlers.py
touch app/bot/keyboards.py
touch app/bot/state.py
touch app/bot/jobs.py
touch app/monitor/server.py
touch app/services/downloader.py
touch app/services/transcribe.py
touch app/services/align.py
touch app/services/subtitle.py
touch app/services/hook_finder.py
touch app/services/clipper.py
touch app/services/render.py
touch app/services/metadata.py
touch app/services/storage.py
touch app/utils/logger.py
touch app/utils/ffmpeg.py
touch app/utils/proc.py
echo ""
echo "=============================================="
echo "✅ Project structure generated successfully!"
echo "=============================================="
echo ""
echo "📁 Project location: $PROJECT_DIR"
echo ""
echo "⚠️  IMPORTANT: Python source files are placeholders!"
echo "   Copy full Python code from previous chat responses to:"
echo "   - app/main.py"
echo "   - app/config.py"
echo "   - app/bot/*.py"
echo "   - app/monitor/*.py"
echo "   - app/services/*.py"
echo "   - app/utils/*.py"
echo ""
echo "📦 To create ZIP:"
echo "   zip -r telegram-shorts-bot.zip $PROJECT_NAME/"
echo ""
echo "🚀 To upload to GitHub:"
echo "   cd $PROJECT_NAME"
echo "   git init"
echo "   git add ."
echo "   git commit -m 'Initial commit'"
echo "   git remote add origin https://github.com/YOUR_USERNAME/telegram-shorts-bot.git"
echo "   git push -u origin main"
echo ""
