-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:03:30.083




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int  NOT NULL,
    TenNV nvarchar(100)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh text  NOT NULL,
    Email text  NOT NULL,
    Mucluong int  NOT NULL,
    Maphong nchar(5)  NOT NULL,
    TPhongban_Maphong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Tenphong nvarchar(100)  NOT NULL,
    Maphong nchar(5)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.

