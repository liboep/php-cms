<nav class="menu">
    <ol>
        <div class="item">
            <a class="remoutl" href="./index.php" >  
                <img src=".\css\images\save-animals-logo.png" alt=""/>
            </a>  
        </div>
        <li class="menu-item"><a href="#0">About</a></li>
        <li class="menu-item">
        <a href="#0">Animals</a>
        <ol class="sub-menu">
            <?php
                $query = "SELECT * FROM categories";
                $select_all_categories_query = mysqli_query($connection, $query);

                while($row = mysqli_fetch_assoc($select_all_categories_query)){
                    $cat_title = $row['cat_title'];
                    echo "<li class='menu-item'><a href='#0'>$cat_title</a></li>";
                }
            ?>
        </ol>
        </li>
        <li class="menu-item"><a href="/cms/admin">Admin</a></li>
    </ol>
</nav>