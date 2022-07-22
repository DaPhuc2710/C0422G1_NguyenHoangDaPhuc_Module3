use case_study;

--  Câu 2 Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự. --
SELECT 
    nv.ho_ten,
    nv.ngay_sinh,
    nv.so_cmnd,
    nv.luong,
    nv.so_dien_thoai,
    nv.email,
    nv.dia_chi,
    vt.ten_vi_tri,
    td.ten_trinh_do,
    bp.ten_bo_phan
FROM
    nhan_vien nv
        JOIN
    vi_tri vt ON nv.ma_vi_tri = vt.ma_vi_tri
        JOIN
    trinh_do td ON nv.ma_trinh_do = td.ma_trinh_do
        JOIN
    bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
WHERE
    nv.ho_ten REGEXP '^(\\S+(\\s\\S+)*(\\s(H|T|K)\\S+)+)$'
  --   '^(\\S+(\\s\\S+)*(\\s(H|T|K)\\S+)+)$'
        AND CHAR_LENGTH(nv.ho_ten) <= 15;

-- Câu 3 Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
SELECT 
    *
FROM
    khach_hang kh
WHERE
    (kh.dia_chi LIKE '% Đà Nẵng'
        OR kh.dia_chi LIKE '% Quảng Trị')
        AND ((YEAR(CURRENT_DATE()) - YEAR(kh.ngay_sinh)) BETWEEN 18 AND 50);

-- Câu 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
SELECT 
    COUNT(*) AS so_lan_dat, kh.ho_ten
FROM
    khach_hang kh
        JOIN
    loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
        JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
WHERE
    lk.ten_loai_khach LIKE 'Diamond'
GROUP BY kh.ma_khach_hang
ORDER BY so_lan_dat ASC; 

-- Câu 5.Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet)  
-- cho tất cả các khách hàng đã từng đặt phòng. 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    SUM(dv.chi_phi_thue + hdct.so_luong * dvdk.gia) AS tong_tien
FROM
    khach_hang kh
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY kh.ma_khach_hang
ORDER BY kh.ma_khach_hang; 

-- Câu 6.Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của -- 
-- tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3)--

SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        INNER JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        INNER JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            (hd.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31')
                OR (hd.ngay_ket_thuc BETWEEN '2021-01-01' AND '2021-03-31'))
GROUP BY hd.ma_dich_vu;
    
 -- Câu 7.Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả -- 
 -- các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.-- 
 
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        INNER JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        INNER JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            (hd.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-12-31')
                OR (hd.ngay_ket_thuc BETWEEN '2021-01-01' AND '2021-12-31'))
GROUP BY hd.ma_dich_vu;

-- Câu 8.Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- cách 1 --
SELECT DISTINCT
    ho_ten
FROM
    khach_hang;
-- cách 2 --
SELECT 
    ho_ten
FROM
    khach_hang
GROUP BY ho_ten;
-- cách 3 --
SELECT 
    dai_dien.ho_ten
FROM
    (SELECT 
        ho_ten, COUNT(ho_ten) AS dem_so
    FROM
        khach_hang
    GROUP BY ho_ten
    HAVING dem_so > 1) AS dai_dien;

-- Câu 9.Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
-- month (ngay_lam_hop_dong ) 
SELECT 
    MONTH(hd.ngay_lam_hop_dong) AS thang,
    COUNT(hd.ma_hop_dong) AS so_luong_khach_hang
FROM
    hop_dong hd
WHERE
    YEAR(hd.ngay_lam_hop_dong) = 2021
GROUP BY thang
ORDER BY thang;

-- Câu 10.Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.-- 
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem-- 
-- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
SELECT 
    hd.ma_hop_dong,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    hd.tien_dat_coc,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hd.ma_hop_dong;

-- Câu 11.Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có -- 
-- ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”. --
SELECT 
    dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        LEFT JOIN
    hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE
    (lk.ten_loai_khach LIKE 'Diamond')
        AND (kh.dia_chi LIKE '% Vinh'
        OR kh.dia_chi LIKE '% Quảng Ngãi');
-- Câu 12.Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng),-- 
-- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc --
-- của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021
SELECT 
    hd.ma_hop_dong,
    nv.ho_ten,
    kh.ho_ten,
    kh.so_dien_thoai,
    dv.ten_dich_vu,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
FROM
    hop_dong hd
        LEFT JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        LEFT JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    hd.ma_hop_dong IN (SELECT 
            hd.ma_hop_dong
        FROM
            hop_dong hd
        WHERE
            ((MONTH(hd.ngay_lam_hop_dong) BETWEEN 10 AND 12
                OR MONTH(hd.ngay_ket_thuc) BETWEEN 10 AND 12)
                AND (YEAR(hd.ngay_lam_hop_dong) = 2020
                OR YEAR(hd.ngay_ket_thuc) = 2020))
                AND hd.ma_hop_dong NOT IN ((MONTH(hd.ngay_lam_hop_dong) BETWEEN 1 AND 6
                OR MONTH(hd.ngay_ket_thuc) BETWEEN 1 AND 6)
                AND (YEAR(hd.ngay_lam_hop_dong) = 2021
                OR YEAR(hd.ngay_ket_thuc) = 2021)))
GROUP BY hd.ma_hop_dong;
 -- Câu 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY dvdk.ma_dich_vu_di_kem
HAVING so_luong_dich_vu_di_kem >= ALL (SELECT 
        SUM(hdct.so_luong)
    FROM
        hop_dong_chi_tiet hdct
    GROUP BY hdct.ma_dich_vu_di_kem)
ORDER BY hdct.ma_dich_vu_di_kem; 
 -- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
 -- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
SELECT 
    hd.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(dvdk.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM
    hop_dong hd
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
HAVING so_lan_su_dung = 1
ORDER BY hd.ma_hop_dong;

-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi 
-- mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten,
    td.ten_trinh_do,
    bp.ten_bo_phan,
    nv.so_dien_thoai,
    nv.dia_chi
FROM
    nhan_vien nv
        JOIN
    trinh_do td ON nv.ma_trinh_do = td.ma_trinh_do
        JOIN
    bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
        JOIN
    hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
GROUP BY nv.ma_nhan_vien
HAVING COUNT(hd.ma_nhan_vien) <= 3
ORDER BY hd.ma_nhan_vien;

-- Câu 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021. --
set sql_safe_updates = 0;
DELETE FROM nhan_vien 
WHERE
    ma_nhan_vien NOT IN (SELECT 
        hd.ma_nhan_vien
    FROM
        hop_dong hd
    
    WHERE
        YEAR(hd.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);
set sql_safe_updates = 1;
SELECT 
    *
FROM
    nhan_vien;

-- Câu 17.Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 1.000.000 VNĐ. 
set sql_safe_updates =0;
UPDATE khach_hang 
SET 
    ma_loai_khach = 1
WHERE
    ma_khach_hang IN (SELECT 
            temp.ma_khach_hang
        FROM
            (SELECT 
                hd.ma_khach_hang
            FROM
                loai_khach lk
            LEFT JOIN khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
            LEFT JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
            LEFT JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
            LEFT JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
            LEFT JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
            WHERE
                kh.ma_loai_khach = 2 -- them nam 2021
            GROUP BY kh.ma_khach_hang
            HAVING SUM(dv.chi_phi_thue + hdct.so_luong * dvdk.gia) > 1000000
            ORDER BY kh.ma_khach_hang) temp);
set sql_safe_updates =1;
SELECT 
    kh.ma_khach_hang, lk.ten_loai_khach, kh.ho_ten
FROM
    khach_hang kh
        JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
GROUP BY kh.ma_khach_hang;



-- Câu 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
set sql_safe_updates = 0;
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM khach_hang 
WHERE
    ma_khach_hang IN (SELECT 
        hd.ma_khach_hang
    FROM
        hop_dong hd
    
    WHERE
        YEAR(hd.ngay_lam_hop_dong) < 2021);
SET FOREIGN_KEY_CHECKS=1;
set sql_safe_updates = 1;
SELECT 
    *
FROM
    khach_hang;
    
-- Câu 19.Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
set sql_safe_updates = 0;
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            temp.ma_dich_vu_di_kem
        FROM
            (SELECT 
                dvdk.ma_dich_vu_di_kem
            FROM
                hop_dong_chi_tiet hdct
            JOIN hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
            JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
            WHERE
                (YEAR(hd.ngay_lam_hop_dong) = 2020)
            GROUP BY dvdk.ma_dich_vu_di_kem
            HAVING (sum(hdct.so_luong) > 10)) temp);  
set sql_safe_updates = 1;
select * from dich_vu_di_kem;

-- Câu 20.Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, --
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.--

SELECT 
    nv.ma_nhan_vien AS id,
    nv.ho_ten,
    nv.email,
    nv.so_dien_thoai,
    nv.ngay_sinh,
    nv.dia_chi,
    "Nhân viên" as diff
FROM
    nhan_vien nv 
UNION ALL 
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    kh.email,
    kh.so_dien_thoai,
    kh.ngay_sinh,
    kh.dia_chi,
     "Khách hàng" as diff
FROM
    khach_hang kh;


    
    






