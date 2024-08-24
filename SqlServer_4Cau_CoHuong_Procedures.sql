-- 1) Tạo 1 Stored Procedure để xem dữ liệu trong bảng GiANGVIEN
CREATE PROCEDURE xemDuLieuGiangVien
AS 
BEGIN
	SELECT * FROM GiangVien
END
-- Sử dụng Stored Procedures
EXECUTE xemDuLieuGiangVien

--2) Tạo stored procedures để thêm mới giảng viên vào bảng GiangVien
CREATE PROCEDURE themGiangVien
	@teacherID NVARCHAR(10),
	@teacherName NVARCHAR(255),
	@dayOfBirth DATE,
	@gender NVARCHAR(50),
	@address NVARCHAR(255),
	@phoneNumber NVARCHAR(20),
	@falcutyID NVARCHAR(255),
	@positionID NVARCHAR(255)
AS
BEGIN
	INSERT INTO GiangVien(MaGiangVien, TenGiangVien, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaKhoa, MaChucVu)
	VALUES (@teacherID, @teacherName, @dayOfBirth, @gender, @address, @phoneNumber, @falcutyID, @positionID)
	END;

EXECUTE themGiangVien @teacherID='GV012', @teacherName='Van Tu Nguyen', @dayOfBirth='2003-03-01', @gender='Male', @address='Ha Noi City', @phoneNumber='0999999999', @falcutyID='K001', @positionID='CV001';
EXECUTE xemDuLieuGiangVien
-- 3) Tạo Stored Procedure để sửa dữ liệu trên bảng GIANGVIEN
CREATE PROCEDURE updateGiangVien
	@teacherID NVARCHAR(10),
	@teacherName NVARCHAR(255),
	@dayOfBirth DATE,
	@gender NVARCHAR(50),
	@address NVARCHAR(255),
	@phoneNumber NVARCHAR(20),
	@falcutyID NVARCHAR(255),
	@positionID NVARCHAR(255)
AS
BEGIN
	UPDATE GiangVien 
	SET 
	TenGiangVien = @teacherName,
	NgaySinh = @dayOfBirth,
	DiaChi = @address,
	SoDienThoai = @phoneNumber,
	MaKhoa = @falcutyID,
	MaChucVu = @positionID
	WHERE MaGiangVien = @teacherID
END;

--Test update dữ liệu
EXECUTE updateGiangVien @teacherID='GV012', @teacherName='Leonardo Nguyen', @dayOfBirth='2003-03-01', @gender='Male', @address='Viet Tri City', @phoneNumber='0968146590', @falcutyID='K002', @positionID='CV001';
EXECUTE xemDuLieuGiangVien;

--4) Xóa dữ liệu trong bảng GiangVien (xóa theo mã giảng viên)
CREATE PROCEDURE deleteByTeacherID
	@teacherID NVARCHAR(10)
AS
BEGIN
	DELETE FROM GiangVien
	WHERE MaGiangVien=@teacherID;
END;

-- Execute
EXECUTE deleteByTeacherID @teacherID='GV012';
EXECUTE xemDuLieuGiangVien;

--5) Tìm kiếm giảng viên theo tên (Search by name)
CREATE PROCEDURE searchByTeacherName
	@teacherName NVARCHAR(255)
AS
BEGIN
	SELECT *
	FROM GiangVien
	WHERE TenGiangVien LIKE '%' + @teacherName + '%'
END;

--Execute
EXECUTE searchByTeacherName @teacherName='anh';
-- nếu mún tìm kím bằng tiếng việt thì đặt trong ngoặc vuông nghe.
