<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="icon" type="image/x-icon" href="image/icon/avocado.png">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/allproduct.css">
    <link rel="stylesheet" href="css/header1.css">
    <link rel="stylesheet" href="css/footer.css">

    <!-- 搜尋框放大鏡圖示連結 -->
    <script src="https://kit.fontawesome.com/fd066d1aee.js" crossorigin="anonymous"></script>
    </script>
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
                    <!-- 如果這裡是admin帳號登入的話請將購物車這個li標籤改成：
                    <li class="label">
                        <a href="allorders.html" class="choose">後臺管理</a>
                    </li> -->
                    <li class="label">
                        <!-- 開啟對話框 -->
                        <button onclick="openDialog('login')" class="choose headerbutton">會員資訊</button>
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

                        <!-- 若已登入: -->
                        <!-- 開啟對話框 -->
                        <!-- <button onclick="openDialog('vip')" class="choose headerbutton">會員資訊</button> -->
                        <!-- 對話框內容 -->
                        <!-- <dialog id="vip" class="headerdialog"> 
                            <h2 class="headerh2">會員資訊</h2>
                            <hr class="headerhr">
                            <p class="headerp">查看會員資訊</p>
                            <input type="button" value="會員資訊" class="allbutton" onclick="location.href='member Centre.html'">
                            <hr class="headerhr">
                            <p class="headerp">我想登出</p>
                            <input type="button" value="登出" class="allbutton" onclick="location.href='index.html'">
                        </dialog> -->
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

    <!-- index -->
    <!-- 理念介紹 -->
    <div class="concept">
        <!-- 左邊文字 -->
        <div class="indextextl">
            <p>夜深人靜卻又無法入眠，<br>翻來覆去將心思全都葬於枕下，<br></p>
            <p>想從床邊抓只毛茸茸的玩偶擁抱，<br>卻發現玩偶尺寸已經離歲月太遙遠；<br></p>
            <p>寫日記時想找一捲華麗浪漫的紙膠帶點綴，<br>卻發現手邊只剩幾段泛黃的痕跡；<br></p>
            <p>上個網吧，滑鼠卻叛逆地和桌面無聲競爭，<br>缺了一塊柔順的滑鼠墊子；<br></p>
            <p>於是又回到床上，<br>無眠的同時<br>在瞳孔深處閃爍太陽不經意露出的光……</p>
        </div>
        <!-- 中間圖片 -->
        <div class="titlesec">
            <img src="image/icon/title.png" class="indeximg">
        </div>
        <!-- 右邊文字 -->
        <div class="indextextr">
            <p>那就來永無眠島看看吧<br></p>
            <p>缺少的懷裡的重量、心儀的紙膠帶、<br>順利上網漫遊的滑鼠墊<br></p>
            <p>帶走催眠劑後請勿留步<br></p>
            <p>永無眠島，永遠不熄燈，永遠歡迎你的來訪。</p>
        </div>
    </div>

    <div class="clearfix"></div>

    <!-- 照片輪播 -->
    <div class="outer">
        <!-- 圖片 -->
        <div class="indexcontainer">
            <a href="dolls.html" target="_blank"><img src="image/banner/pinkbunny.jpg"></a>
            <a href="papertapes.html" target="_blank"><img src="image/banner/papertape.jpg"></a>
            <a href="mobile.html" target="_blank"><img src="image/banner/quakka.jpg"></a>
        </div>
        <!-- 左右按鈕 -->
        <div class="shift">
            <div onclick="leftshift()" class="btn left">&lt;</div>
            <div onclick="rightshift()" class="btn right">&gt;</div>
        </div>
    </div>
    
    <script>
        // 顯示的圖片下標
        let index=0;

        function createAuto(){
            return setInterval(()=>{
                index++;
                refresh();
            },3000)
        }

        // 圖片自動滾動
        let AutoTimer=createAuto();

        function refresh(){
            if(index<0){
                // 下標小於0時
                // 設置最右邊的圖片
                index=2;
            }else if(index>2){
                // 下標超過上限時
                // 設置左的圖片
                index=0;
            }
            // 獲取輪播框元素
            let outer = document.querySelector(".outer");
            // 獲取輪播框寬度
            let width=getComputedStyle(outer).width;
            width=Number(width.slice(0,-2));
            console.log(width);

            outer.querySelector(".indexcontainer").style.left=index*width*-1+"px";
        }

        let refreshWrapper = (func) =>{
            //refresh裝飾器
            return function(...args){
                let result = func(...args);
                refresh();

                //重置自動滾動
                clearInterval(AutoTimer);
                autoTimer=createAuto();
                return result;
            }
        }

        let leftshift = refreshWrapper(()=>{
            index--;
        })

        let rightshift = refreshWrapper(()=>{
            index++;
        })

        let setIndex = refreshWrapper(()=>{
            index=idx;
        })
    </script>

    <!-- 銷售排行 -->
    <div class="indextitle">
        <h2>銷售排行</h2>
    </div>
    <div class="card">
        <section>
            <p class="top2">Top 2</p>
            <a href="detailpage.html">
                <img src="image/dolls/avocado.jpg" class="allimg">
            </a>
            <h3>酪梨寶寶</h3>
            <h4>NT $1480</h4>

            <!-- 加入購物車按鈕 -->
            <button onclick="openDialog('infoModal')" class="allbutton"> 加入購物車 </button>

            <!-- 對話框內容 -->
            <dialog id="infoModal"> 
                <p>該商品已加入購物車！<br>可以繼續購物啦！</p>
                <button onclick="closeDialog('infoModal')" class="allbutton">確認</button>
            </dialog>
        </section>
        <section>
            <p class="top1">Top 1</p>
            <a href="detailpage.html">
                <img src="image/dolls/avocado.jpg" class="allimg">
            </a>
            <h3>酪梨寶寶</h3>
            <h4>NT $1480</h4>

            <!-- 加入購物車按鈕 -->
            <button onclick="openDialog('infoModal')" class="allbutton"> 加入購物車 </button>

            <!-- 對話框內容 -->
            <dialog id="infoModal"> 
                <p>該商品已加入購物車！<br>可以繼續購物啦！</p>
                <button onclick="closeDialog('infoModal')" class="allbutton">確認</button>
            </dialog>
        </section>
        <section>
            <p class="top3">Top 3</p>
            <a href="detailpage.html">
                <img src="image/dolls/avocado.jpg" class="allimg">
            </a>
            <h3>酪梨寶寶</h3>
            <h4>NT $1480</h4>

            <!-- 加入購物車按鈕 -->
            <button onclick="openDialog('infoModal')" class="allbutton"> 加入購物車 </button>

            <!-- 對話框內容 -->
            <dialog id="infoModal"> 
                <p>該商品已加入購物車！<br>可以繼續購物啦！</p>
                <button onclick="closeDialog('infoModal')" class="allbutton">確認</button>
            </dialog>
        </section>
        <section>
            <!--回頂端圖件-->
            <a href="#00" class="gotop">
              <img src="image/icon/gotop.png" style="border-radius:50% ;" class="backtop">
            </a>
          </section>
    </div>

    <div class="clearfix"></div>

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