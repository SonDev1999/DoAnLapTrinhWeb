<?php
include 'header.php';
if (!empty($_SESSION['current_user'])) {
    $item_per_page = (!empty($_GET['per_page'])) ? $_GET['per_page'] : 7;
    $current_page = (!empty($_GET['page'])) ? $_GET['page'] : 1;
    $offset = ($current_page - 1) * $item_per_page;
    $totalRecords = mysqli_query($con, "SELECT * FROM `user`");
    $totalRecords = $totalRecords->num_rows; ////so 
    $totalPages = ceil($totalRecords / $item_per_page);
    $products = mysqli_query($con, "SELECT * FROM `user` ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
    mysqli_close($con);
    ?>
    <div class="main-content">
        <h1>Danh sách sản phẩm</h1>
        <div class="product-items" >
            <div class="buttons">
                <a href="./register.php">Thêm tài khoản</a>
            </div>
            <ul>
                <li class="product-item-heading">
                <div class="product-prop product-id">ID</div>
                    <div class="product-prop product-img">Trạng Thái</div>
                    <div class="product-prop product-name" style="width: 240px;">Tên người dùng</div>
                    <div class="product-prop product-button">
                        Xóa
                    </div>
                    <div class="product-prop product-button">
                        Sửa
                    </div>
                
                    <div class="product-prop product-time">Ngày tạo</div>
                    <div class="product-prop product-time">Ngày cập nhật</div>
                    <div class="clear-both"></div>
                </li>
                <?php
                while ($row = mysqli_fetch_array($products)) {
                    ?>
                    <li>
                    <div class="product-prop product-id"><?= $row['id'] ?></div>
                        <div class="product-prop product-img"><?= $row['status'] == 1 ? "Kích hoạt" : "Block" ?></div>
                        <div class="product-prop product-name" style="width: 240px;"><?= $row['username'] ?></div>
                        <div class="product-prop product-button">
                            <a href="delete_user.php?id=<?= $row['id'] ?>">Xóa</a>
                        </div>
                        <div class="product-prop product-button">
                            <a href="edit_user.php?id=<?= $row['id'] ?>">Sửa</a>
                        </div>
                  
                        <div class="product-prop product-time"><?= date('d/m/Y H:i', $row['created_time']) ?></div>
                        <div class="product-prop product-time"><?= date('d/m/Y H:i', $row['last_updated']) ?></div>
                        <div class="clear-both"></div>
                    </li>
                <?php } ?>
            </ul>
            <?php
            include './pagination.php';
            ?>
            <div class="clear-both"></div>
        </div>
    </div>
    <?php
}
include './footer.php';
?>