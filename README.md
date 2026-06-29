Đại học Trà Vinh, TRƯỜNG KỸ THUẬT VÀ CÔNG NGHỆ, KHOA CÔNG NGHỆ THÔNG TIN

HỌC KỲ II, NĂM HỌC 2025-2026, XÂY DỰNG HỆ THỐNG HỖ TRỢ TÌM KIẾM VÀ GỢI Ý ĐỊA ĐIỂM ĂN UỐNG TRÊN ĐỊA BÀN TỈNH VĨNH LONG THEO HƯỚNG KẾT HỢP

Giảng viên hướng dẫn: ThS. Võ Thành C

Sinh viên thực hiện: Họ tên: Phạm minh Nhật MSSV : 110122130 Lớp : DA22TTB Email : nhatphamminh683@gmail.com SĐT : 0399836003

🍽️ Vĩnh Long Food Recommendation Website
Website giới thiệu và tìm kiếm quán ăn, nhà hàng ở Vĩnh Long với bản đồ tương tác.

📋 Yêu Cầu Tiên Quyết
PHP 8.0 trở lên
MySQL 5.7+ hoặc MariaDB
XAMPP hoặc WAMP (để chạy Apache + MySQL + PHP)
🚀 Hướng Dẫn Chạy Website
Bước 1: Chuẩn Bị Môi Trường
Khởi động XAMPP
Mở XAMPP Control Panel
Start Apache module
Start MySQL module
Tạo Database
# Mở MySQL Command Line Client hoặc Terminal
mysql -u root -p
Sau đó chạy lệnh SQL:

CREATE DATABASE vinh_long_tourist CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vinh_long_tourist;
SOURCE src/backend/database/vinh-long-tourist.sql;
EXIT;
Ghi chú: Nếu MySQL không có password, bỏ qua password hoặc nhấn Enter

Bước 2: Cấu Hình .env
# Sao chép file cấu hình template
cp .env.example .env
Mở file .env và cập nhật:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=vinh_long_tourist
DB_USERNAME=root
DB_PASSWORD=
Bước 3: Chạy PHP Development Server
Mở Command Prompt/PowerShell tại thư mục dự án:

Mở terminal trong thư mục chứa code (VScode hoặc Kiro,...), sau đó chạy 2 lệnh sau
cd src\Source_code\vinhlong-food-reco

php -S localhost:8000 -t public

Output mong đợi:

Development Server (http://127.0.0.1:8000)
Press Ctrl-C to quit.
Bước 4: Truy Cập Website
Mở trình duyệt web và truy cập:

http://localhost:8000
🎯 Tính Năng Chính
✅ Trang chủ với bản đồ Vĩnh Long
✅ Danh sách quán ăn, nhà hàng
✅ Tìm kiếm và lọc theo danh mục
✅ API để lấy dữ liệu
🔌 Test API
# Lấy tất cả quán ăn
curl http://localhost:8000/api/listings

# Lấy danh mục
curl http://localhost:8000/api/categories

# Kiểm tra trạng thái API
curl http://localhost:8000/api/status
📁 Cấu Trúc Thư Mục
vinhlong-food-reco/
├── app/                      ← Core code của Laravel (Models, Providers...)
├── bootstrap/                ← File khởi động framework
├── config/                   ← Các file cấu hình ứng dụng
├── database/                 ← Chứa Migrations, Seeders (Laravel)
├── public/                   ← Root folder & static assets
│   ├── css/                  ← CSS files
│   ├── images/               ← Image assets
│   ├── js/                   ← JavaScript scripts
│   ├── index.html            ← Trang chủ tĩnh
│   ├── api.php               ← API endpoints tùy chỉnh
│   └── index-laravel.php     ← Entry point của Laravel
├── routes/                   ← Định nghĩa routes của Laravel
├── src/                      ← Thư mục code tùy chỉnh
│   ├── backend/
│   │   ├── controllers/
│   │   ├── database/
│   │   │   └── vinh-long-tourist.sql ← SQL Database Schema
│   │   ├── models/
│   │   └── services/
│   └── frontend/
│       ├── components/
│       └── pages/
├── storage/                  ← Logs, cache, file upload
├── vendor/                   ← Thư viện PHP (Composer)
├── .env.example              ← Cấu hình template
├── .env                      ← Cấu hình thực tế (không commit)
└── README.md
🛠️ Lệnh Hữu Ích
Lệnh	Mô Tả
php -S localhost:8000 -t public/	Chạy web server trên port 8000
php -S localhost:3000 -t public/	Chạy web server trên port 3000
🐛 Xử Lý Lỗi Thường Gặp
"Can't connect to MySQL server"
Kiểm tra MySQL đã start trong XAMPP
Kiểm tra DB_HOST, DB_USERNAME, DB_PASSWORD trong .env
"No such file or directory: src/backend/database/vinh-long-tourist.sql"
Kiểm tra file SQL tồn tại trong thư mục src/backend/database/
Chạy lệnh SQL từ đúng thư mục dự án
Port 8000 đã được sử dụng
Dùng port khác: php -S localhost:3000 -t public/
📱 Ghi Chú
Frontend: HTML5 + CSS3 + Vanilla JavaScript
Backend: PHP với Database MySQL
Maps: Google Maps API
Responsive Design cho mobile, tablet, desktop
Website bây giờ đang chạy tại localhost:8000! 🎉

💡 Tip: Dùng Ctrl+C để dừng server.

🔄 Tải lại trang nếu cập nhật chức năng.
