#!/usr/bin/env bash
set -euo pipefail

BASE="mawa-site"
ZIPNAME="mawa-site.zip"

# --- Fichiers media en base64 ---
LOGO_JPG_BASE64="/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCAIIAfQDASIAAhEBAxEB/8QAGwABAAIDAQEAAAAAAAAAAAAAAAUGAwQHAgH/xABGEAABAwMCAwMKBAMFBgcAAAABAgMEAAUGEQcSITFBURMUImFxgZEiMlKxI0JTYnKhwdEWM4KS4fAkg9LxFzRDY3OistL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+qUREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERE-i...<TRUNCATED>"
BANNER_MP4_BASE64="AAAAGGZ0eXBNU05WAAACAE1TNVgAAAAAmW1vb3YAAABsbXZoZAAAAAAAAAAAAAAAAAAAA+gAAAAAAAEAAAEAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAnehGV0cmFrAAAAXHRraGQAAAADAAAAAAAAAAAAAAABAAAAAAAAB9AAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAACRlZHRzAAAAHGVsc3QAAAAAAAAAAQAAA+gAAAAAASgAAQAAAAAAmW1kaWEAAAAgbWRoZAAAAAAAAAAAAAAAAAAA1AAA4FccAhcAFXEAAAAAAAhoZGwAAAAHdmlkZQAAAAAAAAAAAAAAAFZpZGVvSGFuZGxlcgAAAAI+bWluZgAAABR2bWhkAAAAAQAAAAAAAAAAAAAAJGRpbmYAAAAcZHJlZgAAAAAAAAABAAAADHVybCAAAAABAAABlXN0YbwAAACpc3RzZAAAAAEAAAD1YTJ2dQAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAoAEgASAAAAEgAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAj//gAATGF2YzYwLjMxLjEwMgAD/wAaAAACANIAAAANADQBAQAgAAADABgAAAAAGAECAQASIAAAAwAYAAAAABgBAgEAFSAAAANIAAAADQA0AQEAIgADAGEAAAAYAQIBAEgAAAAYAQIBABUgAAAAAAAAACQAAAACYXYxQ8D//wAABAAAADGlkb3QAAAAAAAAAAABIAAAASEgAAAE27i5eRDe/+4z2b9f+2i9b21f3/9MhQAD3Anr//AAEAjgD+0AABAAAIpJZW1gQkFf/hABmAA//AAAADg+CAIAAIAAABAAgACABYQgFIEgAD/gAAGGoMEgABAAAABi0uODAuMTAwAP8ABgAAAAIAAIAAgAABAAgAAgAWAQCBIAAD/wAACGh0dHNkAAAAAAAAAAEAAAACAQAAAWAAAAABAAAAAGBwYXNwAAAAAQAAAAEAAAAAY29sciAAAAAAAAAAY2xsaQAAAAACAAEAAgAAAAAAAAAAY29scgQAAAABAAAAJHBpeGkAAAAFAAAABQAAABBzdHJpAAAAAG1zdWJ0AAEAAAAFAAAAAMpzY3JpAAAAAG1zdWJ0AAEAAAAFAAAAyHN0c2wAAAAAAAAAAQAAAD1zdHNjAAAAAAAAAAEAAAABAAAAAQAAAAEAAAAfc3RzegAAAAAAAAAAAAAAAQAAAFYAAAAYY3R0cwAAAAEAAAABAADQAQAAABxzdGNvAAAAAAAAAAEAAAA4AAAAYnVkdGEAAABabWV0YQAAAAAAAAAhaGRscgAAAAAAAAAAbWRpcmFwcGwAAAAtaWxzdAAAACWpdG9vAAAAHWRhdGEAAAABAAAAAExhdmY2MC4xNi4xMDA="
PRESENTATION_JPG_BASE64="/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCAIIAfQDASIAAhEBAxEB/8QAGwABAAIDAQEAAAAAAAAAAAAAAAUGAwQHAgH/xABGEAABAwMCAwMKBAMFBgcAAAABAgMEAAUGEQcSITFBURMUImFxgZEiMlKxI0JTYnKhwdEWM4KS4fAkg9LxFzRDY3OistL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+qUREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERE"

echo "🤖 Creating project folder for MAWA AI Bot & Token: $BASE ..."
rm -rf "$BASE" "$ZIPNAME"
mkdir -p "$BASE"

# ---------------------------
# package.json
# ---------------------------
cat > "$BASE/package.json" <<'JSON'
{
  "name": "mawa-ai-site",
  "version": "1.0.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint"
  },
  "dependencies": {
    "next": "14.2.4",
    "react": "18.3.1",
    "react-dom": "18.3.1",
    "@formatjs/intl-localematcher": "0.5.4",
    "negotiator": "0.6.3"
  },
  "devDependencies": {
    "@types/negotiator": "^0.6.3",
    "autoprefixer": "10.4.19",
    "postcss": "8.4.38",
    "tailwindcss": "3.4.3"
  }
}
JSON

# ---------------------------
# next.config.js
# ---------------------------
cat > "$BASE/next.config.js" <<'JS'
/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  experimental: { appDir: true },
  images: {
    unoptimized: true
  }
}
module.exports = nextConfig;
JS

# ---------------------------
# tailwind.config.js
# ---------------------------
cat > "$BASE/tailwind.config.js" <<'JS'
module.exports = {
  content: ["./app/**/*.{js,jsx,ts,tsx}", "./components/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {
      colors: {
        mawa: {
          bg: '#0b0f17',
          blue: '#3b82f6',
          red: '#ef4444',
          white: '#f8fafc',
          card: '#0f1626'
        }
      },
      boxShadow: {
        glow: '0 0 0 6px rgba(59,130,246,0.08), 0 20px 40px rgba(11,17,24,0.6)'
      }
    }
  },
  plugins: []
}
JS

# ---------------------------
# postcss.config.js
# ---------------------------
cat > "$BASE/postcss.config.js" <<'JS'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {}
  }
}
JS

# ---------------------------
# .gitignore
# ---------------------------
cat > "$BASE/.gitignore" <<'IGN'
node_modules
.next
.env.local
.DS_Store
npm-debug.log*
yarn-debug.log*
yarn-error.log*
.vercel
IGN

# ---------------------------
# README.md
# ---------------------------
cat > "$BASE/README.md" <<'MD'
# MAWA – The First Living AI Bot for Communities, Powered by the $MAWA Token
MAWA is a next-generation AI community manager designed to replace cold, scripted bots with a living digital companion. It adapts, engages, and even speaks, becoming the soul of communities across Crypto, Gaming, Lifestyle, and Web3.
MD

# ---------------------------
# folder structure
# ---------------------------
mkdir -p "$BASE/app/[lang]" "$BASE/components" "$BASE/public" "$BASE/dictionaries"

# ---------------------------
# globals.css
# ---------------------------
cat > "$BASE/app/globals.css" <<'CSS'
@tailwind base;
@tailwind components;
@tailwind utilities;
:root{--mawa-bg:#0b0f17;--mawa-blue:#3b82f6;--mawa-red:#ef4444;--mawa-white:#f8fafc;--mawa-card:#0f1626;}
html,body,#__next{height:100%;}
body{@apply bg-[color:var(--mawa-bg)] text-white antialiased;font-family:Inter,ui-sans-serif,system-ui,-apple-system,"Segoe UI",Roboto;}
.container{ @apply max-w-7xl mx-auto px-6;}
.section{ @apply py-12 md:py-16; }
.card{@apply bg-[color:var(--mawa-card)] border border-white/10 rounded-2xl p-6;}
.btn-primary{@apply bg-[color:var(--mawa-blue)] text-black px-5 py-2 rounded-2xl font-semibold shadow-glow transition-transform hover:scale-105;}
.countdown{display:inline-grid;grid-auto-flow:column;gap:0.5rem;align-items:center;}
.countdown .unit{min-width:64px;padding:0.75rem 1rem;border-radius:0.75rem;background:linear-gradient(180deg,rgba(59,130,246,0.12),rgba(239,68,68,0.06));color:var(--mawa-white);text-align:center;font-weight:700;font-size:1.25rem;box-shadow:0 6px 18px rgba(0,0,0,0.5);}
.hero-accent{background:linear-gradient(90deg,rgba(59,130,246,0.06),rgba(255,255,255,0.02),rgba(239,68,68,0.05));padding:1.25rem;border-radius:1rem;}
CSS

# ---------------------------
# MODIFIÉ: Dictionnaires avec "video_url"
# ---------------------------
cat > "$BASE/dictionaries/en.json" <<'JSON'
{
  "buy_url": "https://jup.ag/swap/SOL-MAWA",
  "social": { "telegram": "https://t.me/mawasolana", "x": "https://x.com/Mawathecroco" },
  "nav": { "features": "AI Features", "tokenomics": "Tokenomics", "roadmap": "Roadmap", "buy": "Buy $MAWA" },
  "hero": { "tag": "The First Living AI Bot for Communities", "title": "MAWA — AI, Interaction, Community", "description": "MAWA merges a next-gen AI community manager with a robust token ecosystem on Solana. More than a bot, a true AI member.", "buy_btn": "Buy on Jupiter", "tokenomics_btn": "Tokenomics", "contract": "SPL Contract" },
  "vision": { "title": "Our Vision: From Scripts to Soul", "text": "Today's communities grow fast, but their bots stay cold and scripted. MAWA changes everything by blending human warmth with AI intelligence. It speaks, jokes, moderates, and adapts, becoming the living soul of your group, powered by the $MAWA token." },
  "ai_features": {
    "title": "MAWA AI Core Features",
    "features": [
      { "emoji": "🛡️", "title": "Smart Moderation", "desc": "Proactively handles spam, scams, and toxic behavior to keep communities safe." },
      { "emoji": "🎉", "title": "Automatic Engagement", "desc": "Keeps chats alive with contextual memes, polls, quizzes, and fun replies." },
      { "emoji": "🎭", "title": "Adaptive Personality", "desc": "Speaks the language of your community, from crypto degens to professional gamers." },
      { "emoji": "🔊", "title": "Voice Interaction", "desc": "Talk to MAWA in real-time in voice channels, just like another member of the group." }
    ]
  },
  "project_demo": {
    "title": "Discover the Bot in Action",
    "tabs": [
      { "name": "Smart Moderation", "desc": "See how MAWA instantly detects and removes spam or malicious links, keeping the community clean and safe 24/7.", "video_url": "https://cdn.pixabay.com/video/2024/05/27/211515-9436113_large.mp4" },
      { "name": "Automatic Engagement", "desc": "Watch MAWA spark conversations by posting relevant memes, starting polls, or asking fun questions based on the chat's context.", "video_url": "https://cdn.pixabay.com/video/2024/04/18/206581-9333475_large.mp4" },
      { "name": "Adaptive Personality", "desc": "Visualize MAWA switching its tone and vocabulary, from professional in a support channel to casual and fun in a general chat.", "video_url": "https://cdn.pixabay.com/video/2023/09/13/178887-8631110_large.mp4" }
    ]
  },
  "tokenomics": { "title": "The $MAWA Ecosystem Token", "distribution": { "title": "Distribution", "items": [{ "label": "Liquidity Pool (DEX)", "value": "78%" }, { "label": "Vested Team/Advisors", "value": "2%" }, { "label": "Ecosystem & Marketing", "value": "20%" }] }, "parameters": { "title": "Token Parameters", "items": [{ "label": "Total Supply", "value": "1,000,000,000" }, { "label": "LP Lock", "value": "12 Months" }, { "label": "Tax", "value": "2%" }, { "label": "Utility", "value": "Payments, Staking, Governance" }] }},
  "roadmap": { "title": "Our Combined Roadmap", "phases": [ { "phase": "Phase 1: Foundation", "status": "COMPLETED", "desc": "Premium branding, website launch, and initial community building." }, { "phase": "Phase 2: AI Prototype & Growth", "status": "IN PROGRESS", "desc": "Launch basic AI bot for pilot testing; expand social engagement." }, { "phase": "Phase 3: Token Launch & Utility", "status": "PLANNED", "date": "2025-09-13", "desc": "Official $MAWA launch on Jupiter; integrate token for payments and premium features." } ]},
  "faq": { "title": "Frequently Asked Questions", "items": [{ "q": "Is MAWA an AI project or a memecoin?", "a": "Both. MAWA is fundamentally an AI technology project. The $MAWA token is the utility and governance token that powers its ecosystem." }] },
  "how_to_buy": { "title": "How to Buy $MAWA", "steps": [ "Install a Solana wallet (e.g., Phantom).", "Fund your wallet with SOL.", "Connect to Jupiter Aggregator and swap SOL for $MAWA." ], "link_text": "Buy on Jupiter" }
}
JSON

cat > "$BASE/dictionaries/fr.json" <<'JSON'
{
  "buy_url": "https://jup.ag/swap/SOL-MAWA",
  "social": { "telegram": "https://t.me/mawasolana", "x": "https://x.com/Mawathecroco" },
  "nav": { "features": "Fonctionnalités IA", "tokenomics": "Tokenomics", "roadmap": "Roadmap", "buy": "Acheter $MAWA" },
  "hero": { "tag": "Le Premier Bot IA Vivant pour Communautés", "title": "MAWA — IA, Interaction, Communauté", "description": "MAWA fusionne un manager de communauté IA nouvelle génération avec un écosystème de token robuste sur Solana. Plus qu'un bot, un vrai membre IA.", "buy_btn": "Acheter sur Jupiter", "tokenomics_btn": "Tokenomics", "contract": "Contrat SPL" },
  "vision": { "title": "Notre Vision : Des Scripts à l'Âme", "text": "Les communautés d'aujourd'hui grandissent vite, mais leurs bots restent froids et scriptés. MAWA change tout en mêlant chaleur humaine et intelligence artificielle pour devenir l'âme vivante de votre groupe." },
  "ai_features": {
    "title": "Fonctionnalités Clés de l'IA MAWA",
    "features": [
      { "emoji": "🛡️", "title": "Modération Intelligente", "desc": "Gère proactivement le spam, les arnaques et les comportements toxiques pour sécuriser les communautés." },
      { "emoji": "🎉", "title": "Engagement Automatique", "desc": "Maintient les discussions actives avec des mèmes, sondages, et réponses amusantes." },
      { "emoji": "🎭", "title": "Personnalité Adaptative", "desc": "Parle le langage de votre communauté, des degens crypto aux joueurs professionnels." },
      { "emoji": "🔊", "title": "Interaction Vocale", "desc": "Parlez à MAWA en temps réel dans les canaux vocaux, comme avec un autre membre." }
    ]
  },
  "project_demo": {
    "title": "Découvrez le Bot en Action",
    "tabs": [
      { "name": "Modération Intelligente", "desc": "Voyez comment MAWA détecte et supprime instantanément le spam ou les liens malveillants, gardant la communauté sûre 24/7.", "video_url": "https://cdn.pixabay.com/video/2024/05/27/211515-9436113_large.mp4" },
      { "name": "Engagement Automatique", "desc": "Regardez MAWA lancer des conversations en postant des mèmes pertinents, des sondages ou des questions amusantes selon le contexte.", "video_url": "https://cdn.pixabay.com/video/2024/04/18/206581-9333475_large.mp4" },
      { "name": "Personnalité Adaptative", "desc": "Visualisez MAWA changeant de ton, passant d'un langage professionnel à un ton décontracté selon le salon de discussion.", "video_url": "https://cdn.pixabay.com/video/2023/09/13/178887-8631110_large.mp4" }
    ]
  },
  "tokenomics": { "title": "Le Token de l'Écosystème $MAWA", "distribution": { "title": "Distribution", "items": [{ "label": "Pool de Liquidité (DEX)", "value": "78%" }, { "label": "Équipe/Conseillers (Vested)", "value": "2%" }, { "label": "Écosystème & Marketing", "value": "20%" }] }, "parameters": { "title": "Paramètres du Token", "items": [{ "label": "Offre Totale", "value": "1,000,000,000" }, { "label": "Verrouillage LP", "value": "12 Mois" }, { "label": "Taxe", "value": "2%" }, { "label": "Utilité", "value": "Paiements, Staking, Gouvernance" }] }},
  "roadmap": { "title": "Notre Roadmap Combinée", "phases": [ { "phase": "Phase 1 : Fondation", "status": "TERMINÉ", "desc": "Branding premium, lancement du site web et création de la communauté initiale." }, { "phase": "Phase 2 : Prototype IA & Croissance", "status": "EN COURS", "desc": "Lancement du bot IA de base pour des tests pilotes ; expansion de l'engagement social." }, { "phase": "Phase 3 : Lancement Token & Utilité", "status": "PRÉVU", "date": "2025-09-13", "desc": "Lancement officiel de $MAWA sur Jupiter ; intégration du token pour les paiements." } ]},
  "faq": { "title": "Foire Aux Questions", "items": [{ "q": "MAWA est-il un projet d'IA ou un memecoin ?", "a": "Les deux. MAWA est un projet technologique d'IA, et le token $MAWA est le jeton d'utilité qui alimente son écosystème." }] },
  "how_to_buy": { "title": "Comment Acheter $MAWA", "steps": [ "Installez un portefeuille Solana (ex: Phantom).", "Alimentez votre portefeuille en SOL.", "Connectez-vous à Jupiter et échangez des SOL contre des $MAWA." ], "link_text": "Acheter sur Jupiter" }
}
JSON

cat > "$BASE/dictionaries/zh.json" <<'JSON'
{
  "buy_url": "https://jup.ag/swap/SOL-MAWA",
  "social": { "telegram": "https://t.me/mawasolana", "x": "https://x.com/Mawathecroco" },
  "nav": { "features": "AI 功能", "tokenomics": "代币经济学", "roadmap": "路线图", "buy": "购买 $MAWA" },
  "hero": { "tag": "首个为社区打造的活性 AI 机器人", "title": "MAWA — AI、互动、社区", "description": "MAWA 将下一代 AI 社区管理器与 Solana 上强大的代币生态系统相结合。它不只是一个机器人，更是一个真正的 AI 成员。", "buy_btn": "在 Jupiter 上购买", "tokenomics_btn": "代币经济学", "contract": "SPL 合约" },
  "vision": { "title": "我们的愿景：从脚本到灵魂", "text": "当今社区发展迅速，但它们的机器人却冰冷且脚本化。MAWA 融合了人性的温暖与人工智能，改变了这一切，成为您群组的活灵魂。" },
  "ai_features": {
    "title": "MAWA AI 核心功能",
    "features": [
      { "emoji": "🛡️", "title": "智能管理", "desc": "主动处理垃圾信息、诈骗和不良行为，保护社区安全。" },
      { "emoji": "🎉", "title": "自动互动", "desc": "通过情景化的表情包、投票、测验和有趣的回复保持聊天活跃。" },
      { "emoji": "🎭", "title": "自适应个性", "desc": "无论是加密货币爱好者还是专业游戏玩家，它都能使用您的社区语言进行交流。" },
      { "emoji": "🔊", "title": "语音互动", "desc": "在语音频道中与 MAWA 实时交谈，就像与群组中的另一位成员一样。" }
    ]
  },
  "project_demo": {
    "title": "了解机器人的实际操作",
    "tabs": [
      { "name": "智能管理", "desc": "了解 MAWA 如何即时检测并删除垃圾邮件或恶意链接，全天候保护社区清洁与安全。", "video_url": "https://cdn.pixabay.com/video/2024/05/27/211515-9436113_large.mp4" },
      { "name": "自动互动", "desc": "观看 MAWA 如何根据聊天内容发布相关表情包、发起投票或提出有趣问题来激发对话。", "video_url": "https://cdn.pixabay.com/video/2024/04/18/206581-9333475_large.mp4" },
      { "name": "自适应个性", "desc": "可视化 MAWA 如何在不同频道中切换语气和词汇，从专业支持到休闲聊天，无缝衔接。", "video_url": "https://cdn.pixabay.com/video/2023/09/13/178887-8631110_large.mp4" }
    ]
  },
  "tokenomics": { "title": "$MAWA 生态系统代币", "distribution": { "title": "分配", "items": [{ "label": "流动性池 (DEX)", "value": "78%" }, { "label": "团队/顾问 (归属)", "value": "2%" }, { "label": "生态系统与营销", "value": "20%" }] }, "parameters": { "title": "代币参数", "items": [{ "label": "总供应量", "value": "1,000,000,000" }, { "label": "流动性锁定", "value": "12 个月" }, { "label": "税费", "value": "2%" }, { "label": "用途", "value": "支付、质押、治理" }] }},
  "roadmap": { "title": "我们的综合路线图", "phases": [ { "phase": "第一阶段：奠基", "status": "已完成", "desc": "高端品牌建设、网站上线及初始社区建立。" }, { "phase": "第二阶段：AI 原型与增长", "status": "进行中", "desc": "推出基础 AI 机器人进行试点测试；扩大社交互动。" }, { "phase": "第三阶段：代币发行与功能集成", "status": "计划中", "date": "2025-09-13", "desc": "在 Jupiter 上正式发行 $MAWA；集成代币用于支付。" } ]},
  "faq": { "title": "常见问题", "items": [{ "q": "MAWA 是一个 AI 项目还是一个 Memecoin？", "a": "两者都是。MAWA 是一个 AI 技术项目，而 $MAWA 代币是驱动其生态系统的实用代币。" }] },
  "how_to_buy": { "title": "如何购买 $MAWA", "steps": [ "安装一个 Solana 钱包（例如 Phantom）。", "向您的钱包充值 SOL。", "连接到 Jupiter，将 SOL 兑换成 $MAWA。" ], "link_text": "在 Jupiter 上购买" }
}
JSON


# ---------------------------
# dictionaries index
# ---------------------------
cat > "$BASE/dictionaries/index.js" <<'JS'
import 'server-only'
const dictionaries = {
  en: () => import('./en.json').then((m) => m.default),
  fr: () => import('./fr.json').then((m) => m.default),
  zh: () => import('./zh.json').then((m) => m.default)
}
export const getDictionary = async (locale) => dictionaries[locale ?? 'en']() 
JS

# ---------------------------
# middleware.js
# ---------------------------
cat > "$BASE/middleware.js" <<'JS'
import { match } from '@formatjs/intl-localematcher'
import Negotiator from 'negotiator'

let locales = ['en', 'fr', 'zh']
let defaultLocale = 'en'

function getLocale(request) {
  const negotiatorHeaders = {}
  request.headers.forEach((value, key) => (negotiatorHeaders[key] = value))
  const languages = new Negotiator({ headers: negotiatorHeaders }).languages()
  try {
    return match(languages, locales, defaultLocale)
  } catch(e) {
    return defaultLocale
  }
}

export function middleware(request) {
  const { pathname } = request.nextUrl
  const pathnameIsMissingLocale = locales.every(
    (locale) => !pathname.startsWith(`/${locale}/`) && pathname !== `/${locale}`
  )
  if (pathnameIsMissingLocale) {
    const locale = getLocale(request)
    return Response.redirect(
      new URL(`/${locale}${pathname.startsWith('/') ? '' : '/'}${pathname}`, request.url)
    )
  }
}
export const config = {
  matcher: ['/((?!api|_next/static|_next/image|favicon.ico|logo.jpg|banner.mp4|presentation.jpg).*)'],
}
JS

# ---------------------------
# Layout & Home (app router)
# ---------------------------
cat > "$BASE/app/[lang]/layout.jsx" <<'JSX'
import '../globals.css'
import Header from '../../components/Header'
import Footer from '../../components/Footer'
import { getDictionary } from '../../dictionaries'

export const metadata = {
  title: 'MAWA — The First Living AI Bot for Communities',
  description: 'MAWA merges a next-gen AI community manager with a robust token ecosystem on Solana. More than a bot, a true AI member.'
}

export default async function RootLayout({ children, params }) {
  const dict = await getDictionary(params.lang)
  return (
    <html lang={params.lang}>
      <body>
        <Header lang={params.lang} nav={dict.nav} buy_url={dict.buy_url} />
        <main className="min-h-screen">
          {children}
        </main>
        <Footer social={dict.social}/>
      </body>
    </html>
  )
}
JSX

cat > "$BASE/app/[lang]/page.jsx" <<'JSX'
import { getDictionary } from '../../dictionaries'
import HeroSection from '../../components/HeroSection'
import VisionSection from '../../components/VisionSection'
import AIFeaturesSection from '../../components/AIFeaturesSection'
import ProjectDemoSection from '../../components/ProjectDemoSection'
import RoadmapSection from '../../components/RoadmapSection'
import TokenomicsSection from '../../components/TokenomicsSection'
import FAQSection from '../../components/FAQSection'
import HowToBuySection from '../../components/HowToBuySection'

export default async function Home({ params: { lang } }) {
  const dict = await getDictionary(lang)
  return (
    <div>
      <section className="section bg-grid">
        <div className="container">
          <HeroSection buyUrl={dict.buy_url} lang={lang} dict={dict.hero} />
        </div>
      </section>
      <div className="container">
        <VisionSection dict={dict.vision} />
        <AIFeaturesSection dict={dict.ai_features} />
        <ProjectDemoSection dict={dict.project_demo} />
        <TokenomicsSection dict={dict.tokenomics} />
        <RoadmapSection dict={dict.roadmap} />
        <HowToBuySection dict={dict.how_to_buy} buyUrl={dict.buy_url}/>
        <FAQSection dict={dict.faq} />
      </div>
    </div>
  )
}
JSX

# ---------------------------
# Components
# ---------------------------
cat > "$BASE/components/Header.jsx" <<'JSX'
import Link from 'next/link'
import LanguageSwitcher from './LanguageSwitcher'
export default function Header({ lang, nav, buy_url }){
  return (
    <header className="w-full border-b border-white/10 bg-mawa-bg/80 backdrop-blur-sm sticky top-0 z-40">
      <div className="container py-4 flex items-center justify-between">
        <Link href={`/${lang}`} className="flex items-center gap-3">
          <img src="/logo.jpg" alt="MAWA Logo" className="w-10 h-10"/>
          <span className="font-semibold text-xl">MAWA</span>
        </Link>
        <nav className="hidden md:flex gap-6 items-center text-sm">
          <a href="#features">{nav.features}</a>
          <a href="#tokenomics">{nav.tokenomics}</a>
          <a href="#roadmap">{nav.roadmap}</a>
          <a className="btn-primary" href={buy_url} target="_blank" rel="noopener noreferrer">{nav.buy}</a>
          <LanguageSwitcher currentLang={lang} />
        </nav>
        <div className="md:hidden">
          <LanguageSwitcher currentLang={lang} />
        </div>
      </div>
    </header>
  )
}
JSX

cat > "$BASE/components/Footer.jsx" <<'JSX'
export default function Footer({ social }){
  return (
    <footer className="w-full border-t border-white/10 mt-12">
      <div className="container py-8 flex flex-col md:flex-row items-center justify-between gap-4 text-sm text-white/70">
        <div>© {new Date().getFullYear()} MAWA — Not financial advice. DYOR.</div>
        <div className="flex gap-4">
          <a href={social.x} target="_blank" rel="noreferrer" className="hover:underline">X / Twitter</a>
          <a href={social.telegram} target="_blank" rel="noreferrer" className="hover:underline">Telegram</a>
        </div>
      </div>
    </footer>
  )
}
JSX

cat > "$BASE/components/LanguageSwitcher.jsx" <<'JSX'
'use client'
import { usePathname } from 'next/navigation'
import Link from 'next/link'
export default function LanguageSwitcher({ currentLang }) {
  const pathname = usePathname()
  const languages = [{ code: 'en', name: '🇬🇧' },{ code: 'fr', name: '🇫🇷' },{ code: 'zh', name: '🇨🇳' }]
  const redirectedPathName = (locale) => {
    if (!pathname) return '/'
    const segments = pathname.split('/')
    segments[1] = locale
    return segments.join('/')
  }
  return (
    <div className="flex items-center gap-2 bg-mawa-card border border-white/10 rounded-full p-1">
      {languages.map((lang) => (
        <Link key={lang.code} href={redirectedPathName(lang.code)}
          className={`w-8 h-8 rounded-full grid place-items-center text-sm transition-colors ${
            currentLang === lang.code ? 'bg-mawa-blue text-black font-semibold' : 'hover:bg-white/10'
          }`}>
          {lang.name}
        </Link>
      ))}
    </div>
  )
}
JSX

cat > "$BASE/components/Countdown.jsx" <<'JSX'
'use client'
import { useEffect, useState } from 'react'
export default function Countdown({ targetISO, labels }) {
  const target = new Date(targetISO).getTime()
  const [now, setNow] = useState(Date.now())
  useEffect(() => {
    const t = setInterval(()=> setNow(Date.now()), 1000)
    return () => clearInterval(t)
  }, [])
  const diff = Math.max(0, target - now)
  const d = Math.floor(diff/(1000*60*60*24));
  const h = Math.floor((diff/(1000*60*60))%24);
  const m = Math.floor((diff/1000/60)%60);
  const s = Math.floor((diff/1000)%60);
  const pad = (n) => String(n).padStart(2,'0')
  return (
    <div className="mt-6 hero-accent rounded-xl inline-flex items-center gap-4">
      <div className="countdown">
        <div className="unit"><div className="text-xs text-white/70">DAYS</div><div className="text-2xl">{pad(d)}</div></div>
        <div className="unit"><div className="text-xs text-white/70">HRS</div><div className="text-2xl">{pad(h)}</div></div>
        <div className="unit"><div className="text-xs text-white/70">MINS</div><div className="text-2xl">{pad(m)}</div></div>
        <div className="unit"><div className="text-xs text-white/70">SECS</div><div className="text-2xl">{pad(s)}</div></div>
      </div>
    </div>
  )
}
JSX

cat > "$BASE/components/HeroSection.jsx" <<'JSX'
'use client'
import Link from 'next/link'
import Countdown from './Countdown'
export default function HeroSection({ buyUrl, lang, dict }) {
  const targetISO = '2025-09-13T00:00:00Z'
  const titleParts = dict.title.split('—')[1]?.split(',').map(s => s.trim()) || []
  const colors = ['--mawa-blue','--mawa-white','--mawa-red']
  return (
    <section id="hero" className="grid lg:grid-cols-5 gap-8 items-center py-8">
      <div className="lg:col-span-3">
        <div className="inline-flex items-center gap-3 px-3 py-1 rounded-full bg-white/5 text-xs">{dict.tag}</div>
        <h1 className="mt-6 text-4xl md:text-6xl font-extrabold leading-tight">
          MAWA — {titleParts.map((word, i) => (
            <span key={i} style={{ color: `var(${colors[i % colors.length]})` }}>
              {word}{i < titleParts.length - 1 ? ', ' : ''}
            </span>
          ))}
        </h1>
        <p className="mt-4 text-white/80 max-w-xl">{dict.description}</p>
        <div className="mt-6 flex flex-wrap gap-3">
          <a href={buyUrl} target="_blank" rel="noreferrer" className="btn-primary">{dict.buy_btn}</a>
          <a href="#tokenomics" className="px-5 py-2 rounded-2xl border border-white/10">{dict.tokenomics_btn}</a>
        </div>
        <div><Countdown targetISO={targetISO} /></div>
        <div className="mt-4 text-xs text-white/60">{dict.contract}: <span className="font-mono bg-white/5 px-2 py-1 rounded">SOON...</span></div>
      </div>
      <div className="lg:col-span-2 flex justify-center lg:justify-end">
        <div className="w-full max-w-lg rounded-2xl overflow-hidden shadow-glow">
          <video autoPlay loop muted playsInline className="w-full h-full object-cover">
            <source src="/banner.mp4" type="video/mp4" />
            Your browser does not support the video tag.
          </video>
        </div>
      </div>
    </section>
  )
}
JSX

cat > "$BASE/components/VisionSection.jsx" <<'JSX'
export default function VisionSection({ dict }) {
  return (
    <section id="vision" className="section">
      <div className="grid md:grid-cols-2 gap-12 items-center max-w-5xl mx-auto">
        <div className="text-center md:text-left">
          <h2 className="text-3xl font-bold mb-4">{dict.title}</h2>
          <p className="text-white/80">{dict.text}</p>
        </div>
        <div className="flex justify-center">
            <img src="/logo.jpg" alt="MAWA Vision" className="w-48 h-48 rounded-full shadow-glow" />
        </div>
      </div>
    </section>
  )
}
JSX

cat > "$BASE/components/AIFeaturesSection.jsx" <<'JSX'
export default function AIFeaturesSection({ dict }) {
  return (
    <section id="features" className="section">
      <div className="text-center max-w-3xl mx-auto">
        <h2 className="text-3xl font-bold mb-8">{dict.title}</h2>
      </div>
      <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
        {dict.features.map((item, i) => (
          <div key={i} className="card text-center">
            <div className="text-4xl mb-3">{item.emoji}</div>
            <h3 className="font-semibold text-lg">{item.title}</h3>
            <p className="mt-1 text-sm text-white/70">{item.desc}</p>
          </div>
        ))}
      </div>
    </section>
  )
}
JSX

# ---------------------------
# MODIFIÉ: ProjectDemoSection.jsx pour accepter des vidéos
# ---------------------------
cat > "$BASE/components/ProjectDemoSection.jsx" <<'JSX'
'use client'
import { useState, useRef, useEffect } from 'react'

export default function ProjectDemoSection({ dict }) {
  const [activeTab, setActiveTab] = useState(0)
  const videoRefs = useRef([])

  useEffect(() => {
    videoRefs.current.forEach((video, index) => {
      if (video && index !== activeTab) {
        video.pause()
      }
    })
    if (videoRefs.current[activeTab]) {
      videoRefs.current[activeTab].play()
    }
  }, [activeTab])

  return (
    <section id="demo" className="section">
      <div className="text-center max-w-3xl mx-auto">
        <h2 className="text-3xl font-bold mb-8">{dict.title}</h2>
      </div>

      <div className="max-w-5xl mx-auto">
        {/* Tab Buttons */}
        <div className="flex justify-center flex-wrap gap-2 md:gap-4 mb-6">
          {dict.tabs.map((tab, index) => (
            <button
              key={index}
              onClick={() => setActiveTab(index)}
              className={`px-4 py-2 text-sm font-semibold rounded-full transition-colors duration-300 ${
                activeTab === index
                  ? 'bg-mawa-blue text-black'
                  : 'bg-mawa-card hover:bg-white/10'
              }`}
            >
              {tab.name}
            </button>
          ))}
        </div>

        {/* Tab Content */}
        <div className="relative">
          {dict.tabs.map((tab, index) => (
             <div
              key={index}
              className={`transition-opacity duration-500 ${ activeTab === index ? 'opacity-100' : 'opacity-0 absolute inset-0 pointer-events-none' }`}
            >
              {activeTab === index && (
                <div className="card">
                  <p className="text-center mb-4 text-white/80">{tab.desc}</p>
                  <div className="bg-mawa-bg p-2 rounded-lg aspect-video overflow-hidden">
                    {/* IMPORTANT: Remplacez cette vidéo par votre visuel */}
                    <video
                      ref={el => videoRefs.current[index] = el}
                      src={tab.video_url}
                      alt={`${tab.name} Demo`}
                      className="w-full h-full object-contain rounded-md"
                      autoPlay
                      loop
                      muted
                      playsInline
                    />
                  </div>
                </div>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
JSX

cat > "$BASE/components/HowToBuySection.jsx" <<'JSX'
export default function HowToBuySection({ dict, buyUrl }) {
  return (
    <section id="howtobuy" className="section">
      <div className="card text-center max-w-2xl mx-auto">
        <h2 className="text-2xl font-bold mb-4">{dict.title}</h2>
        <ol className="text-white/80 space-y-2 text-left list-decimal list-inside">
          {dict.steps.map((step, i)=><li key={i}>{step}</li>)}
        </ol>
        <a href={buyUrl} target="_blank" rel="noreferrer" className="btn-primary mt-6 inline-block">{dict.link_text}</a>
      </div>
    </section>
  )
}
JSX

cat > "$BASE/components/TokenomicsSection.jsx" <<'JSX'
export default function TokenomicsSection({ dict }) {
  return (
    <section id="tokenomics" className="section">
      <div className="text-center max-w-3xl mx-auto">
        <h2 className="text-3xl font-bold mb-8">{dict.title}</h2>
      </div>
      <div className="grid md:grid-cols-2 gap-6 max-w-4xl mx-auto">
        <div className="card">
          <h3 className="font-semibold mb-3">{dict.distribution.title}</h3>
          <ul className="text-white/80 space-y-2">
            {dict.distribution.items.map((d, i) => (
              <li key={i} className="flex justify-between"><span>{d.label}</span><span className="font-semibold">{d.value}</span></li>
            ))}
          </ul>
        </div>
        <div className="card">
          <h3 className="font-semibold mb-3">{dict.parameters.title}</h3>
          <ul className="text-white/80 space-y-2">
            {dict.parameters.items.map((p, i) => (
               <li key={i} className="flex justify-between"><span>{p.label}</span><span className="font-semibold">{p.value}</span></li>
            ))}
          </ul>
        </div>
      </div>
    </section>
  )
}
JSX

cat > "$BASE/components/RoadmapSection.jsx" <<'JSX'
export default function RoadmapSection({ dict }) {
  return (
    <section id="roadmap" className="section">
      <div className="text-center max-w-3xl mx-auto">
         <h2 className="text-3xl font-bold mb-8">{dict.title}</h2>
      </div>
      <div className="space-y-6 max-w-4xl mx-auto">
        {dict.phases.map((p, i)=>(
          <div key={i} className="card">
            <div className="flex items-start justify-between gap-4">
              <div>
                <h3 className="font-semibold">{p.phase}</h3>
                <p className="mt-1 text-sm text-white/80">{p.desc}</p>
              </div>
              <div className={`text-xs font-bold py-1 px-2 rounded-full whitespace-nowrap ${p.status === 'COMPLETED' ? 'bg-green-500/20 text-green-400' : p.status === 'IN PROGRESS' ? 'bg-blue-500/20 text-blue-400' : 'bg-white/10 text-white/70'}`}>{p.status}{p.date ? ` • ${p.date}` : ''}</div>
            </div>
          </div>
        ))}
      </div>
    </section>
  )
}
JSX

cat > "$BASE/components/FAQSection.jsx" <<'JSX'
export default function FAQSection({ dict }) {
  return (
    <section id="faq" className="section">
      <div className="text-center max-w-3xl mx-auto">
        <h2 className="text-3xl font-bold mb-8">{dict.title}</h2>
      </div>
      <div className="grid gap-4 max-w-4xl mx-auto">
        {dict.items.map((it, idx)=>(
          <details key={idx} className="card">
            <summary className="font-semibold cursor-pointer">{it.q}</summary>
            <p className="mt-2 text-white/80">{it.a}</p>
          </details>
        ))}
      </div>
    </section>
  )
}
JSX

# ---------------------------
# public assets
# ---------------------------
echo "Creating public assets..."
# echo "$LOGO_JPG_BASE64" | base64 -d > "$BASE/public/logo.jpg"
# echo "$BANNER_MP4_BASE64" | base64 -d > "$BASE/public/banner.mp4"
# echo "$PRESENTATION_JPG_BASE64" | base64 -d > "$BASE/public/presentation.jpg"
# cp "$BASE/public/logo.jpg" "$BASE/public/favicon.ico"


# ---------------------------
# finish & zip
# ---------------------------
echo "Zipping the project into $ZIPNAME ..."
cd "$BASE"
zip -rq "../$ZIPNAME" .
cd ..

echo ""
echo "✅ Done. Project created in '$BASE' and zipped as '$ZIPNAME'."
echo ""
echo "Next steps:"
echo "  1. cd $BASE"
echo "  2. npm install"
echo "  3. npm run dev"
echo ""
echo "Your site will be available at http://localhost:3000"
