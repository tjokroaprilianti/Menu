<?php
	defined('BASEPATH') or exit('No direct script allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Pemesanan</title>
  	
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<style>
		  hr {
		    border-top: 5px solid gray;
			}
	</style>
</head>
<body>
	<!-- carousel-->
	<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
	  <!-- Indicators -->
	  <!-- <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    <li data-target="#myCarousel" data-slide-to="2"></li>
	    <li data-target="#myCarousel" data-slide-to="3"></li>
	  </ol>
 -->
	  <!-- Wrapper for slides -->
	  <!-- <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img class="img-responsive caraousel-img" loading="lazy" src="<?php // echo base_url('asset/makanan/1.jpg')?>" alt="1">
	      <div class="carousel-caption">
	        <h3>Mudah</h3>
	        <p>Lorem ipsum booghore gapsum estrada palakuonium</p>
	      </div>
	    </div>

	    <div class="item">
	      <img class="img-responsive caraousel-img" loading="lazy" src="<?php //echo base_url('asset/makanan/2.jpg')?>" alt="2">
	      <div class="carousel-caption">
	        <h3>Senang</h3>
	        <p>Lorem ipsum booghore gapsum estrada palakuonium</p>
	      </div>
	    </div>

	    <div class="item">
	      <img class="img-responsive caraousel-img" loading="lazy" src="<?php //echo base_url('asset/makanan/3.jpg')?>" alt="3">
	      <div class="carousel-caption">
	        <h3>Nikmat</h3>
	        <p>Lorem ipsum booghore gapsum estrada palakuonium</p>
	      </div>
	    </div>

	    <div class="item">
	      <img class="img-responsive caraousel-img" loading="lazy" src="<?php //echo base_url('asset/makanan/4.jpg')?>" alt="4"><div class="carousel-caption">
	        <h3>Higenis</h3>
	        <p>Lorem ipsum booghore gapsum estrada palakuonium</p>
	      </div>
	    </div>
	  </div> -->

	  <!-- Left and right controls -->
	 <!--  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a> -->
	<!-- </div> -->
	<!-- menu bar -->
	<!-- <div class="container">
		<div class="pull-left">
			<h3>Paket Pesanan</h3>
			<p>Pesan berdasarkan paket, mudah dan lebih hemat.</p>	
		</div>
	</div> -->
	<!-- <div class="container"> -->
		<!--menu contains-->
		<!-- <div class="row">
		  <div class="menu col-xs-6 col-sm-3">
		    <a href="paket-pagi.html">
		      <img class="img-responsive paket" loading="lazy" src="<?php //echo base_url('asset/menu-paket/pagi.png')?>" alt="pagi">
		    </a>
		  </div>
		  <div class="menu col-xs-6 col-sm-3">
		    <a href="paket-siang.html">
		      <img class="img-responsive paket" loading="lazy" src="<?php //echo base_url('asset/menu-paket/siang.png')?>" alt="siang">
		    </a>
		  </div>
		  <div class="menu col-xs-6 col-sm-3">
		    <a href="paket-malam.html">
		      <img class="img-responsive paket" loading="lazy" src="<?php //echo base_url('asset/menu-paket/malam.png')?>" alt="malam">
		    </a>
		  </div>
		  <div class="menu col-xs-6 col-sm-3">
		    <a href="paket-ekonomis.html">
		      <img class="img-responsive paket" loading="lazy" src="<?php //echo base_url('asset/menu-paket/ekonomis.png')?>" alt="ekonomis">
		    </a>
		  </div>
		</div>
    </div> -->
    <!-- menu bar -->
    <center><img class="img-responsive paket" width="100" height="200" loading="lazy" src="<?php echo base_url('asset/logo/Logo Saphire Precious_Black on White.jpg')?>" alt="siang"></center>
	<div class="container">
		<!-- <div class="pull-left"> -->
			<h3 style="text-align:center;"><?php echo $menu[0]->nama_set; ?></h3>
			<hr noshade size=8 width=100% />
			<?php foreach ($menu as $menu): ?>
				<h4 style="height:20px ; text-align:center;"><?php echo $menu->nama_jenis;?></h4>
				<h4 style="height:20px; text-align:center;"><?php echo $menu->nama;?></h4>
				<p class="ket" style="height:70px ; text-align:center; "><?php echo $menu->keterangan;?></p>
			<?php endforeach;?>
			<!-- <p>Pesan sekarang juga!.</p>	 -->
		<!-- </div> -->
		<!-- <div style="padding-bottom:10px" class="pull-right">
			<a href="lihat-menu.html" class="btn btn-warning btn-sm btn-style">Lihat Semua</a>
		</div> -->
	</div>
	
</body>

<script type="text/javascript">
	$( document ).ready(function() {
		var count="<?php echo $count;?>";
		count=Number(count);
		$('#loader').hide();
    	if ($(window).width()<=320) {
    		$(".menu").toggleClass("col-xs-6");
    	}
    	$( "#loadmore" ).click(function() {
    		$("#loadmore").attr('disabled',true);
    		//change this to load more limit
    		$('#loader').show();
    		$.ajax({url: "user_cons/user/load_more_data/"+count+"/12", success: function(result){
    			$('#loader').hide();
            	$("#menulist").append(result);
            	$("#loadmore").attr('disabled',false);
            	if ($(window).width()<=320) {
    				$(".menu").removeClass("col-xs-6");
    			}
        	}});
        	//change this to load more offset
        	count=count+12;
    	});
	});
</script>
</html>