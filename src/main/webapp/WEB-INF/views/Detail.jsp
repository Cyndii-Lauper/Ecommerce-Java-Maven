<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!-- using JSTL -->
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/detail.css">

    

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <section class="flex">
    
<a href="home" class="logo"> <i class="fas fa-shopping-basket"></i> group 6 </a>

    <nav class="navbar">
        <a href="home">Trang chủ</a>
        <a href="home">Tính Năng</a>
        <a href="home">Sản Phẩm</a>
        <a href="home">Danh Mục</a>
        <a href="home">Đánh Giá</a>
        <a href="home">Bài Viết</a>
        <c:if test="${sessionScope.acc.isAdmin == 1}">
            <a href="admin">Admin</a>
        </c:if>
    </nav>

    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
    </div>

    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>

    <div class="shopping-cart">
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="image/cart-img-1.png" alt="">
            <div class="content">
                <h3>Dưa hấu 2kg </h3>
                <span class="price">21.900₫</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="image/cart-img-2.png" alt="">
            <div class="content">
                <h3>Hành Tím  </h3>
                <span class="price">15.000₫</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="image/cart-img-3.png" alt="">
            <div class="content">
                <h3>Gà Công Nghiệp nguyên con 1kg-1.3kg</h3>
                <span class="price">69.000₫</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="total"> tổng :105.900 </div>
        <a href="#" class="btn">checkout</a>
    </div>

    <form action="login" method="post" class="login-form">
        <c:if test="${sessionScope.acc != null}">
            <div class="greetings">
                <p>
                  <i class="fa fa-user"></i>
                  Xin chào, ${sessionScope.acc.user}
                </p>
                <a href="logout" class="btn btn-logout">
                  <i class="fa fa-sign-out"></i>
                  Đăng xuất
                </a>
            </div>
        </c:if>
        <c:if test="${sessionScope.acc == null}">
            <h3>Đăng nhập ngay</h3>
            <input name = "user" type="text" placeholder="your email" class="box">
            <input name = "pass" type="password" placeholder="your password" class="box">
            <p>Quên tài khoản? <a href="#">bấm vào đây</a></p>
            <p>không có tài khoản <a href="signup">đăng ký ngay</a></p>
            <input type="submit" value="login now" class="btn">
        </c:if>
    </form>

    </section>

</header>

<!-- header section ends -->

<div class="home-container">

  <section class="home" id="home">

      <div class="content">
          <h3>SẢN PHẨM  <span>TƯƠI</span> VÀ<span> HỮU CƠ</span> CHO BẠN </h3>
          <p>THỰC PHẨM SẠCH CHO GIA ĐÌNH VIỆT </p>
          <a href="#products" class="btn">Đến Ngay</a>
      </div>
  
  </section>
  
</div>
<!-- body section starts  -->
<div class = "card-wrapper">
  <h1 class="heading">   Chi tiết <span>Sản Phẩm</span> </h1>
  <!-- <form name ="f" action="" method="post"> -->
    <div class = "card">
      <!-- card left -->
      <div class = "product-imgs">
        <div class = "img-display">
          <div class = "img-showcase">
            <img src = ${detail.image} alt = "shoe image">
          </div>
        </div>
      </div>
      <!-- card right -->
      <div class = "product-content">
        <h2 class = "product-title">${detail.name}</h2>
        <a href = "#" class = "product-link">ghé ngay cửa hàng thực phẩm</a>
        <div class = "product-rating">
          <i class = "fas fa-star"></i>
          <i class = "fas fa-star"></i>
          <i class = "fas fa-star"></i>
          <i class = "fas fa-star"></i>
          <i class = "fas fa-star-half-alt"></i>
          <span>4.7(21)</span>
        </div>

        <div class = "product-price">
          <p class = "new-price">Price: <span>${detail.price}.000₫</span></p>
        </div>

        <div class = "product-detail">
          <h2>thông tin về sản phẩm: </h2>
          <p>${detail.description}</p>
          <ul>
            <li>Số lượng: <span>${detail.quantity}</span></li>
            <li>Trạng thái: <span>còn hàng</span></li>
            <li>Giao hàng toàn quốc <span>tất cả mọi nơi trên Việt Nam</span></li>
            <li>Phí giao hàng <span>miễn phí</span></li>
          </ul>
        </div>
        

        <div class = "purchase-info">
          <input type = "number" name ="num" min = "0" value = "1">
          <button type = "button" class = "btn">
            Thêm vào giỏ hàng <i class = "fas fa-shopping-cart"></i>
          </button>
          <button type = "button" class = "btn">So sánh</button>
        </div>

        <div class = "social-links">
          <p>chia sẻ tại: </p>
          <a href = "#">
            <i class = "fab fa-facebook-f"></i>
          </a>
          <a href = "#">
            <i class = "fab fa-twitter"></i>
          </a>
          <a href = "#">
            <i class = "fab fa-instagram"></i>
          </a>
          <a href = "#">
            <i class = "fab fa-whatsapp"></i>
          </a>
          <a href = "#">
            <i class = "fab fa-pinterest"></i>
          </a>
        </div>
      </div>
    </div>
  <!-- </form> -->
  </div>
<!-- body section ends  -->
<hr />
<section class="products" id="products">

  <h1 class="heading"> Một Số <span>Sản Phẩm </span> </h1>

  
  <div class="swiper product-slider">
      
      <div class="swiper-wrapper">
          <c:forEach items = "${listP}" var="p">
          <div class="swiper-slide box">
              <a href="detail?pid=${p.id}">
              <img src= ${p.image} alt="">
              <h3><a href="detail?pid=${p.id}" style="color: black; text-decoration: none;">${p.name}</a></h3>
              <div class="price">${p.price}.000₫</div>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
              </div>
              <a href="addCart?id=${p.id}" class="btn">Thêm vào giỏ</a>
              </a>
          </div>
      </c:forEach>
      </div>
  </div>

</section>

<section class="review" id="review">

  <h1 class="heading">    <span>Đánh Giá </span> </h1>

  <div class="swiper review-slider">

      <div class="swiper-wrapper">

          <div class="swiper-slide box">
              <img src="image/pic-1.png" alt="">
              <p>Sản phẩm chất lượng, tươi xanh giao hàng nhanh chóng </p>
              <h3>Ông 7 hàng xóm </h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
              </div>
          </div>

          <div class="swiper-slide box">
              <img src="image/pic-2.png" alt="">
              <p>Từ lúc mà có cửa hàng này tui không phải thức sớm để đi chợ nữa</p>
              <h3>Cô Tư </h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
              </div>
          </div>

          <div class="swiper-slide box">
              <img src="image/pic-3.png" alt="">
              <p>Giá hợp lý hàng hóa đa dạng có thể thanh toán được nhiều phương thức  </p>
              <h3>Anh Tám </h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
              </div>
          </div>

          <div class="swiper-slide box">
              <img src="image/pic-4.png" alt="">
              <p>Hợp vệ sinh rẻ và rất tươi,shipper thân thiện nhiệt tình </p>
              <h3>Chị Bảy</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
              </div>
          </div>

      </div>

  </div>

</section>
<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3> groco <i class="fas fa-shopping-basket"></i> </h3>
            <p>Thực Phẩm Sạch Cho Gia Đình Việt. Nơi lựa chọn thực phẩm sạch </p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>Thông tin liên hệ</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> PM06@gmail.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> TPHCM GIA DINH</a>
        </div>

        <div class="box">
            <h3>Đường dẫn</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Trang chủ </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Tính năng </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Sản phẩm </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Danh mục </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Đánh giá </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Bài viết </a>
        </div>

        <div class="box">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <input type="email" placeholder="your email" class="email">
            <input type="submit" value="subscribe" class="btn">
            <img src="image/payment.png" class="payment-img" alt="">
        </div>

    </div>

</section>

<!-- footer section ends  -->

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="js/detail.js"></script>

</body>
</html>