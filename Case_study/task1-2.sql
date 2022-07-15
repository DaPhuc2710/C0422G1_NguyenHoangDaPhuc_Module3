DROP DATABASE IF EXISTS case_study;
CREATE DATABASE case_study;
USE case_study;
CREATE TABLE vi_tri (
    ma_vi_tri INT NOT NULL UNIQUE PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
    ma_trinh_do INT NOT NULL UNIQUE PRIMARY KEY,
    ten_trinh_do VARCHAR(45)
);

CREATE TABLE bo_phan (
    ma_bo_phan INT NOT NULL UNIQUE PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE loai_khach (
    ma_loai_khach INT NOT NULL UNIQUE PRIMARY KEY,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT NOT NULL UNIQUE PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
);

CREATE TABLE kieu_thue (
    ma_kieu_thue INT NOT NULL UNIQUE PRIMARY KEY,
    ten_kieu_thue VARCHAR(45)
);

CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT NOT NULL UNIQUE PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE,
    don_vi VARCHAR(10),
    trang_thai VARCHAR(45)
);

CREATE TABLE nhan_vien (
    ma_nhan_vien INT NOT NULL UNIQUE PRIMARY KEY,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    luong DOUBLE,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT NOT NULL UNIQUE,
    ma_trinh_do INT NOT NULL UNIQUE,
    ma_bo_phan INT NOT NULL UNIQUE,
    FOREIGN KEY (ma_vi_tri)
        REFERENCES case_study.vi_tri (ma_vi_tri),
    FOREIGN KEY (ma_trinh_do)
        REFERENCES case_study.trinh_do (ma_trinh_do),
    FOREIGN KEY (ma_bo_phan)
        REFERENCES case_study.bo_phan (ma_bo_phan)
);

CREATE TABLE khach_hang (
    ma_khach_hang INT NOT NULL UNIQUE PRIMARY KEY,
    ma_loai_khach INT NOT NULL UNIQUE,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    gioi_tinh BIT(1) NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    FOREIGN KEY (ma_loai_khach)
        REFERENCES case_study.loai_khach (ma_loai_khach)
);

CREATE TABLE dich_vu (
    ma_dich_vu INT NOT NULL UNIQUE PRIMARY KEY,
    ten_dich_vu VARCHAR(45) NOT NULL,
    dien_tich VARCHAR(45),
    chi_phi_thue DOUBLE NOT NULL,
    so_nguoi_toi_da INT,
    ma_kieu_thue INT NOT NULL UNIQUE,
    ma_loai_dich_vu INT NOT NULL UNIQUE,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khach VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT,
    FOREIGN KEY (ma_kieu_thue)
        REFERENCES case_study.kieu_thue (ma_kieu_thue),
    FOREIGN KEY (ma_loai_dich_vu)
        REFERENCES case_study.loai_dich_vu (ma_loai_dich_vu)
);

CREATE TABLE hop_dong (
    ma_hop_dong INT NOT NULL UNIQUE PRIMARY KEY,
    ngay_lam_hop_dong DATETIME NOT NULL,
    ngay_ket_thuc DATETIME NOT NULL,
    tien_dat_coc DOUBLE NOT NULL,
    ma_nhan_vien INT NOT NULL UNIQUE,
    ma_khach_hang INT NOT NULL UNIQUE,
    ma_dich_vu_di_kem INT NOT NULL UNIQUE,
    FOREIGN KEY (ma_nhan_vien)
        REFERENCES case_study.nhan_vien (ma_nhan_vien),
    FOREIGN KEY (ma_khach_hang)
        REFERENCES case_study.khach_hang (ma_khach_hang),
    FOREIGN KEY (ma_dich_vu_di_kem)
        REFERENCES case_study.dich_vu_di_kem (ma_dich_vu_di_kem)
);

CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT NOT NULL UNIQUE PRIMARY KEY,
    ma_hop_dong INT NOT NULL UNIQUE,
    ma_dich_vu_di_kem INT NOT NULL UNIQUE,
    so_luong INT NOT NULL,
    FOREIGN KEY (ma_hop_dong)
        REFERENCES case_study.hop_dong (ma_hop_dong),
    FOREIGN KEY (ma_dich_vu_di_kem)
        REFERENCES case_study.dich_vu_di_kem (ma_dich_vu_di_kem)
);
