<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>backstage</title>
    <link rel="icon" type="image/x-icon" href="image/icon/avocado.png">
    <link rel="stylesheet" href="css/backstage.css">
    <link rel="stylesheet" href="css/allproduct.css">
    <link rel="stylesheet" href="css/header1.css">
    <link rel="stylesheet" href="css/footer.css">
    <!-- 搜尋框放大鏡圖示連結 -->
    <script src="https://kit.fontawesome.com/fd066d1aee.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- scrip -->
    <script>
        function openDialog(dialogId) {
            var dialog = document.getElementById(dialogId);
            dialog.showModal();
        }

        function closeDialog(dialogId) {
            var dialog = document.getElementById(dialogId);
            dialog.close();
        }
    </script>

    <!-- header -->
    <header id="00">
        <!-- 左邊logo -->
        <div>
            <a href="index.html" class="logo">
                <img src="image/icon/title.png" class="headerimg">
            </a>
        </div>

        <!-- 超連結標籤 -->
        <nav class="headernav">
            <div>
                <ul class="headerul">
                    <li class="label">
                        <select name="select" class="selectbar" onchange="javascript:location.href=this.value;">
                            <option class="headeroption" value="#">商品類別</option>
                            <option class="headeroption" value="allproduct.html">所有商品</option>
                            <option class="headeroption" value="dolls.html">大型玩偶</option>
                            <option class="headeroption" value="papertapes.html">紙膠帶</option>
                            <option class="headeroption" value="mobile.html">智慧型產品周邊</option>
                        </select>
                    </li>
                    <li class="label">
                        <a href="aboutus.html" class="choose">關於我們</a>
                    </li>
                    <li class="label">
                        <a href="qa.html" class="choose">常見問題</a>
                    </li>
                    <li class="label">
                        <a href="cart.html" class="choose">購物車</a>
                    </li>
                    <li class="label">
                        <!-- 開啟對話框 -->
                        <button onclick="openDialog('login')" class="choose headerbutton">會員中心</button>
                        <!-- 對話框內容 -->
                        <dialog id="login" class="headerdialog"> 
                            <h2 class="headerh2">登入／註冊</h2>
                            <hr class="headerhr">
                            <p class="headerp">已有帳號，立即登入！</p>
                            <input type="button" value="登入" class="allbutton" onclick="location.href='login.html'">
                            <hr class="headerhr">
                            <p class="headerp">還沒有帳號嗎？立即註冊！</p>
                            <input type="button" value="註冊" class="allbutton" onclick="location.href='register.html'">
                            <hr class="headerhr">
                            <button onclick="closeDialog('login')" class="headerin">訪客模式</button>
                        </dialog>
                    </li>
                </ul>
            </div>

            <!-- 搜尋欄 -->
            <div class="wrap">
                <div class="search">
                    <input class="searchbar" type="text" name="search" id="search" placeholder=" Search for something?">
                    <button class="searchbtn"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </div>
        </nav>
    </header>

    <!-- 後台 -->
    <div class="title">
        <h1 class="backstageh1">後台</h1>
        <br>
    </div>
    <main>
        <!--新增商品-->
        <section class="part2">
            <p style="font-size: 25px; text-align:center; font-weight:bold">新增商品</p>
            <br>
            <div class="txt">
                <p><font size="4">上傳圖片:</font></p>
            </div>
            <form class="filebutton" id="myform" method="" action="" enctype="multipart/form-data">
                <input class="file" type="file" id="profile_pic" name="profile_pic" accept=".jpg, .jpeg, .png" select size="5">
                <br>
                <input type="submit">
            </form>  
            <br>
            <div class="txt">
                <p>
                    <font size="4">商品類別: </font><br>
                    <select size="1" name="sort" class="area">
                        <option>大型玩偶</option>
                        <option>紙膠帶</option>
                        <option>智慧型產品周邊</option>
                    </select>
                </p>
            </div>
            <br>
            <div class="txt">
                <p>
                    <font size="4">商品名稱: </font><br>
                    <input class="area" type="text" style="font-size: 20px;" required="required"; placeholder="Goods name">
                </p>
            </div>
            <br>
            <div class="txt">
                <p>
                    <font size="4">商品價格: </font><br>
                    <input class="area" type="tel" style="font-size: 20px;" ; required="required"; placeholder="Price" value="$">
                </p>
            </div>
            <br>
            <div class="txt">
                <p>
                    <font size="4">商品介紹: </font><br>
                    <input class="area" type="email" style="font-size: 20px;" ; required="required"; placeholder="Introduction">
                </p>
            </div>
            <br>
            <div class="txt">
                <p>
                    <font size="4">商品庫存數量: </font><br>
                    <input class="area" type="text" style="font-size: 20px;"; required="required"; placeholder="Amount">
                </p>
            </div>
            <br>
            <div style="margin-top: 10px; text-align:center;">
                <button class="savebutton" type="submit">
                儲存商品
                </button>
            </div>
        </section>
        <br>
        <br>
        <section class="part3">
            <div style="margin-top: 10px; text-align:center;">
                <button class="button2" type="button" onclick="javascript:location.href='allgoods.html'">
                 <p style="color: white;">查看已有商品</p>
                </button>
            </div>
        </section>
        <section class="part3" id="finish">
            <div style="margin-top: 10px; text-align:center;">
                <button class="replybutton" type="button" onclick="javascript:location.href='allorders.html'">
                前往查看訂單
                </button>
            </div>
        </section>
        <section>
            <!--回頂端圖件-->
            <a href="#00" class="gotop">
              <img src="image/icon/gotop.png" style="border-radius:50% ;" class="backtop">
            </a>
          </section>
    </main>
    
    <!-- footer -->
    <footer>
        <h5 class="footerh5">
            ©neversleepiland 2023<br>
            瀏覽人數：100人<br>
            <a href="aboutus.html" target="_blank">about us</a> | <a href="qa.html" target="_blank">Q&A</a>
        </h5>
    </footer>
</body>
</html>