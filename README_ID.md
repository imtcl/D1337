<div align="center">
  <img src="images/logo.png" alt="D1337 Logo" width="200">
  
  # D1337
  
  **Platform Keamanan Siber Berbasis AI**
  
  *oleh D1337 Sovereign Labs*
  
  [English](README.md) | [Indonesia](README_ID.md)
</div>

---

Pengujian penetrasi, OSINT, forensik digital, dan manajemen kerentanan - didukung oleh model AI khusus yang dibangun untuk profesional keamanan elit.

D1337 menghubungkan perencanaan, eksekusi, pengawasan manusia, bukti, dan replay dalam satu workspace yang dapat diaudit. Dibangun dengan Go, menggabungkan agent AI, tool MCP-native, knowledge RAG, workflow visual, dan pemodelan attack-chain untuk operasi keamanan yang diotorisasi.

> **PENTING:** Gunakan D1337 hanya pada sistem yang Anda miliki atau yang secara eksplisit diotorisasi untuk diuji.

## Fitur Utama

### Agent dan Orkestrasi
- 🤖 **Eksekusi Agentik** - Intent bahasa natural ke aksi keamanan
- 🧩 **Orkestrasi Multi-Agent** - Mode Deep, Plan-Execute, dan Supervisor
- 🔀 **Workflow Graf** - Visual flow builder dengan kondisi dan approval
- 🎭 **Testing Berbasis Role** - Prompt terfokus untuk skenario keamanan

### Tool dan Knowledge
- 🧰 **100+ Security Tools** - Nmap, SQLMap, Nuclei, Metasploit, dll
- 🔌 **Integrasi MCP** - HTTP, stdio, SSE, federasi eksternal
- 📚 **Knowledge Base** - RAG retrieval dengan reranking
- 🖼️ **Analisis Vision** - Analisis screenshot dan UI

### Tata Kelola dan Audit
- 🧑‍⚖️ **Human in the Loop** - Mode approval dan audit trail
- 🔐 **Platform RBAC** - Multi-user dengan permission terbatas
- 🔒 **Audit Keamanan** - Akses terotentikasi dan retensi bukti

### Operasi Keamanan
- 📂 **Proyek & Attack Chain** - Fakta lintas-sesi dan tampilan graf
- 🛡️ **Manajemen Kerentanan** - Tracking severity dan lifecycle
- 🐚 **Manajemen WebShell** - Terminal virtual dan operasi file
- 📡 **C2 Built-in** - Listener, beacon, session, dan payload

## Quick Start

```bash
git clone https://github.com/imtcl/D1337.git
cd D1337
chmod +x run.sh && ./run.sh
```

**Prasyarat:**
- Go 1.25+
- Python 3.10+

Setelah startup:
1. Buka `https://127.0.0.1:8080/` (terima warning sertifikat self-signed)
2. Login dengan kredensial admin (ditampilkan di terminal)
3. Konfigurasi API OpenAI-compatible di Settings

## Lisensi

Apache License 2.0

---

<div align="center">
  <strong>D1337 Sovereign Labs</strong><br>
  Riset AI Lanjutan, Pengembangan Software, dan Konsultasi Keamanan Siber
</div>
