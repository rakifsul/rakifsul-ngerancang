#!/bin/bash

# Jalankan dari root repo (rakifsul-ngonten)
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
TEKS_DIR="$BASE_DIR/konten"
README_FILE="$BASE_DIR/README.md"

# Header untuk README
echo "# Daftar Hardware dari Home Network Rancangan RAKIFSUL" > "$README_FILE"
echo "" >> "$README_FILE"
echo "Repositori ini berisi kumpulan rancangan home network RAKIFSUL." >> "$README_FILE"
echo "" >> "$README_FILE"

# Loop untuk setiap folder tahun-bulan (urut dari terbaru ke terlama)
find "$TEKS_DIR" -mindepth 1 -maxdepth 1 -type d | sort -r | while read -r month_dir; do
    month_name=$(basename "$month_dir")
    echo "## $month_name" >> "$README_FILE"
    echo "" >> "$README_FILE"

    # Cari file .md di folder tersebut
    find "$month_dir" -type f -name "*.md" | sort | while read -r file_path; do
        file_name=$(basename "$file_path" .md)
        link_text=$(echo "$file_name" | tr '-' ' ')
        rel_path="${file_path#$BASE_DIR/}"
        echo "- [$link_text]($rel_path)" >> "$README_FILE"
    done

    echo "" >> "$README_FILE"
done

echo "## Link untuk Memberi Saya Uang" >> "$README_FILE"

echo "" >> "$README_FILE"

echo "Ini adalah [Link untuk Memberi Saya Uang](https://karyakarsa.com/rakifsul/info)." >> "$README_FILE"

echo "✅ README.md berhasil digenerate di $README_FILE"
