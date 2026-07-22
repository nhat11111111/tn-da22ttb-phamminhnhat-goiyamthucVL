Đại học Trà Vinh, TRƯỜNG KỸ THUẬT VÀ CÔNG NGHỆ, KHOA CÔNG NGHỆ THÔNG TIN

HỌC KỲ II, NĂM HỌC 2025-2026, XÂY DỰNG HỆ THỐNG HỖ TRỢ TÌM KIẾM VÀ GỢI Ý ĐỊA ĐIỂM ĂN UỐNG TRÊN ĐỊA BÀN TỈNH VĨNH LONG THEO HƯỚNG KẾT HỢP

Giảng viên hướng dẫn: ThS. Võ Thành C

Sinh viên thực hiện: Họ tên: Phạm Minh Nhật | MSSV: 110122130 | Lớp: DA22TTB | Email: nhatphamminh683@gmail.com | SĐT: 0399836003

# 🍽️ Hệ Thống Gợi Ý Ẩm Thực Vĩnh Long

Website giới thiệu, tìm kiếm và gợi ý địa điểm ẩm thực, mua sắm, điểm tham quan tại tỉnh Vĩnh Long. Tích hợp bản đồ tương tác, hệ thống đánh giá, gợi ý cá nhân hóa và quản trị nội dung toàn diện.

---

## 📋 Yêu Cầu Môi Trường

| Thành phần | Phiên bản |
|-----------|-----------|
| PHP | 8.0 trở lên |
| MySQL | 5.7+ hoặc MariaDB |
| XAMPP / WAMP | Apache + MySQL |
| Trình duyệt | Chrome, Edge, Firefox (mới nhất) |

---

## 🚀 Hướng Dẫn Cài Đặt & Chạy

### Bước 1: Khởi Động XAMPP

- Mở **XAMPP Control Panel**
- Start module **Apache**
- Start module **MySQL**

---

### Bước 2: Tạo Cơ Sở Dữ Liệu

Mở **phpMyAdmin** (`http://localhost/phpmyadmin`) hoặc MySQL CLI:

```sql
CREATE DATABASE vinhlong_cuisine_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vinhlong_cuisine_db;
SOURCE src/backend/database/vinhlong_cuisine_db.sql;
```

> **Lưu ý:** Nếu MySQL không có mật khẩu, để trống trường password.

---

### Bước 3: Kiểm Tra Cấu Hình Kết Nối

Mở file `public/api-mysql.php`, kiểm tra các thông số sau:

```php
$DB_HOST = '127.0.0.1';
$DB_PORT = 3306;
$DB_NAME = 'vinhlong_cuisine_db';
$DB_USER = 'root';
$DB_PASS = '';
```

---

### Bước 4: Chạy PHP Development Server

Mở terminal tại thư mục gốc dự án (`vinhlong-food-reco/`) và chạy:

```bash
php -S localhost:8000 -t public
```

Kết quả mong đợi:
```
Development Server (http://127.0.0.1:8000)
Press Ctrl-C to quit.
```

---

### Bước 5: Truy Cập Website

```
http://localhost:8000
```

---

## 🎯 Tính Năng Hệ Thống

### 👤 Người Dùng Thông Thường
- Xem danh sách địa điểm ẩm thực, mua sắm, điểm tham quan
- Tìm kiếm và lọc theo khu vực, loại hình, mức giá
- Xem chi tiết địa điểm (ảnh gallery, bản đồ, thông tin liên hệ)
- Đánh giá sao và bình luận địa điểm
- Lưu địa điểm yêu thích
- Gợi ý địa điểm cá nhân hóa dựa theo lịch sử xem
- Gửi phản hồi đến ban quản trị
- Xem tin tức du lịch Vĩnh Long

### 🏪 Chủ Điểm Kinh Doanh
- Tất cả quyền của người dùng thông thường
- Đăng bài viết giới thiệu địa điểm kinh doanh (gửi lên quản trị xét duyệt)
- Chỉnh sửa bài viết đã được duyệt
- Xem trạng thái bài đang chờ duyệt

### 🛡️ Quản Trị Viên (Admin)
- Quản lý toàn bộ địa điểm ẩm thực, mua sắm, điểm tham quan
- Quản lý tin tức (thêm, sửa, xóa)
- Quản lý banner trang chủ
- Quản lý tài khoản người dùng
- Xem và phản hồi phản hồi từ người dùng
- Duyệt / từ chối bài viết từ chủ điểm kinh doanh

### 🗺️ Tiện Ích Du Lịch
- **Bản đồ ẩm thực số**: Leaflet + OpenStreetMap, hiển thị toàn bộ địa điểm ăn uống trên bản đồ, chỉ đường từ vị trí thiết bị qua OSRM, fullscreen
- **Bản đồ ATM**: MBBank, Vietinbank, Sacombank, BIDV, Agribank, Techcombank, ACB, VPBank
- **Bản đồ cây xăng** theo khu vực
- **Thông tin phương tiện** di chuyển
- **Tìm địa điểm gần** vị trí người dùng (GPS, 10km)
- Badge thông báo khi có phản hồi mới

---

## 🔑 Tài Khoản Mặc Định

| Loại | Tên đăng nhập | Mật khẩu | Vai trò |
|------|--------------|----------|---------|
| Admin | `admin123` | `admin123` | Quản trị viên |
| Chủ KD | `nhat1234` | `nhat1234` | Chủ kinh doanh |
| Chủ KD | `nhat123` | `nhat123` | Chủ kinh doanh |
| Người dùng | `long123` | `long123` | Người dùng |
| Người dùng | `nguyenvanan` | `User@1234` | Người dùng |

> Admin đăng nhập qua nút **"Đăng nhập Admin"** ở cuối form đăng nhập.  
> Chủ KD đăng nhập qua nút **"Chủ KD đăng nhập"**.

---

## 🔌 API Endpoints

Tất cả API đều qua file `public/api-mysql.php`:

| Endpoint | Method | Mô tả |
|----------|--------|-------|
| `?endpoint=locations` | GET | Lấy danh sách địa điểm (mặc định `status=approved`) |
| `?endpoint=locations&id={id}` | GET | Chi tiết 1 địa điểm kèm gallery |
| `?endpoint=locations&category={id}` | GET | Lọc theo danh mục (1=ẩm thực, 2=mua sắm, 3=tham quan) |
| `?endpoint=locations&status=pending` | GET | Địa điểm chờ duyệt |
| `?endpoint=locations` | POST | Thêm địa điểm mới |
| `?endpoint=locations&id={id}` | PUT | Cập nhật địa điểm |
| `?endpoint=locations&id={id}` | DELETE | Xóa địa điểm |
| `?endpoint=reviews` | GET/POST | Đánh giá địa điểm |
| `?endpoint=reviews_stats` | GET | Thống kê đánh giá |
| `?endpoint=feedbacks` | GET/POST | Phản hồi người dùng |
| `?endpoint=nearby_coords` | GET | Địa điểm gần tọa độ GPS |
| `?endpoint=popular` | GET | Địa điểm phổ biến |
| `?endpoint=highlight` | GET | Địa điểm nổi bật |
| `?endpoint=login` | POST | Đăng nhập |
| `?endpoint=register` | POST | Đăng ký tài khoản |
| `?endpoint=seed-users` | POST | Khởi tạo dữ liệu tài khoản mẫu |
| `?endpoint=banners` | GET | Banner trang chủ |
| `?endpoint=categories` | GET | Danh mục địa điểm |
| `?endpoint=health` | GET | Kiểm tra trạng thái API |

---

## 📁 Cấu Trúc Thư Mục

```
vinhlong-food-reco/
├── public/                          ← Web root (PHP server trỏ vào đây)
│   ├── index.html                   ← SPA chính (toàn bộ giao diện)
│   ├── api-mysql.php                ← API backend PHP
│   ├── alter_schema.php             ← Công cụ sửa schema DB
│   ├── check_schema.php             ← Kiểm tra schema DB
│   ├── .htaccess                    ← Cấu hình Apache rewrite
│   │
│   ├── css/                         ← Stylesheet
│   │   ├── app.css                  ← CSS chính (toàn bộ giao diện)
│   │   ├── admin-modern.css         ← CSS trang quản trị
│   │   ├── search.css               ← CSS tìm kiếm
│   │   ├── news.css                 ← CSS tin tức
│   │   ├── atm.css                  ← CSS trang ATM
│   │   ├── gasstation.css           ← CSS trang cây xăng
│   │   ├── transport.css            ← CSS phương tiện di chuyển
│   │   ├── accommodations.css       ← CSS lưu trú
│   │   ├── tours.css                ← CSS tour
│   │   ├── user-account.css         ← CSS trang tài khoản
│   │   ├── weather.css              ← CSS thời tiết
│   │   └── print.css                ← CSS in ấn
│   │
│   ├── js/                          ← JavaScript
│   │   ├── app.js                   ← Logic chính: routing, services, attractions
│   │   ├── config.js                ← Cấu hình API
│   │   ├── data_corrected.js        ← Dữ liệu tĩnh (fallback khi DB chưa sẵn sàng)
│   │   ├── digital-map.js           ← Bản đồ ẩm thực số (Leaflet + OSM + OSRM)
│   │   ├── recommendation.js        ← Gợi ý cá nhân hóa, vị trí người dùng
│   │   ├── search.js                ← Chức năng tìm kiếm toàn cục
│   │   ├── mysql-loader.js          ← Load dữ liệu từ MySQL khi khởi động
│   │   ├── data-loader.js           ← Load dữ liệu tĩnh
│   │   ├── api-service.js           ← HTTP client gọi API
│   │   ├── api-services.js          ← API service functions mở rộng
│   │   ├── reviews-nearby.js        ← Đánh giá & địa điểm lân cận
│   │   ├── user-account.js          ← Quản lý tài khoản, hồ sơ, avatar
│   │   ├── login-integration.js     ← Xử lý đăng nhập / đăng ký / Chủ KD
│   │   ├── google-auth.js           ← Xác thực Google OAuth
│   │   ├── persistent-storage.js    ← Lưu trữ dữ liệu offline (localStorage)
│   │   ├── business-moderation.js   ← Đăng & duyệt bài viết Chủ KD
│   │   ├── notification-badge.js    ← Badge thông báo phản hồi
│   │   ├── atm.js                   ← Trang ATM
│   │   ├── gasstation.js            ← Trang cây xăng
│   │   ├── transport.js             ← Trang phương tiện di chuyển
│   │   ├── admin-accounts.js        ← Quản trị tài khoản người dùng
│   │   ├── admin-attractions.js     ← Quản trị điểm tham quan
│   │   ├── admin-banners.js         ← Quản trị banner trang chủ
│   │   ├── admin-feedback.js        ← Quản trị & phản hồi góp ý
│   │   ├── admin-news.js            ← Quản trị tin tức
│   │   ├── admin-services.js        ← Quản trị ẩm thực & mua sắm
│   │   ├── admin-enhance.js         ← Tính năng bổ sung dashboard admin
│   │   └── admin-fix.js             ← Sửa lỗi & patch tương thích
│   │
│   └── images/                      ← Ảnh tĩnh
│       ├── avatars/                 ← Ảnh đại diện người dùng
│       ├── banners/                 ← Ảnh banner trang chủ
│       ├── Dichvu/                  ← Ảnh dịch vụ
│       │   ├── Am thuc/             ← Ảnh ẩm thực (amthuc1–6.jpg/webp)
│       │   ├── Mua sam/             ← Ảnh mua sắm
│       │   └── Luu tru/             ← Ảnh lưu trú
│       ├── Diemthamquan/            ← Ảnh điểm tham quan
│       ├── Tienich/                 ← Logo ngân hàng ATM, icon tiện ích
│       ├── news/                    ← Ảnh bài viết tin tức (new1–10)
│       ├── reviews/                 ← Ảnh đính kèm đánh giá
│       └── placeholder.svg          ← Ảnh mặc định khi không có ảnh
│
└── src/                             ← Source code phân lớp
    ├── backend/
    │   ├── database/
    │   │   ├── vinhlong_cuisine_db.sql   ← 📦 Schema & dữ liệu chính
    │   │   ├── vinh-long-tourist.sql     ← Schema bổ sung
    │   │   ├── migrations/               ← Database migrations
    │   │   └── seeders/                  ← Dữ liệu mẫu
    │   ├── config/
    │   │   └── database.php              ← Cấu hình kết nối DB
    │   ├── controllers/                  ← Controllers PHP
    │   ├── models/                       ← Models dữ liệu
    │   └── routes/                       ← Routes (api.php, web.php)
    └── frontend/
        ├── pages/                        ← HTML trang độc lập (dev)
        └── js/                           ← JS frontend riêng biệt
```

---

## 🗄️ Cơ Sở Dữ Liệu

**Tên DB:** `vinhlong_cuisine_db`

| Bảng | Mô tả |
|------|-------|
| `locations` | Địa điểm (ẩm thực, mua sắm, tham quan). Có cột `status` (pending/approved), `submitted_by` |
| `categories` | Danh mục (1=Ẩm thực, 2=Mua sắm, 3=Điểm tham quan) |
| `districts` | Khu vực / huyện |
| `location_galleries` | Ảnh gallery của từng địa điểm |
| `reviews` | Đánh giá sao và bình luận |
| `users` | Tài khoản người dùng. Cột `role`: user/business/admin |
| `feedbacks` | Phản hồi từ người dùng |
| `banners` | Banner trang chủ |
| `articles` | Tin tức |

---

## 🛠️ Lệnh Hữu Ích

```bash
# Chạy server cổng 8000
php -S localhost:8000 -t public

# Chạy server cổng khác
php -S localhost:3000 -t public

# Kiểm tra trạng thái API
curl http://localhost:8000/api-mysql.php?endpoint=health

# Lấy danh sách địa điểm ẩm thực
curl http://localhost:8000/api-mysql.php?endpoint=locations&category=1

# Seed tài khoản mẫu vào DB
curl -X POST http://localhost:8000/api-mysql.php?endpoint=seed-users
```

---

## 🐛 Xử Lý Lỗi Thường Gặp

### "Can't connect to MySQL server"
- Kiểm tra MySQL đã Start trong XAMPP
- Xác nhận `$DB_NAME = 'vinhlong_cuisine_db'` trong `public/api-mysql.php`

### Trang dịch vụ hiển thị "Đang tải dữ liệu"
- Hệ thống sẽ tự động dùng dữ liệu tĩnh (`data_corrected.js`) nếu DB chưa kết nối
- Mở DevTools (F12) → Console để xem log `[API]` hoặc `[STATIC]`
- Kiểm tra `http://localhost:8000/api-mysql.php?endpoint=health`

### Bản đồ ẩm thực không hiển thị
- Kiểm tra Leaflet CSS/JS đã load (`cdnjs.cloudflare.com`)
- Đảm bảo `#googleMap` có height trong CSS

### Port 8000 bị chiếm
- Dùng port khác: `php -S localhost:3000 -t public`

### Badge thông báo không hiện
- Kiểm tra trạng thái đăng nhập (localStorage `isLoggedIn`)
- Badge chỉ hiện với đúng loại tài khoản (admin / user đã nhận reply)

---

## 📱 Công Nghệ Sử Dụng

| Thành phần | Công nghệ |
|-----------|-----------|
| Frontend | HTML5, CSS3, Vanilla JavaScript (SPA) |
| Backend | PHP 8+ thuần (không framework) |
| Database | MySQL / MariaDB (`vinhlong_cuisine_db`) |
| Bản đồ ẩm thực | Leaflet.js + OpenStreetMap (không cần API key) |
| Chỉ đường | OSRM (Open Source Routing Machine, free) |
| Bản đồ tiện ích | Google Maps Embed (iframe, không cần key) |
| Xác thực | Google OAuth 2.0 + hệ thống nội bộ |
| Lưu trữ | MySQL (vĩnh viễn) + localStorage (offline) |
| Thiết kế | Responsive — mobile, tablet, desktop |

---

## 👨‍💻 Thông Tin Tác Giả

- **Sinh viên:** Phạm Minh Nhật  
- **Mã số SV:** DA22TTB  
- **Đề tài:** Hệ thống gợi ý ẩm thực Vĩnh Long  
- **Trường:** Trường Đại học Trà Vinh  

---

> Website chạy tại `http://localhost:8000` 🎉
>
> **💡 Tip:** Dùng `Ctrl+C` để dừng PHP server.  
> Nhấn `F5` để tải lại trang sau khi cập nhật code.
