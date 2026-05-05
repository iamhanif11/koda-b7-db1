```mermaid
erDiagram
    BUKU {
        int book_id PK
        string judul
        string kategori
        int tahun_terbit
        string penulis

    }

    KATEGORI {
        int book_id PK
        string tittle
    }

    RAK_BUKU{
        int book_id PK
        string judul
        string kategori
    }

    PETUGAS{
        string nama
    }

    PEMINJAMAN{
        int book_id PK
        date tanggal_peminjaman
        date tanggal_dikembalikan
    }

    BUKU ||--|| RAK_BUKU : disimpan
    PEMINJAMAN ||--|{ PETUGAS : memberikan detail
    PEMINJAMAN ||--|{ BUKU : diambil 
    KATEGORI ||--|{ BUKU : filter
    
```