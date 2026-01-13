sudo apt-get update && sudo apt-get install -y docker.io docker-compose
sudo usermod -aG docker $USER
# logout/login or run: newgrp docker
cp .env.example .env
# edit .env with TELEGRAM_BOT_TOKEN and desired settings
sudo docker compose up -d
pwd
ls -la
cd /opt
sudo apt update
sudo apt install -y git
sudo git clone https://github.com/oxshiexp/ytclip.git
cd ytclip
ls -la
sudo apt update
sudo apt install -y docker.io docker-compose-plugin
sudo systemctl enable --now docker
docker --version
docker compose version
sudo apt update
sudo apt install -y docker-compose-plugin
docker compose version
sudo apt update
sudo apt install -y docker-compose
docker-compose version
ls -la
find . -maxdepth 3 -name "docker-compose.yml" -o -name "docker-compose.yaml" -o -name "compose.yml" -o -name "compose.yaml"
cd /opt/ytclip
sudo docker-compose up -d --build
sudo docker-compose ps
sudo docker-compose logs -f --tail=150
cd /opt/ytclip
cat docker-compose.yml
cd ytclip
cd /opt/ytclip
ls -la
ls -la | grep env
cd /opt/ytclip
# buat .env dari contoh
cp .env.example .env
# edit isi .env (wajib isi TELEGRAM_BOT_TOKEN, dll sesuai file contoh)
nano .env
python3 -c 'import secrets; print(secrets.token_urlsafe(48))'
nano /opt/ytclip/.env
cd /opt/ytclip
sudo docker-compose up -d --build
sudo docker-compose logs -f --tail=150
grep -E "SECRET_KEY|TELEGRAM_BOT_TOKEN|TELEGRAM_ADMIN_ID" /opt/ytclip/.env
cd /opt/ytclip
nano requirements.txt
cd /opt/ytclip
sudo docker-compose down
sudo docker-compose build --no-cache
sudo docker-compose up -d
sudo docker-compose logs -f --tail=150
sudo docker-compose logs -f --tail=200 worker
cd /opt/ytclip
sudo docker-compose restart worker bot
sudo docker-compose exec api yt-dlp --js-runtimes node --remote-components ejs:github --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=QmqngzMIlV8"
cd /opt/ytclip
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose logs --tail=200 bot
cd /opt/ytclip
git checkout -- app/bot/main.py
sudo docker-compose up -d --force-recreate bot
sudo docker-compose ps
sudo docker-compose ps | grep bot
sudo docker-compose logs --tail=50 bot
cd /opt/ytclip
git checkout -- app/bot/main.py
sudo docker-compose up -d --force-recreate bot
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose up -d redis
sudo docker-compose ps
cd /opt/ytclip
git checkout -- app/bot/main.py
sudo docker-compose up -d bot
sudo docker-compose ps
sudo docker-compose logs --tail=120 bot
sudo docker-compose logs -f --tail=200 worker
cd /opt/ytclip
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose logs --tail=200 worker
sudo docker-compose logs --tail=200 api
curl -s http://127.0.0.1:8000/health
curl -s http://127.0.0.1:8000/jobs/JOB_ID
curl -s http://127.0.0.1:8000/jobs/JOB_ID/results
cd /opt/ytclip
sudo docker-compose logs --tail=300 worker
cd /opt/ytclip
nano docker-compose.yml
cd /opt/ytclip
grep -nE "burst|work\(" app/workers/worker.py
nano /opt/ytclip/app/workers/worker.py
cd /opt/ytclip
sudo docker-compose restart worker
sudo docker-compose logs -f --tail=100 worker
cd /opt/ytclip
sudo docker-compose ps
sudo docker-compose exec redis redis-cli LLEN rq:queue:jobs
sudo docker-compose exec redis redis-cli LRANGE rq:queue:jobs 0 20
sudo apt install -y screen
screen -S ytclip
cd /opt/ytclip
mkdir -p data
nano data/cookies.txt
echo "data/cookies.txt" >> /opt/ytclip/.gitignore
cd /opt/ytclip
mkdir -p data
# upload file cookies.txt ke /opt/ytclip/data/cookies.txt (via SFTP Termius)
ls -la data/cookies.txt
nano /opt/ytclip/app/core/video_pipeline.py
grep -n "def _download" -n /opt/ytclip/app/core/video_pipeline.py
sed -n '70,170p' /opt/ytclip/app/core/video_pipeline.py
[200~
root@vmi2995168:/opt/ytclip# sed -n '70,170p' /opt/ytclip/app/core/video_pipeline.py
~nano /opt/ytclip/app/core/video_pipeline.py
nano /opt/ytclip/app/core/video_pipeline.py
[200~nano /opt/ytclip/app/core/video_pipeline.py
~nano /opt/ytclip/app/core/video_pipeline.py
nano /opt/ytclip/app/core/video_pipeline.py
# pastikan cookies ada (di host)
ls -la /opt/ytclip/data/cookies.txt
# restart worker supaya pakai kode baru
cd /opt/ytclip
sudo docker-compose restart worker
# cek sudah berubah
grep -n "cookies_path" -n /opt/ytclip/app/core/video_pipeline.py
cd /opt/ytclip
sudo docker-compose exec api yt-dlp --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=zU0DptSmkx8"
nano /opt/ytclip/app/bot/main.py

await query.edit_message_text("Konfigurasi diupdate.", reply_markup=_config_keyboard(options))
nano /opt/ytclip/app/bot/main.py
cd /opt/ytclip
sudo docker-compose restart bot
cd /opt/ytclip
sudo docker-compose exec api yt-dlp --cookies /data/cookies.txt -v --print id "https://www.youtube.com/watch?v=zU0DptSmkx8"
nano /opt/ytclip/app/bot/main.py
nano /opt/ytclip/Dockerfile
cd /opt/ytclip
sudo docker-compose down
sudo docker-compose build --no-cache
sudo docker-compose up -d
sudo docker-compose exec api yt-dlp --cookies /data/cookies.txt -v --print id "https://www.youtube.com/watch?v=zU0DptSmkx8"
nano /opt/ytclip/Dockerfile
cd /opt/ytclip
sudo docker-compose down
sudo docker-compose build --no-cache
sudo docker-compose up -d
sudo docker-compose exec api node -v
sudo docker-compose exec api yt-dlp --js-runtimes node --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=zU0DptSmkx8"
cd /opt/ytclip
sudo docker-compose exec api yt-dlp --js-runtimes node --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=zU0DptSmkx8"
ls -la /opt/ytclip/data/cookies.txt
mkdir -p /opt/ytclip/data
nano /opt/ytclip/data/cookies.txt
ls -la /opt/ytclip/data/cookies.txt
head -n 2 /opt/ytclip/data/cookies.txt
ls -la /opt/ytclip/data/cookies.txt
head -n 2 /opt/ytclip/data/cookies.txt
cd /opt/ytclip
sudo docker-compose exec api yt-dlp --js-runtimes node --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=QmqngzMIlV8"
root@vmi2995168:/opt/ytclip#
nano /opt/ytclip/app/core/video_pipeline.py
cp /opt/ytclip/app/core/video_pipeline.py /opt/ytclip/app/core/video_pipeline.py.bak
perl -0777 -i -pe 's/\["yt-dlp", \*cookies_args, "--print", "id", url\]/["yt-dlp", "--js-runtimes", "node", "--remote-components", "ejs:github", *cookies_args, "--print", "id", url]/g; s/"yt-dlp",\n\s+\*cookies_args,/"yt-dlp",\n            \"--js-runtimes\",\n            \"node\",\n            \"--remote-components\",\n            \"ejs:github\",\n            *cookies_args,/g' /opt/ytclip/app/core/video_pipeline.py
cd /opt/ytclip
sudo docker-compose restart worker
cd /opt/ytclip
sudo docker-compose restart worker bot
sudo docker-compose exec api yt-dlp --js-runtimes node --remote-components ejs:github --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=QmqngzMIlV8"
cd opt/ytclip
cd /opt/ytclip
ensure_vertical(clip_path, clip_path)
nano /opt/ytclip/app/core/video_pipeline.py
ensure_vertical(clip_path, clip_path)
nano /opt/ytclip/app/core/video_pipeline.py
grep -n "ensure_vertical(clip_path, clip_path)" /opt/ytclip/app/core/video_pipeline.py
cp /opt/ytclip/app/core/video_pipeline.py /opt/ytclip/app/core/video_pipeline.py.bak
perl -0777 -i -pe 's/if self\.options\.get\("smart_crop", True\):\n\s+ensure_vertical\(clip_path, clip_path\)/if self.options.get("smart_crop", True):\n                tmp_path = clip_path.with_suffix(".vertical.mp4")\n                ensure_vertical(clip_path, tmp_path)\n                tmp_path.replace(clip_path)/g' /opt/ytclip/app/core/video_pipeline.py
grep -n "ensure_vertical" /opt/ytclip/app/core/video_pipeline.py
cd /opt/ytclip
sudo docker-compose restart worker
grep -n "ensure_vertical" /opt/ytclip/app/core/video_pipeline.py
cd /opt/ytclip
sudo docker-compose restart worker
https://www.youtube.com/watch?v=QmqngzMIlV8
cd /opt/ytclip
sudo docker-compose logs -f --tail=200 worker
sudo docker-compose exec redis redis-cli LRANGE rq:queue:jobs 0 20
sudo docker-compose exec redis redis-cli LLEN rq:queue:jobs
cd /opt/ytclip
sudo docker-compose logs -f --tail=200 worker
cd /opt/ytclip
sudo docker-compose down
cp /opt/ytclip/.env /opt/ytclip/.env.bak.$(date +%F_%H%M%S) 2>/dev/null || true
cp -r /opt/ytclip/data /opt/ytclip/data.bak.$(date +%F_%H%M%S) 2>/dev/null || true
cd /opt/ytclip
git fetch --all
git reset --hard origin/main
git clean -fd
cp /opt/ytclip/.env.bak.* /opt/ytclip/.env 2>/dev/null || true
cd /opt/ytclip
sudo docker-compose up -d --build
sudo docker-compose ps
cd /opt/ytclip
ls -la .env.example
cd /opt/ytclip
cp .env.example .env
ls -la .env
nano /opt/ytclip/.env
cd /opt/ytclip
sudo docker-compose up -d --build
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose up -d --build
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose logs --tail=80 bot
cd /opt/ytclip
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose logs --tail=200 bot
cd /opt/ytclip
ls -la .env
grep -n "TELEGRAM_BOT_TOKEN\|TELEGRAM_ADMIN_ID" .env
cd /opt/ytclip
cp .env.example .env
cd /opt/ytclip
sudo docker-compose up -d
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose up -d
sudo docker-compose ps
nano /opt/ytclip/.env
cd /opt/ytclip
sudo docker-compose restart bot
cd /opt/ytclip
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose logs --tail=200 bot
nano /opt/ytclip/.env
cd /opt/ytclip
sudo docker-compose restart bot
sudo docker-compose logs --tail=50 bot
nano /opt/ytclip/.env
cd /opt/ytclip
# isi token bot (ganti PASTE_TOKEN_DI_SINI)
sudo sed -i 's/^TELEGRAM_BOT_TOKEN=.*/TELEGRAM_BOT_TOKEN= 8330505676:AAEbdg24KWFMqH8gz5-LAb0GZq55AcnMT4U/' .env
# isi admin id (angka) (ganti PASTE_ADMIN_ID_DI_SINI)
sudo sed -i 's/^TELEGRAM_ADMIN_ID=.*/TELEGRAM_ADMIN_ID= 7514291226/' .env
# cek sudah kepasang (token akan kelihatan — kalau mau aman, jangan share output ini ke siapa pun)
grep -n "TELEGRAM_BOT_TOKEN\|TELEGRAM_ADMIN_ID" .env
# isi token bot (ganti PASTE_TOKEN_DI_SINI)
sudo sed -i 's/^TELEGRAM_BOT_TOKEN=.*/TELEGRAM_BOT_TOKEN= 8330505676:AAEbdg24KWFMqH8gz5LAb0GZq55AcnMT4U/' .env
# isi admin id (angka) (ganti PASTE_ADMIN_ID_DI_SINI)
sudo sed -i 's/^TELEGRAM_ADMIN_ID=.*/TELEGRAM_ADMIN_ID= 7514291226/' .env
# cek sudah kepasang (token akan kelihatan — kalau mau aman, jangan share output ini ke siapa pun)
grep -n "TELEGRAM_BOT_TOKEN\|TELEGRAM_ADMIN_ID" .env
cd /opt/ytclip
sudo docker-compose logs -f --tail=200 worker
r

nano /opt/ytclip/.env
cd /opt/ytclip
sudo docker-compose restart bot
sudo docker-compose logs --tail=50 bot
bot_1     |   File "<frozen runpy>", line 88, in _run_code
bot_1     |   File "/app/app/bot/main.py", line 303, in <module>
bot_1     |     main() bot_1     |   File "/app/app/bot/main.py", line 289, in main
bot_1     |     application = ApplicationBuilder().token(settings.telegram_bot_token).build()
bot_1     |                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 303, in build
bot_1     |     bot: Bot = self._build_ext_bot()  # build a bot
bot_1     |                ^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 265, in _build_ext_bot
bot_1     |     return ExtBot(
bot_1     |            ^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_extbot.py", line 217, in __init__
bot_1     |     super().__init__(
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/_bot.py", line 248, in __init__
bot_1     |     raise InvalidToken("You must pass the token you received from https://t.me/Botfather!")
bot_1     | telegram.error.InvalidToken: You must pass the token you received from https://t.me/Botfather!
bot_1     | Traceback (most recent call last):
bot_1     |   File "<frozen runpy>", line 198, in _run_module_as_main
bot_1     |   File "<frozen runpy>", line 88, in _run_code
bot_1     |   File "/app/app/bot/main.py", line 303, in <module>
bot_1     |     main() bot_1     |   File "/app/app/bot/main.py", line 289, in main
bot_1     |     application = ApplicationBuilder().token(settings.telegram_bot_token).build()
bot_1     |                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 303, in build
bot_1     |     bot: Bot = self._build_ext_bot()  # build a bot
bot_1     |                ^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 265, in _build_ext_bot
bot_1     |     return ExtBot(
bot_1     |            ^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_extbot.py", line 217, in __init__
bot_1     |     super().__init__(
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/_bot.py", line 248, in __init__
bot_1     |     raise InvalidToken("You must pass the token you received from https://t.me/Botfather!")
bot_1     | telegram.error.InvalidToken: You must pass the token you received from https://t.me/Botfather!
root@vmi2995168:/opt/ytclip#
cd /opt/ytclip
grep -n "^TELEGRAM_BOT_TOKEN=" .env | sed 's/=.*/=***hidden***/'
cd /opt/ytclip
sudo docker-compose up -d --force-recreate bot
sudo docker-compose logs --tail=80 bot
cd /opt/ytclip
grep -n "bot:\|env_file" -n docker-compose.yml
bot:
cd /opt/ytclip
sudo sed -i 's/\r$//' .env
sudo docker-compose up -d --force-recreate bot
sudo docker-compose logs --tail=80 bot
bot_1     |     bot: Bot = self._build_ext_bot()  # build a bot
bot_1     |                ^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 265, in _build_ext_bot
bot_1     |     return ExtBot(
bot_1     |            ^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_extbot.py", line 217, in __init__
bot_1     |     super().__init__(
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/_bot.py", line 248, in __init__
bot_1     |     raise InvalidToken("You must pass the token you received from https://t.me/Botfather!")
bot_1     | telegram.error.InvalidToken: You must pass the token you received from https://t.me/Botfather!
bot_1     | Traceback (most recent call last):
bot_1     |   File "<frozen runpy>", line 198, in _run_module_as_main
bot_1     |   File "<frozen runpy>", line 88, in _run_code
bot_1     |   File "/app/app/bot/main.py", line 303, in <module>
bot_1     |     main() bot_1     |   File "/app/app/bot/main.py", line 289, in main
bot_1     |     application = ApplicationBuilder().token(settings.telegram_bot_token).build()
bot_1     |                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 303, in build
bot_1     |     bot: Bot = self._build_ext_bot()  # build a bot
bot_1     |                ^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 265, in _build_ext_bot
bot_1     |     return ExtBot(
bot_1     |            ^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_extbot.py", line 217, in __init__
bot_1     |     super().__init__(
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/_bot.py", line 248, in __init__
bot_1     |     raise InvalidToken("You must pass the token you received from https://t.me/Botfather!")
bot_1     | telegram.error.InvalidToken: You must pass the token you received from https://t.me/Botfather!
bot_1     | Traceback (most recent call last):
bot_1     |   File "<frozen runpy>", line 198, in _run_module_as_main
bot_1     |   File "<frozen runpy>", line 88, in _run_code
bot_1     |   File "/app/app/bot/main.py", line 303, in <module>
bot_1     |     main() bot_1     |   File "/app/app/bot/main.py", line 289, in main
bot_1     |     application = ApplicationBuilder().token(settings.telegram_bot_token).build()
bot_1     |                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 303, in build
bot_1     |     bot: Bot = self._build_ext_bot()  # build a bot
bot_1     |                ^^^^^^^^^^^^^^^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_applicationbuilder.py", line 265, in _build_ext_bot
bot_1     |     return ExtBot(
bot_1     |            ^^^^^^^
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/ext/_extbot.py", line 217, in __init__
bot_1     |     super().__init__(
bot_1     |   File "/usr/local/lib/python3.11/site-packages/telegram/_bot.py", line 248, in __init__
bot_1     |     raise InvalidToken("You must pass the token you received from https://t.me/Botfather!")
bot_1     | telegram.error.InvalidToken: You must pass the token you received from https://t.me/Botfather!
root@vmi2995168:/opt/ytclip#
cd /opt/ytclip
sudo docker-compose exec bot sh -lc 'python - <<PY
from app.utils.config import settings
t = (settings.telegram_bot_token or "")
print("TOKEN_LEN=", len(t))
print("HAS_COLON=", ":" in t)
print("HEAD=", t[:8])
PY'
cd /opt/ytclip
sudo docker-compose exec api sh -lc 'python - <<PY
from app.utils.config import settings
t = (settings.telegram_bot_token or "")
print("TOKEN_LEN=", len(t))
print("HAS_COLON=", ":" in t)
print("HEAD=", t[:8])
PY'
nano /opt/ytclip/.env
cd /opt/ytclip
# hilangkan CRLF windows kalau ada
sudo sed -i 's/\r$//' .env
# isi token baru
sudo sed -i 's/^TELEGRAM_BOT_TOKEN=.*/8330505676:AAHklooACFAFd34BYsCq_5tCsz2GfrUYVtY/' .env
# isi admin id (angka)
sudo sed -i 's/^TELEGRAM_ADMIN_ID=.*/7514291226/' .env
cd /opt/ytclip
sudo docker-compose run --rm --entrypoint sh bot -lc 'python - <<PY
import os
t = os.getenv("TELEGRAM_BOT_TOKEN","")
print("TOKEN_LEN=", len(t))
print("HAS_COLON=", ":" in t)
print("HEAD=", t[:8])
PY'
nano /opt/ytclip/.env
cd /opt/ytclip
sudo docker-compose restart bot
sudo docker-compose logs --tail=50 bot
ls -la .env .env.example
cp .env.example .env
nano .env
cd /opt/ytclip
python3 - <<'PY'
import secrets
print(secrets.token_urlsafe(48))
PY

nano .env
yulAy_fo4TfScKVILxL4X-RB1CyJ_zqN-jsFSPGPTFkviuLHBqG2UxSDWDwUiObq
sudo docker-compose up -d --force-recreate bot
# hapus semua container yang namanya ada ytclip
sudo docker ps -a --format '{{.ID}} {{.Names}}' | grep ytclip | awk '{print $1}' | xargs -r sudo docker rm -f
sudo docker rm -f c16fed70f9a8_ytclip_redis_1 2>/dev/null || true
cd /opt/ytclip
sudo docker-compose up -d
sudo docker-compose ps
cd /opt/ytclip
sudo docker-compose logs -f --tail=100 worker
worker_1  | 05:09:20 *** Listening on jobs...
worker_1  | 05:09:20 Worker rq:worker:19ad16351c39459fadf3885ca805af40: done, quitting
worker_1  | 05:09:20 Unsubscribing from channel rq:pubsub:19ad16351c39459fadf3885ca805af40
worker_1  | 05:09:22 Worker rq:worker:19ad16351c39459fadf3885ca805af40 started with PID 1, version 1.15.1
worker_1  | 05:09:22 Subscribing to channel rq:pubsub:19ad16351c39459fadf3885ca805af40
worker_1  | 05:09:22 *** Listening on jobs...
worker_1  | 05:09:22 Worker rq:worker:19ad16351c39459fadf3885ca805af40: done, quitting
worker_1  | 05:09:22 Unsubscribing from channel rq:pubsub:19ad16351c39459fadf3885ca805af40
worker_1  | 05:09:23 Worker rq:worker:19ad16351c39459fadf3885ca805af40 started with PID 1, version 1.15.1
worker_1  | 05:09:23 Subscribing to channel rq:pubsub:19ad16351c39459fadf3885ca805af40
worker_1  | 05:09:23 *** Listening on jobs...
worker_1  | 05:09:23 Worker rq:worker:19ad16351c39459fadf3885ca805af40: done, quitting
worker_1  | 05:09:23 Un
python3 - <<'PY'
from pathlib import Path
import re, time

p = Path("/opt/ytclip/app/workers/worker.py")
s = p.read_text(encoding="utf-8")

bak = p.with_suffix(f".py.bak.{time.strftime('%Y%m%d_%H%M%S')}")
bak.write_text(s, encoding="utf-8")

# 1) kalau ada loop burst, ganti jadi worker standby terus
s2, n1 = re.subn(
    r"(?ms)^\s*while\s+True\s*:\s*\n\s*worker\.work\(\s*burst\s*=\s*True\s*\)\s*\n\s*time\.sleep\(\s*1\s*\)\s*\n",
    "    worker.work(with_scheduler=True)  # standby terus, tidak quit\n",
    s
)

# 2) kalau ada worker.work(burst=True) tanpa loop, ganti juga
s3, n2 = re.subn(
    r"(?m)^\s*worker\.work\(\s*burst\s*=\s*True\s*\)\s*$",
    "    worker.work(with_scheduler=True)  # standby terus, tidak quit",
    s2
)

p.write_text(s3, encoding="utf-8")
print(f"✅ Patch worker.py ok (replaced blocks: {n1+n2}). Backup: {bak}")
PY

python3 -m py_compile /opt/ytclip/app/workers/worker.py && echo "✅ worker.py syntax OK"
cd /opt/ytclip && sudo docker-compose restart worker
cd /opt/ytclip
sudo docker-compose logs -f --tail=80 worker
cd /opt/ytclip
sudo docker-compose logs -f --tail=80 worker
cd /opt/ytclip
sudo docker-compose exec worker yt-dlp --cookies /data/cookies.txt --js-runtimes node --remote-components ejs:github -F "https://www.youtube.com/watch?v=K1w7Bvg5U40" | head -n 40
python3 - <<'PY'
from pathlib import Path
import re, time

p = Path("/opt/ytclip/app/core/video_pipeline.py")
s = p.read_text(encoding="utf-8")

bak = p.with_suffix(f".py.bak.{time.strftime('%Y%m%d_%H%M%S')}")
bak.write_text(s, encoding="utf-8")

# cari bagian cmd = base + ["-f", "mp4", ...] dan ganti format selection
# kita pakai: best[ext=mp4][protocol^=http][acodec!=none][vcodec!=none]/best[ext=mp4]/best
s2, n = re.subn(
    r'(?m)cmd\s*=\s*base\s*\+\s*\["-f",\s*"mp4",\s*"-o",\s*str\(output_template\),\s*url\]',
    'fmt = "best[ext=mp4][protocol^=http][acodec!=none][vcodec!=none]/best[ext=mp4]/best"\n        cmd = base + ["-f", fmt, "-o", str(output_template), url]',
    s
)

if n == 0:
    raise SystemExit("❌ Tidak ketemu baris cmd format di _download (pastikan sudah patch versi terbaru)")

p.write_text(s2, encoding="utf-8")
print(f"✅ Patched format selection OK. Backup: {bak}")
PY

cd /opt/ytclip && sudo docker-compose restart worker
nl -ba /opt/ytclip/app/core/video_pipeline.py | sed -n '90,160p'
best[height<=720][ext=mp4][acodec!=none][vcodec!=none]/best[ext=mp4]/best

cd /opt/ytclip
sudo docker-compose logs -f --tail=80 worker
root@vmi2995168:/opt/ytclip#
cd /opt/ytclip
nano /opt/ytclip/app/core/ffmpeg_utils.py
cp /opt/ytclip/app/core/ffmpeg_utils.py /opt/ytclip/app/core/ffmpeg_utils.py.bak.$(date +%F_%H%M%S)
python3 - <<'PY'
import re
from pathlib import Path

path = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
text = path.read_text(encoding="utf-8")

repls = {
"cut_clip": r'''def cut_clip(input_path: Path, output_path: Path, start: float, end: float) -> None:
    duration = max(0.1, float(end) - float(start))

    cmd = [
        "ffmpeg", "-y",
        "-ss", str(start),
        "-i", str(input_path),
        "-t", str(duration),

        # Re-encode supaya timestamp rapi & audio sync stabil
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        "-reset_timestamps", "1",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
''',

"ensure_vertical": r'''def ensure_vertical(input_path: Path, output_path: Path, width: int = 1080, height: int = 1920) -> None:
    # 9:16 yang benar: scale (increase) lalu crop (fill), bukan pad/letterbox


python3 - <<'PY'
import re
from pathlib import Path

path = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
text = path.read_text(encoding="utf-8")

repls = {
"cut_clip": r'''def cut_clip(input_path: Path, output_path: Path, start: float, end: float) -> None:
    duration = max(0.1, float(end) - float(start))

    cmd = [
        "ffmpeg", "-y",
        "-ss", str(start),
        "-i", str(input_path),
        "-t", str(duration),

        # Re-encode supaya timestamp rapi & audio sync stabil
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        "-reset_timestamps", "1",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
''',

"ensure_vertical": r'''def ensure_vertical(input_path: Path, output_path: Path, width: int = 1080, height: int = 1920) -> None:
    # 9:16 yang benar: scale (increase) lalu crop (fill), bukan pad/letterbox
    vf = f"scale={width}:{height}:force_original_aspect_ratio=increase,crop={width}:{height}"

    cmd = [
        "ffmpeg", "-y",
        "-i", str(input_path),
        "-vf", vf,
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
''',

"burn_captions": r'''def burn_captions(input_path: Path, output_path: Path, srt_path: Path) -> None:
    # escape path untuk ffmpeg subtitles filter
    srt_escaped = str(srt_path).replace("\\\\", "\\\\\\\\").replace(":", "\\\\:")

    style = (
        "FontName=Arial,"
        "FontSize=54,"
        "Alignment=2,"          # bottom-center
        "MarginV=160,"          # jarak dari bawah (aman dari UI)
        "BorderStyle=3,"        # background box
        "Outline=2,"
        "Shadow=0"
    )

    vf = f"subtitles='{srt_escaped}':force_style='{style}'"

    cmd = [
        "ffmpeg", "-y",
        "-i", str(input_path),
        "-vf", vf,
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
''',
}

def replace_func(src: str, name: str, new_block: str) -> str:
    # ganti dari "def name(...)" sampai sebelum "def <fungsi lain>" berikutnya
    pattern = rf"(?ms)^def\s+{re.escape(name)}\b.*?(?=^def\s+\w+\b|\Z)"
    if not re.search(pattern, src):
        raise SystemExit(f"❌ Tidak ketemu fungsi: {name}")
    return re.sub(pattern, new_block.rstrip() + "\_

cd /opt/ytclip
sudo docker-compose restart worker


[200~
> cd /opt/ytclip
sudo docker-compose restart worker
> cd /opt/ytclip
sudo docker-compose restart worker
>
ls -la /opt/ytclip/app/core/ffmpeg_utils.py.bak.*
cp /opt/ytclip/app/core/ffmpeg_utils.py.bak.2026-01-12_023000 /opt/ytclip/app/core/ffmpeg_utils.py
python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cp /opt/ytclip/app/core/ffmpeg_utils.py.bak.2026-01-12_034852 /opt/ytclip/app/core/ffmpeg_utils.py
python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cat >/tmp/patch_ffmpeg_utils.py <<'PY'
import re
from pathlib import Path

path = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
text = path.read_text(encoding="utf-8")

def replace_func(src: str, name: str, new_block: str) -> str:
    pattern = rf"(?ms)^def\s+{re.escape(name)}\b.*?(?=^def\s+\w+\b|\Z)"
    if not re.search(pattern, src):
        raise SystemExit(f"❌ Tidak ketemu fungsi: {name}")
    return re.sub(pattern, new_block.rstrip() + "\n\n", src, count=1)

cut_clip = r'''
def cut_clip(input_path: Path, output_path: Path, start: float, end: float) -> None:
    duration = max(0.1, float(end) - float(start))

    cmd = [
        "ffmpeg", "-y",
        "-ss", str(start),
        "-i", str(input_path),
        "-t", str(duration),
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        "-reset_timestamps", "1",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
'''.lstrip()

ensure_vertical = r'''
def ensure_vertical(input_path: Path, output_path: Path, width: int = 1080, height: int = 1920) -> None:
    vf = f"scale={width}:{height}:force_original_aspect_ratio=increase,crop={width}:{height}"

    cmd = [
        "ffmpeg", "-y",
        "-i", str(input_path),
        "-vf", vf,
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
'''.lstrip()

burn_captions = r'''
def burn_captions(input_path: Path, output_path: Path, srt_path: Path) -> None:
    srt_escaped = str(srt_path).replace("\\\\", "\\\\\\\\").replace(":", "\\\\:")

    style = (
        "FontName=Arial,"
        "FontSize=54,"
        "Alignment=2,"
        "MarginV=160,"
        "BorderStyle=3,"
        "Outline=2,"
        "Shadow=0"
    )

    vf = f"subtitles='{srt_escaped}':force_style='{style}'"

    cmd = [
        "ffmpeg", "-y",
        "-i", str(input_path),
        "-vf", vf,
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
'''.lstrip()

text = replace_func(text, "cut_clip", cut_clip)
text = replace_func(text, "ensure_vertical", ensure_vertical)
text = replace_func(text, "burn_captions", burn_captions)

path.write_text(text, encoding="utf-8")
print("✅ Patch sukses: cut_clip, ensure_vertical, burn_captions diganti")
PY

python3 /tmp/patch_ffmpeg_utils.py
python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cd /opt/ytclip
sudo docker-compose restart worker
grep -n "def cut_clip\|def ensure_vertical\|def burn_captions" /opt/ytclip/app/core/ffmpeg_utils.py
grep -n "force_original_aspect_ratio=increase" /opt/ytclip/app/core/ffmpeg_utils.py
cp /opt/ytclip/app/core/video_pipeline.py /opt/ytclip/app/core/video_pipeline.py.bak.$(date +%F_%H%M%S)
python3 - <<'PY'
from pathlib import Path

p = Path("/opt/ytclip/app/core/video_pipeline.py")
s = p.read_text(encoding="utf-8")

old = 'if self.options.get("smart_crop", True):\n                ensure_vertical(clip_path, clip_path)\n'
new = 'if self.options.get("smart_crop", True):\n                tmp_path = clip_path.with_suffix(".vertical.mp4")\n                ensure_vertical(clip_path, tmp_path)\n                tmp_path.replace(clip_path)\n'

if old not in s:
    raise SystemExit("❌ Pola tidak ketemu. Cek apakah indentasi/barisnya beda.")

p.write_text(s.replace(old, new, 1), encoding="utf-8")
print("✅ Auto replace sukses di video_pipeline.py")
PY

grep -n "smart_crop" -n /opt/ytclip/app/core/video_pipeline.py | head
grep -n "tmp_path = clip_path.with_suffix" /opt/ytclip/app/core/video_pipeline.py
python3 -m py_compile /opt/ytclip/app/core/video_pipeline.py
cd /opt/ytclip
sudo docker-compose restart worker
grep -n "ensure_vertical" /opt/ytclip/app/core/video_pipeline.py
cd /opt/ytclip
sudo docker-compose restart worker
sudo docker-compose logs --tail=50 worker
cp /opt/ytclip/app/core/ffmpeg_utils.py /opt/ytclip/app/core/ffmpeg_utils.py.bak2.$(date +%F_%H%M%S)
python3 - <<'PY'
import re
from pathlib import Path

path = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
src = path.read_text(encoding="utf-8")

new_block = r'''
def burn_captions(input_path: Path, srt_path: Path, output_path: Path, style: str = "boxed") -> None:
    # escape path untuk ffmpeg subtitles filter
    srt_escaped = str(srt_path).replace("\\", "\\\\").replace(":", "\\:")

    if style == "outline":
        force_style = (
            "FontName=Arial,"
            "FontSize=54,"
            "Alignment=2,"
            "MarginV=160,"
            "BorderStyle=1,"
            "Outline=3,"
            "Shadow=1"
        )
    else:
        # default: boxed
        force_style = (
            "FontName=Arial,"
            "FontSize=54,"
            "Alignment=2,"
            "MarginV=160,"
            "BorderStyle=3,"
            "Outline=2,"
            "Shadow=0"
        )

    vf = f"subtitles='{srt_escaped}':force_style='{force_style}'"

    cmd = [
        "ffmpeg", "-y",
        "-i", str(input_path),
        "-vf", vf,
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
'''.lstrip()

pattern = r"(?ms)^def\s+burn_captions\b.*?(?=^def\s+\w+\b|\Z)"
if not re.search(pattern, src):
    raise SystemExit("❌ Tidak ketemu fungsi burn_captions di ffmpeg_utils.py")

src2 = re.sub(pattern, new_block.rstrip() + "\n\n", src, count=1)
path.write_text(src2, encoding="utf-8")
print("✅ burn_captions() sudah diganti dan sekarang support style=")
PY

python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cd /opt/ytclip
sudo docker-compose restart worker
replace("\", "\\").replace(":", "\:")

replace("\", "\\").replace(":", "\:")
cp /opt/ytclip/app/core/ffmpeg_utils.py.bak.2026-01-12_034852 /opt/ytclip/app/core/ffmpeg_utils.py
python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cat >/tmp/patch_burn.py <<'PY'
import re
from pathlib import Path

path = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
src = path.read_text(encoding="utf-8")

new_block = '''
def burn_captions(input_path: Path, srt_path: Path, output_path: Path, style: str = "boxed") -> None:
    # Escape untuk ffmpeg subtitles filter
    # Python: "\\" adalah 1 backslash, "\\\\" adalah 2 backslash
    srt_escaped = str(srt_path).replace("\\\\", "\\\\\\\\").replace(":", "\\\\:")

    if style == "outline":
        force_style = (
            "FontName=Arial,"
            "FontSize=54,"
            "Alignment=2,"
            "MarginV=160,"
            "BorderStyle=1,"
            "Outline=3,"
            "Shadow=1"
        )
    else:
        # default: boxed
        force_style = (
            "FontName=Arial,"
            "FontSize=54,"
            "Alignment=2,"
            "MarginV=160,"
            "BorderStyle=3,"
            "Outline=2,"
            "Shadow=0"
        )

    vf = f"subtitles='{srt_escaped}':force_style='{force_style}'"

    cmd = [
        "ffmpeg", "-y",
        "-i", str(input_path),
        "-vf", vf,
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23",
        "-c:a", "aac", "-b:a", "128k",
        "-af", "aresample=async=1:first_pts=0",
        "-movflags", "+faststart",
        str(output_path),
    ]
    subprocess.run(cmd, check=True)
'''.lstrip()

pattern = r"(?ms)^def\s+burn_captions\b.*?(?=^def\s+\w+\b|\Z)"
if not re.search(pattern, src):
    raise SystemExit("❌ Tidak ketemu fungsi burn_captions() di ffmpeg_utils.py")

src = re.sub(pattern, new_block.rstrip() + "\n\n", src, count=1)
path.write_text(src, encoding="utf-8")
print("✅ burn_captions() patched (support style=, escape OK)")
PY

python3 /tmp/patch_burn.py
python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
replace("\", "\\").replace(":", "\:")

python3 - <<'PY'
from pathlib import Path
import re

p = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
s = p.read_text(encoding="utf-8")

# ganti baris srt_escaped yang rusak jadi versi yang benar
s2, n = re.subn(
    r'(?m)^\s*srt_escaped\s*=.*$',
    '    srt_escaped = str(srt_path).replace("\\\\", "\\\\\\\\").replace(":", "\\\\:")',
    s,
    count=1
)

if n == 0:
    raise SystemExit("❌ Tidak ketemu baris srt_escaped di ffmpeg_utils.py")

p.write_text(s2, encoding="utf-8")
print("✅ srt_escaped fixed")
PY

python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
p = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
s = p.read_text(encoding="utf-8")
# ganti baris srt_escaped yang rusak jadi versi yang benar
s2, n = re.subn(
)
if n == 0:;     raise SystemExit("❌ Tidak ketemu baris srt_escaped di ffmpeg_utils.py")
p.write_text(s2, encoding="utf-8")
print("✅ srt_escaped fixed")
PY
✅ srt_escaped fixed
root@vmi2995168:/opt/ytclip# python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
SyntaxError: unexpected character after line continuation character
root@vmi2995168:/opt/ytclip# python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
SyntaxError: unexpected character after line continuation character
root@vmi2995168:/opt/ytclip#
python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cd /opt/ytclip
sudo docker-compose restart worker
nl -ba /opt/ytclip/app/core/ffmpeg_utils.py | sed -n '40,70p'
python3 - <<'PY'
from pathlib import Path

p = Path("/opt/ytclip/app/core/ffmpeg_utils.py")
lines = p.read_text(encoding="utf-8").splitlines(True)

# ganti line 49 (index 48 karena 0-based)
i = 48
old = lines[i]
lines[i] = '    srt_escaped = str(srt_path).replace("\\\\", "\\\\\\\\").replace(":", "\\\\:")\n'

p.write_text("".join(lines), encoding="utf-8")
print("✅ Fixed line 49 (srt_escaped)")
print("Old:", old.rstrip())
print("New:", lines[i].rstrip())
PY

python3 -m py_compile /opt/ytclip/app/core/ffmpeg_utils.py
cd /opt/ytclip
sudo docker-compose restart worker
cd /opt/ytclip
sudo docker-compose logs -f --tail=200 worker
cd /opt/ytclip
sudo docker-compose logs -f --tail=200 worker
https://www.youtube.com/watch?v=QmqngzMIlV8
cd /opt/ytclip
sudo docker-compose exec redis redis-cli LLEN rq:queue:jobs
sudo docker-compose exec redis redis-cli LRANGE rq:queue:jobs 0 20
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
cd /opt/ytclip
sudo docker-compose restart api worker bot
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
cd /opt/ytclip
# job yang sedang diproses (WIP/running)
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
# lihat juga antrian (kalau masih nunggu)
sudo docker-compose exec redis redis-cli LRANGE rq:queue:jobs 0 20
sudo docker-compose logs --tail=200 worker | grep -Eo "[a-f0-9]{32}" | tail -n 10
cd /opt/ytclip
sudo docker-compose restart worker bot
sudo docker-compose logs --tail=200 worker | grep -Eo "[a-f0-9]{32}" | tail -n 10
cd /opt/ytclip
sudo docker-compose exec redis redis-cli DEL rq:queue:jobs
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
sqlite3 /opt/ytclip/data/app.db "select id,status,stage,progress,created_at from jobs order by created_at desc limit 10;"
mkdir -p /tmp/debugpack
{   echo "=== SYSTEM ===";   uname -a;   lsb_release -a 2>/dev/null || cat /etc/os-release;   echo "=== DISK/MEM ===";   df -h;   free -h;   echo "=== PROCESS/PORTS ===";   ss -tulpn | head -n 200;   echo "=== PYTHON/NODE ===";   python3 --version 2>/dev/null;   pip --version 2>/dev/null;   node --version 2>/dev/null;   npm --version 2>/dev/null; } > /tmp/debugpack/system.txt
# kalau pakai systemd (contoh nama service: ytclip)
sudo systemctl status ytclip --no-pager > /tmp/debugpack/service_status.txt 2>&1
sudo journalctl -u ytclip -n 200 --no-pager > /tmp/debugpack/service_log.txt 2>&1
# info project singkat
git rev-parse HEAD > /tmp/debugpack/git_commit.txt 2>/dev/null
git status --porcelain > /tmp/debugpack/git_status.txt 2>/dev/null
tar -czf debugpack.tar.gz -C /tmp debugpack
echo "OK -> $(pwd)/debugpack.tar.gz"
cd /opt/ytclip
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
sudo docker-compose logs --tail=300 worker | grep -Eo "[a-f0-9]{32}" | tail -n 5
cd /opt/ytclip
sudo docker-compose stop worker bot
cd /opt/ytclip
for J in bd0b9539f86d48a1bd859b8be8749ac5 18f7c2d4ed4b43a38dfdfcc79fc05890; do   echo "== clean redis $J ==";   sudo docker-compose exec redis redis-cli ZREM rq:wip:jobs "$J";   sudo docker-compose exec redis redis-cli LREM rq:queue:jobs 0 "$J";   sudo docker-compose exec redis redis-cli ZREM rq:failed:jobs "$J";   sudo docker-compose exec redis redis-cli DEL "rq:job:$J"; done
sudo apt-get update && sudo apt-get install -y sqlite3
for J in bd0b9539f86d48a1bd859b8be8749ac5 18f7c2d4ed4b43a38dfdfcc79fc05890; do   echo "== delete db $J ==";   sqlite3 /opt/ytclip/data/app.db "DELETE FROM jobs WHERE id='$J';"; done
sudo rm -rf /opt/ytclip/data/jobs/bd0b9539f86d48a1bd859b8be8749ac5
sudo rm -rf /opt/ytclip/data/jobs/18f7c2d4ed4b43a38dfdfcc79fc05890
sudo rm -rf /opt/ytclip/data/jobs/bd0b9539f86d48a1bd859b8be8749ac5
sudo rm -rf /opt/ytclip/data/jobs/18f7c2d4ed4b43a38dfdfcc79fc05890
cd /opt/ytclip
sudo docker-compose up -d
cd /opt/ytclip
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
sudo docker-compose exec redis redis-cli LRANGE rq:queue:jobs 0 20
sqlite3 /opt/ytclip/data/app.db "SELECT id,status,stage,progress FROM jobs ORDER BY created_at DESC LIMIT 5;"
sqlite3 /opt/ytclip/data/app.db "PRAGMA table_info(jobs);"
sqlite3 /opt/ytclip/data/app.db "SELECT id,status,progress FROM jobs ORDER BY rowid DESC LIMIT 10;"
sqlite3 /opt/ytclip/data/app.db "SELECT * FROM jobs ORDER BY rowid DESC LIMIT 3;"
cd /opt/ytclip
sudo docker-compose restart bot worker
cd /opt/ytclip
sudo docker-compose stop bot worker api
cd /opt/ytclip
sudo docker-compose exec redis sh -lc "redis-cli --scan --pattern 'rq:*' | xargs -r redis-cli DEL"
sudo docker-compose exec redis redis-cli DBSIZE
sqlite3 /opt/ytclip/data/app.db ".tables"
sqlite3 /opt/ytclip/data/app.db "DELETE FROM jobs;"
sqlite3 /opt/ytclip/data/app.db "VACUUM;"
cd /opt/ytclip
sudo docker-compose up -d
sudo docker-compose ps
# Redis harus bersih
sudo docker-compose exec redis redis-cli ZRANGE rq:wip:jobs 0 -1
sudo docker-compose exec redis redis-cli LRANGE rq:queue:jobs 0 20
# DB harus kosong
sqlite3 /opt/ytclip/data/app.db "SELECT COUNT(*) FROM jobs;"
ls -la /opt/ytclip/data
ls -la /opt/ytclip/data/jobs | head
sudo docker-compose logs --tail=80 bot
cd /opt/ytclip
# install node di api & worker container (image sama, tapi container terpisah)
sudo docker-compose exec api bash -lc "apt-get update && apt-get install -y nodejs"
sudo docker-compose exec worker bash -lc "apt-get update && apt-get install -y nodejs"
# cek node kebaca
sudo docker-compose exec api node -v
sudo docker-compose exec worker node -v
python3 - <<'PY'
from pathlib import Path
import time, re

p = Path("/opt/ytclip/app/core/video_pipeline.py")
s = p.read_text(encoding="utf-8")

bak = p.with_suffix(f".py.bak.{time.strftime('%Y%m%d_%H%M%S')}")
bak.write_text(s, encoding="utf-8")

new_func = r'''
    def _download(self, url: str) -> Path:
        if not url or ("youtube.com" not in url and "youtu.be" not in url):
            raise ValueError("Invalid YouTube URL")

        output_dir = Path(settings.base_data_dir) / "downloads"
        output_dir.mkdir(parents=True, exist_ok=True)

        cookies_path = "/data/cookies.txt"
        cookies_args = ["--cookies", cookies_path] if os.path.exists(cookies_path) else []

        # pakai node + remote components untuk YouTube JS challenge
        js_args = ["--js-runtimes", "node", "--remote-components", "ejs:github"]

        base = ["yt-dlp", "--no-playlist"] + js_args + cookies_args

        # ambil video id (pakai cookies & js)
        video_id = subprocess.check_output(base + ["--print", "id", url]).decode().strip()

        cached = output_dir / f"{video_id}.mp4"
        if cached.exists():
            return cached

        output_template = output_dir / "%(id)s.%(ext)s"
        cmd = base + ["-f", "mp4", "-o", str(output_template), url]
        subprocess.run(cmd, check=True)

        download_files = sorted(output_dir.glob("*.mp4"), key=os.path.getmtime, reverse=True)
        if not download_files:
            raise RuntimeError("Download failed")
        return download_files[0]
'''.lstrip("\n")

# replace seluruh def _download(...) ... sebelum def _check_cancel
s2, n = re.subn(r"(?ms)^\s*def _download\(.*?\n\s*def _check_cancel\(", new_func + "\n    def _check_cancel(", s)
if n == 0:
    raise SystemExit("❌ Gagal patch: blok _download tidak ketemu")

p.write_text(s2, encoding="utf-8")
print(f"✅ Patched _download() OK. Backup: {bak}")
PY

python3 - <<'PY'
from pathlib import Path
import time, re

p = Path("/opt/ytclip/app/core/video_pipeline.py")
s = p.read_text(encoding="utf-8")

bak = p.with_suffix(f".py.bak.{time.strftime('%Y%m%d_%H%M%S')}")
bak.write_text(s, encoding="utf-8")

new_func = r'''
    def _download(self, url: str) -> Path:
        if not url or ("youtube.com" not in url and "youtu.be" not in url):
            raise ValueError("Invalid YouTube URL")

        output_dir = Path(settings.base_data_dir) / "downloads"
        output_dir.mkdir(parents=True, exist_ok=True)

        cookies_path = "/data/cookies.txt"
        cookies_args = ["--cookies", cookies_path] if os.path.exists(cookies_path) else []

        # pakai node + remote components untuk YouTube JS challenge
        js_args = ["--js-runtimes", "node", "--remote-components", "ejs:github"]

        base = ["yt-dlp", "--no-playlist"] + js_args + cookies_args

        # ambil video id (pakai cookies & js)
        video_id = subprocess.check_output(base + ["--print", "id", url]).decode().strip()

        cached = output_dir / f"{video_id}.mp4"
        if cached.exists():
            return cached

        output_template = output_dir / "%(id)s.%(ext)s"
        cmd = base + ["-f", "mp4", "-o", str(output_template), url]
        subprocess.run(cmd, check=True)

        download_files = sorted(output_dir.glob("*.mp4"), key=os.path.getmtime, reverse=True)
        if not download_files:
            raise RuntimeError("Download failed")
        return download_files[0]
'''.lstrip("\n")

# replace seluruh def _download(...) ... sebelum def _check_cancel
s2, n = re.subn(r"(?ms)^\s*def _download\(.*?\n\s*def _check_cancel\(", new_func + "\n    def _check_cancel(", s)
if n == 0:
    raise SystemExit("❌ Gagal patch: blok _download tidak ketemu")

p.write_text(s2, encoding="utf-8")
print(f"✅ Patched _download() OK. Backup: {bak}")
PY

cd /opt/ytclip
sudo docker-compose restart worker api
cd /opt/ytclip
sudo docker-compose exec worker yt-dlp --js-runtimes node --remote-components ejs:github --cookies /data/cookies.txt --print id "https://www.youtube.com/watch?v=K1w7Bvg5U40"
