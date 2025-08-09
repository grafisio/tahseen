---
config:
  theme: mc
  layout: fixed
---
flowchart TD

%% ===================== START & ENTRY =====================
A0([Homepage]):::Aqua --> Q0{User Baru?}
Q0 -- Ya --> OB1
Q0 -- Tidak --> LG1

%% ===================== ONBOARDING & PRE-TEST =====================
subgraph S1["Tahap 1 • Onboarding & Pre-Test Adaptif (CEFR, AI ChatGPT)"]
direction TB
OB1["Onboarding:
• Bahasa UI (ID/AR/EN)
• Tujuan (akademik/percakapan/tes)
• Preferensi & waktu belajar
• Persetujuan privasi & data"]:::Sky --> PT0

PT0["Pre-Test Adaptif (4 Skill CEFR):
• Listening (Istimā‘)
• Speaking (Kalām)
• Reading (Qirā’ah)
• Writing (Kitābah)
Aturan: IRT/CAT → mulai kesulitan sedang, naik/turun dinamis"]:::Sky --> AN1

AN1["Analisis AI ChatGPT:
• Estimasi level CEFR per skill (A1–C2)
• Deteksi gap kompetensi & key misconceptions
• Confidence score & rekomendasi verifikasi"]:::Sky --> LP0
end

LG1["Login"]:::Sky --> DB0

%% ===================== LEARNING PATH PERSONAL =====================
subgraph S2["Tahap 2 • Pembuatan Learning Path Personal (AI Planner)"]
direction TB
LP0["AI ChatGPT Membuat Rencana Belajar:
• Prioritas: skill terlemah
• Sisipan: kekuatan untuk motivasi (flow)
• Prasyarat & Unlocking
• Target mingguan & jadwal
• Micro-learning & sesi cepat"]:::Pine --> DB0
end

%% ===================== DASHBOARD =====================
DB0["Dashboard:
• Ringkasan level CEFR per skill
• Modul aktif & prasyarat terkunci/terbuka
• Progress harian/mingguan & jadwal"]:::Aqua --> M0

%% ===================== PROSES BELAJAR ADAPTIF (4 SKILL) =====================
subgraph S3["Tahap 3 • Proses Belajar Adaptif & Personalisasi (4 Skill)"]
direction TB
M0["Materi Adaptif:
• Video, Audio, Teks, Gambar
• Kegiatan interaktif & konteks autentik
• Diferensiasi konten berdasar profil"]:::Sky

%% ---- BRANCH: LISTENING ----
M0 --> LSN0["Pilih Latihan Listening"]:::Sky --> LSN1["Soal Listening Adaptif"]:::Sky --> LSN2["Kirim Jawaban → AI"]:::Sky --> A3L["Evaluasi Listening Real-time"]:::Sky
A3L -->|Gunakan| C3L
A3L --> FB0

%% ---- BRANCH: SPEAKING ----
M0 --> SPK0["Pilih Latihan Speaking"]:::Sky --> SPK1["Prompt Speaking + rekam/ASR"]:::Sky --> SPK2["Kirim Transkrip/Audio → AI"]:::Sky --> A3S["Evaluasi Speaking Real-time"]:::Sky
A3S -->|Gunakan| C3S
A3S --> FB0

%% ---- BRANCH: READING ----
M0 --> RD0["Pilih Latihan Reading"]:::Sky --> RD1["Soal Reading Adaptif"]:::Sky --> RD2["Kirim Jawaban → AI"]:::Sky --> A3R["Evaluasi Reading Real-time"]:::Sky
A3R -->|Gunakan| C3R
A3R --> FB0

%% ---- BRANCH: WRITING ----
M0 --> WRT0["Pilih Latihan Writing"]:::Sky --> WRT1["Tulis/unggah jawaban"]:::Sky --> WRT2["Kirim Teks → AI"]:::Sky --> A3W["Evaluasi Writing Real-time"]:::Sky
A3W -->|Gunakan| C3W
A3W --> FB0

%% ---- FEEDBACK & REPLAN ----
FB0["Umpan Balik Kontekstual (AI Tutor):
• Jelaskan kesalahan spesifik
• Contoh perbaikan & mini-drill
• Saran remedial cepat
• Insight kesulitan → Planner"]:::Sky --> RP1

RP1["AI Replan Micro:
• Sesuaikan urutan modul
• Re-weight materi & latihan
• Tambah/hapus aktivitas"]:::Pine --> CK0

CK0{{"Cek Penguasaan Modul?
Kriteria 'Dikuasai':
• Aktivitas wajib tuntas
• Skor latihan ≥ 80%
• Error-critical ≤ ambang"}}:::Aqua

CK0 -- "Belum" --> REM1
CK0 -- "Sudah" --> PTEST

REM1["Remedial Otomatis Personal:
• Fokus area lemah
• Latihan tambahan terarah
• Ulang cek penguasaan"]:::Rose --> M0
end

%% ===================== POST-TEST, SERTIFIKASI, NAIK LEVEL =====================
subgraph S4["Tahap 4 • Evaluasi Level & Sertifikasi"]
direction TB
PTEST["Post-Test Adaptif (Level Saat Ini):
• Menguji 4 Skill sesuai level
• Bank soal terkalibrasi (IRT)"]:::Sky --> SC0

SC0{{"Skor ≥ 80% ?"}}:::Aqua
SC0 -- "Ya" --> PASS
SC0 -- "Tidak" --> REM2

PASS["Lulus:
• Sertifikat level (CEFR)
• Badge & XP
• Unlock materi level berikutnya
• Update profil & rekomendasi"]:::Pine --> NEXT

REM2["Tidak Lulus:
• Paket Remedial personal
• Jadwal ulang post-test
• Penekanan pada indikator gagal"]:::Rose --> M0

NEXT["AI ChatGPT Membuat Learning Path Baru (Naik Level)"]:::Pine --> DB0
end

%% ===================== LAYANAN SISTEM & PENOPANG =====================
subgraph S5["Layanan Sistem (Latar)"]
direction TB
SV1["AI Engines:
• Adaptive Test Engine (IRT/CAT)
• Learning Path Planner (ChatGPT)
• Feedback Generator
• AI Tutor (chat percakapan AR)"]:::Sky
SV2["Konten CEFR A1–C2:
• Bank materi per skill
• Bank soal pre/latihan/post
• Tagging level & kalibrasi berkala"]:::Sky
SV3["Gamifikasi & Retensi:
• Badge, XP, leaderboard
• Tantangan harian/mingguan
• Streak & misi"]:::Sky
SV4["Notifikasi Adaptif:
• Pengingat jadwal
• Nudge saat idle
• Rekomendasi micro-learning"]:::Sky
SV5["Privasi & Etika AI:
• Persetujuan & kontrol data
• Anonimisasi & retensi
• Explainability (alasan rekomendasi)"]:::Sky
SV6["Keandalan & Edge Case:
• Resume sesi (putus koneksi)
• Mode offline terbatas (cache)
• Reset/diagnostik profil"]:::Sky
end

%% ===================== KONEKSI KE BANK KONTEN =====================
AN1 -->|Gunakan| C1
A3L -->|Item| C3L
A3S -->|Item| C3S
A3R -->|Item| C3R
A3W -->|Item| C3W
PTEST -->|Item| C4

%% ===================== BANK KONTEN & ASSESSMENT =====================
subgraph C["Konten & Assessment (Repositori)"]
direction TB
C1["Bank Soal Pre-Test CEFR (4 Skill)"]:::Rose
C3L["Bank Soal Latihan Listening"]:::Rose
C3S["Bank Soal Latihan Speaking"]:::Rose
C3R["Bank Soal Latihan Reading"]:::Rose
C3W["Bank Soal Latihan Writing"]:::Rose
C4["Bank Soal Post-Test CEFR (4 Skill)"]:::Rose
end

%% ===================== STYLING =====================
classDef Sky stroke-width:1px, stroke:#374D7C, fill:#E2EBFF, color:#374D7C
classDef Pine stroke-width:1px, stroke:#254336, fill:#27654A, color:#FFFFFF
classDef Aqua stroke-width:1px, stroke:#46EDC8, fill:#DEFFF8, color:#378E7A
classDef Rose stroke-width:1px, stroke:#FF5978, fill:#FFDFE5, color:#8E2236