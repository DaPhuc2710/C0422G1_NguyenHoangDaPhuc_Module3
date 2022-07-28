DROP DATABASE IF EXISTS don_dh;
CREATE DATABASE don_dh;
USE don_dh;
CREATE TABLE phieu_xuat (
    so_PX INT AUTO_INCREMENT PRIMARY KEY,
    ngay_xuat DATETIME
);

CREATE TABLE phieu_nhap (
    so_PN INT AUTO_INCREMENT PRIMARY KEY,
    ngay_nhap DATETIME
);

CREATE TABLE vat_tu (
    ma_VTU INT AUTO_INCREMENT PRIMARY KEY,
    ten_VTU VARCHAR(50)
);

CREATE TABLE phieu_xuat_vat_tu (
    so_PX INT,
    ma_VTU INT,
    PRIMARY KEY (so_PX , ma_VTU),
    dg_xuat VARCHAR(20),
    sl_xuat INT,
    FOREIGN KEY (so_PX)
        REFERENCES phieu_xuat (so_PX),
    FOREIGN KEY (ma_VTU)
        REFERENCES vat_tu (ma_VTU)
);

CREATE TABLE phieu_nhap_vat_tu (
    so_PN INT,
    ma_VTU INT,
    PRIMARY KEY (so_PN , ma_VTU),
    dg_nhap VARCHAR(20),
    sl_nhap INT,
    FOREIGN KEY (so_PN)
        REFERENCES phieu_nhap (so_PN),
    FOREIGN KEY (ma_VTU)
        REFERENCES vat_tu (ma_VTU)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY AUTO_INCREMENT,
    ten_nha_cung_cap VARCHAR(45),
    dia_chi VARCHAR(50),
    sdt VARCHAR(10) NOT NULL
);

CREATE TABLE sdt_nha_cung_cap (
    sdt VARCHAR(10) NOT NULL PRIMARY KEY,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
);

CREATE TABLE don_dh (
    so_DH INT PRIMARY KEY,
    ngay_DH DATETIME,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE vat_tu_don_dh (
    so_DH INT,
    ma_nha_cung_cap INT,
    FOREIGN KEY (so_DH)
        REFERENCES don_dh (so_DH),
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);
