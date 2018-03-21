<?php get_header();
	$home = get_page_by_title('home');
 ?>
 <style>
 	.pagina-principal{
 		background: rgba(0,0,0,.4);
 		background-blend-mode: multiply;
 	}
 	@media only screen and (max-width : 580px) {
 		.video-bg{
			background: url('<?php echo get_theme_file_uri('/assets/images/stock.jpg'); ?>');
			background-size: cover;
 		}
 		video{
 			display: none;
 		}
 	}
 </style>
 	<div class="video-bg">
			<video loop muted autoplay class="video-bg__video" src="<?php echo get_theme_file_uri('/assets/images/time.mp4'); ?>">
			</video>
		</div>
	<section id="content" class="pagina-principal">
		
		<div class="container pagina-principal__flex">
			<h1 class="chamada pagina-principal__chamada pagina-principal__chamada--center">
				<?php the_field('chamada', $home); ?>
			</h1>
			
			<div></div>			
		</div> <!-- container -->
		<div class="container-fluid no-padding">
			<nav class="menu-principal">
				<?php
					$args = array(
					    'menu' => 'Menu Principal',
					    'theme_location' => 'Menu Principal',
					    'container' => false
					);
					wp_nav_menu( $args );
				?> 
			</nav>
		</div> <!-- fluid -->
	</section><!-- #content -->
	<aside class="home__social-icons">
		<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/fb.png') ?>" alt="Facebook" title="Facebook"></a>
		<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/insta.png') ?>" alt="Instagram" title="Instagram"></a>
		<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/in.png') ?>" alt="LinkedIn" title="LinkedIn"></a>
		<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/twitter.png') ?>" alt="Twitter" title="Twitter"></a>
		<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/youtube.png') ?>" alt="Youtube" title="Youtube"></a>
	</aside> <!-- social-icons -->

	<aside class="app">
		
	</aside> <!-- app -->

<?php get_footer(); ?>