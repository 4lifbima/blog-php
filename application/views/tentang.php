<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php require_once('header.php'); ?>
<!-- Page Content -->
<div class="container">
  <div class="row">
    <!-- Blog Entries Column -->
    <div align="center" class="col-md-8">
      <br><br><br>
      <h1 class="text" >
      About
      </h1>
      <hr>
      <?php foreach ($tentang as $row) : ?>
      <img style=" border-radius: 50%;" src="<?php echo base_url().$row['img_tent']?>" alt="Bahyu Sanciko" width="200" height="200" class="rounded-circle shadow"><h1><?php echo $row['nama_tent']?></h1>
      <p><?php echo $row['desc_tent']?></p>
      <li class="list-inline-item"><a href="https://www.facebook.com/bahyusanciko" target="_blank"><i class="fa fa-facebook"></i></a></li>
      <li class="list-inline-item"><a href="https://twitter.com/bhysnck" target="_blank"><i class="fa fa-twitter"></i></a></li>
      <li class="list-inline-item"><a href="http://www.instagram.com/bahyusanciko/?hl=id/" target="_blank"><i class="fa fa-instagram"></i></a></li>
      <li class="list-inline-item"><a href="https://github.com/bahyusanciko/" target="_blank"><i class="fa fa-github"></i></a></li>
      <li class="list-inline-item"><a href="https://www.linkedin.com/in/bahyu-sanciko-a52654150/" target="_blank"><i class="fa fa-linkedin"></i></a></li>
      <!-- Pager -->
      <ul class="pager">
      </ul>
    </div>
    <?php endforeach; ?>
    <aside class="col-lg-4">
      <!-- Widget [Search Bar Widget]-->
      <div class="widget search">
        <header>
          <h3 class="h6">Search the blog</h3>
        </header>
        <form action="<?php echo base_url('home/search/')?>" method="get" class="search-form">
          <div class="form-group">
            <input type="text" name="keyword" placeholder="What are you looking for?">
            <button type="submit" class="submit"><i class="icon-search"></i></button>
          </div>
        </form>
      </div>
      <!-- Widget [Categories Widget]-->
      <div class="widget categories">
        <header>
          <h3 class="h6">Categories</h3>
        </header>
       <?php foreach ($katagori as $row) : ?>
            <div class="item d-flex justify-content-between"><a href="<?php echo base_url('home/katagori/'.$row['category'])?>"><?php echo $row['category'] ?></a><span></span></div>
            <?php endforeach; ?>
      </div>
    </aside>
  </div>
</div>
<?php require_once('footer.php'); ?>