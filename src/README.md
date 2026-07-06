Đại học Trà Vinh, TRƯỜNG KỸ THUẬT VÀ CÔNG NGHỆ, KHOA CÔNG NGHỆ THÔNG TIN

HỌC KỲ II, NĂM HỌC 2025-2026, XÂY DỰNG HỆ THỐNG HỖ TRỢ TÌM KIẾM VÀ GỢI Ý ĐỊA ĐIỂM ĂN UỐNG TRÊN ĐỊA BÀN TỈNH VĨNH LONG THEO HƯỚNG KẾT HỢP

Giảng viên hướng dẫn: ThS. Võ Thành C

Sinh viên thực hiện: Họ tên: Phạm Minh Nhật | MSSV: 110122130 | Lớp: DA22TTB | Email: nhatphamminh683@gmail.com | SĐT: 0399836003


# 🍽️ Vĩnh Long Food Recommendation Website

Website giới thiệu, tìm kiếm và gợi ý địa điểm ăn uống tại Vĩnh Long với bản đồ tương tác.

## 📋 Yêu Cầu Tiên Quyết

- **PHP** 8.0 trở lên
- **MySQL** 5.7+ hoặc **MariaDB**
- **XAMPP** hoặc **WAMP** (để chạy Apache + MySQL)

## 🚀 Hướng Dẫn Chạy Website

### Bước 1: Chuẩn Bị Môi Trường

#### Khởi động XAMPP
- Mở XAMPP Control Panel
- Start **Apache** module
- Start **MySQL** module

#### Tạo Database
```bash
# Mở MySQL Command Line Client hoặc Terminal
mysql -u root -p
```

Sau đó chạy lệnh SQL:
```sql
CREATE DATABASE vinh_long_tourist CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vinh_long_tourist;
SOURCE src/Source_code/vinhlong-food-reco/src/backend/database/vinh-long-tourist.sql;
EXIT;
```

> **Ghi chú:** Nếu MySQL không có password, bỏ qua `password` hoặc nhấn Enter khi được hỏi.

### Bước 2: Cấu Hình Kết Nối Database

Mở file `src/Source_code/vinhlong-food-reco/src/backend/config/database.php` và cập nhật thông tin kết nối:

```php
'host'     => '127.0.0.1',
'port'     => '3306',
'database' => 'vinh_long_tourist',
'username' => 'root',
'password' => '',
```

### Bước 3: Chạy PHP Development Server

Mở terminal tại thư mục dự án và chạy lệnh:

```bash
cd vinhlong-food-reco
php -S localhost:8000 -t public
```

Output mong đợi:
```
Development Server (http://127.0.0.1:8000)
Press Ctrl-C to quit.
```

### Bước 4: Truy Cập Website

Mở trình duyệt và truy cập:
```
http://localhost:8000
```

## 🎯 Tính Năng Chính

- ✅ Trang chủ với bản đồ Vĩnh Long tương tác
- ✅ Danh sách quán ăn, nhà hàng, dịch vụ ẩm thực
- ✅ Tìm kiếm và lọc theo danh mục
- ✅ Gợi ý địa điểm theo sở thích người dùng
- ✅ Trang tin tức du lịch
- ✅ Trang điểm tham quan, lưu trú, phương tiện
- ✅ Quản trị hệ thống (Admin Dashboard)
- ✅ Đăng nhập tài khoản người dùng (hỗ trợ Google Auth)
- ✅ Xem xét và đánh giá địa điểm (Reviews)
- ✅ API để lấy dữ liệu

## 🔌 Test API

```bash
# Lấy danh sách địa điểm
curl http://localhost:8000/api-mysql.php?action=places

# Lấy danh mục
curl http://localhost:8000/api-mysql.php?action=categories

# Lấy tin tức
curl http://localhost:8000/api-mysql.php?action=articles
```

## 📁 Cấu Trúc Thư Mục

```
src/Source_code/
├── vinhlong-food-reco.rar            ← File nén toàn bộ source code
└── vinhlong-food-reco/               ← Thư mục source code chính
    ├── public/                       ← Web root (entry point của server)
    │   ├── css/                      ← CSS toàn ứng dụng
    │   │   ├── app.css               ← CSS chính
    │   │   ├── admin-modern.css      ← CSS trang admin
    │   │   ├── search.css            ← CSS trang tìm kiếm
    │   │   ├── accommodations.css    ← CSS trang lưu trú
    │   │   ├── news.css              ← CSS trang tin tức
    │   │   ├── tours.css             ← CSS trang tour
    │   │   ├── transport.css         ← CSS trang phương tiện
    │   │   ├── weather.css           ← CSS thời tiết
    │   │   ├── atm.css               ← CSS trang ATM
    │   │   ├── gasstation.css        ← CSS trang xăng dầu
    │   │   ├── print.css             ← CSS in ấn
    │   │   └── user-account.css      ← CSS trang tài khoản
    │   ├── js/                       ← JavaScript toàn ứng dụng
    │   │   ├── app.js                ← JS chính
    │   │   ├── config.js             ← Cấu hình chung
    │   │   ├── recommendation.js     ← Logic gợi ý địa điểm
    │   │   ├── search.js             ← Chức năng tìm kiếm
    │   │   ├── data-loader.js        ← Load dữ liệu từ API
    │   │   ├── mysql-loader.js       ← Load dữ liệu từ MySQL
    │   │   ├── api-service.js        ← Gọi API
    │   │   ├── reviews-nearby.js     ← Đánh giá & địa điểm lân cận
    │   │   ├── user-account.js       ← Quản lý tài khoản người dùng
    │   │   ├── google-auth.js        ← Xác thực Google
    │   │   ├── login-integration.js  ← Tích hợp đăng nhập
    │   │   ├── persistent-storage.js ← Lưu trữ dữ liệu local
    │   │   ├── business-moderation.js← Kiểm duyệt địa điểm
    │   │   ├── admin-*.js            ← Các JS trang quản trị
    │   │   ├── atm.js                ← Trang ATM
    │   │   ├── gasstation.js         ← Trang xăng dầu
    │   │   └── transport.js          ← Trang phương tiện
    │   ├── images/                   ← Ảnh tĩnh
    │   │   ├── avatars/              ← Ảnh đại diện người dùng
    │   │   ├── banners/              ← Ảnh banner trang chủ
    │   │   ├── Dichvu/               ← Ảnh dịch vụ (ẩm thực, lưu trú,...)
    │   │   ├── Diemthamquan/         ← Ảnh điểm tham quan
    │   │   ├── Tienich/              ← Ảnh tiện ích
    │   │   ├── news/                 ← Ảnh tin tức
    │   │   └── reviews/              ← Ảnh đánh giá
    │   ├── index.html                ← Trang chủ
    │   ├── api-mysql.php             ← API endpoints (MySQL)
    │   ├── alter_schema.php          ← Công cụ chỉnh sửa schema
    │   ├── check_schema.php          ← Kiểm tra schema DB
    │   └── .htaccess                 ← Cấu hình Apache
    └── src/                          ← Source code phân lớp
        ├── backend/
        │   ├── api/                  ← API Controllers (PHP)
        │   │   ├── AccommodationController.php
        │   │   ├── ArticleController.php
        │   │   ├── CategoryController.php
        │   │   ├── PlaceController.php
        │   │   └── UserController.php
        │   ├── app/                  ← Core application
        │   │   ├── Http/             ← HTTP layer
        │   │   ├── Models/           ← Models (app layer)
        │   │   ├── Providers/        ← Service providers
        │   │   ├── Services/         ← Business logic services
        │   │   └── Database.php      ← Kết nối database
        │   ├── config/               ← Cấu hình ứng dụng
        │   │   ├── database.php      ← Cấu hình DB
        │   │   ├── auth.php          ← Cấu hình xác thực
        │   │   └── ...               ← Các cấu hình khác
        │   ├── controllers/          ← Controllers xử lý logic
        │   │   ├── AccommodationController.php
        │   │   ├── ArticleController.php
        │   │   ├── CategoryController.php
        │   │   ├── PlaceController.php
        │   │   └── UserController.php
        │   ├── database/             ← Dữ liệu & schema
        │   │   ├── vinh-long-tourist.sql    ← SQL Schema chính
        │   │   ├── vinhlong_cuisine_db.sql  ← SQL Schema ẩm thực
        │   │   ├── database.sqlite          ← SQLite (dev/test)
        │   │   ├── migrations/       ← Database migrations
        │   │   ├── seeders/          ← Dữ liệu mẫu
        │   │   └── factories/        ← Data factories
        │   ├── middleware/
        │   │   └── CorsMiddleware.php← Xử lý CORS
        │   ├── models/               ← Models dữ liệu
        │   │   ├── Accommodation.php
        │   │   ├── Article.php
        │   │   ├── Category.php
        │   │   ├── Place.php
        │   │   └── User.php
        │   └── routes/               ← Định nghĩa routes
        │       ├── api.php           ← API routes
        │       ├── web.php           ← Web routes
        │       └── console.php       ← Console routes
        └── frontend/
            ├── pages/                ← Các trang HTML
            │   ├── index.html        ← Trang chủ (dev)
            │   ├── login.html        ← Trang đăng nhập
            │   ├── news.html         ← Trang tin tức
            │   ├── tours.html        ← Trang tour du lịch
            │   └── accommodations.html ← Trang lưu trú
            ├── js/                   ← JavaScript frontend
            │   ├── index.js
            │   ├── login.js
            │   ├── news.js
            │   └── tours.js
            ├── resources/            ← Tài nguyên frontend
            │   ├── css/
            │   └── js/
            ├── admin-dashboard.html  ← Trang quản trị
            ├── admin-dashboard.css
            ├── admin-dashboard.js
            ├── digital-map.html      ← Trang bản đồ số
            ├── digital-map.css
            └── digital-map.js
```

## 🛠️ Lệnh Hữu Ích

| Lệnh | Mô Tả |
|------|-------|
| `php -S localhost:8000 -t public` | Chạy web server trên port 8000 |
| `php -S localhost:3000 -t public` | Chạy web server trên port 3000 |

## 🐛 Xử Lý Lỗi Thường Gặp

### "Can't connect to MySQL server"
- Kiểm tra MySQL đã start trong XAMPP
- Kiểm tra thông tin kết nối trong `src/backend/config/database.php`

### "No such file or directory" khi import SQL
- Đảm bảo file SQL tồn tại tại `src/Source_code/vinhlong-food-reco/src/backend/database/vinh-long-tourist.sql`
- Chạy lệnh SQL từ đúng thư mục gốc của dự án

### Port 8000 đã được sử dụng
- Dùng port khác: `php -S localhost:3000 -t public`

### Lỗi CORS khi gọi API
- Kiểm tra `CorsMiddleware.php` trong `src/backend/middleware/`
- Đảm bảo origin được phép trong cấu hình CORS

## 📱 Công Nghệ Sử Dụng

- **Frontend:** HTML5 + CSS3 + Vanilla JavaScript
- **Backend:** PHP (thuần, không dùng framework)
- **Database:** MySQL / MariaDB (file SQL tại `src/backend/database/`)
- **Maps:** Google Maps API
- **Auth:** Google OAuth tích hợp
- **Design:** Responsive cho mobile, tablet, desktop

---

Website chạy tại `http://localhost:8000` 🎉

**💡 Tip:** Dùng `Ctrl+C` để dừng server.

**🔄 Tải lại trang** nếu cập nhật chức năng.
