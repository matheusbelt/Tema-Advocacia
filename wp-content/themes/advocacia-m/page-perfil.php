<?php
/**
 * Template Name: Perfil
 *
 * The template for displaying pages with sidebar.
 *
 *
 */
$perfil = get_page_by_title('perfil');
get_header();
?>
<style>
	.perfil__bg{
		background: url('<?php echo get_theme_file_uri("/assets/images/computer.jpg") ?>');
		background-size: cover;
		background-position: bottom; 
	}
</style>
<div class="perfil__bg"></div>
<section class="perfil container text-center">
</section><!--  perfil -->
<div class="container-fluid no-padding perfil__menu">
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
<section class="perfil-corpo container">
		<div class="col-sm-4 perfil-ideais">
			<div class="perfil-corpo__ideais text-center">
				<h3>MISSÃO</h3>
				<p>Oferecer assistência jurídica especializada, focada em resultados, comprometida com a excelência, o pensamento criativo, a inovação tecnológica, sempre no objetivo de superar as expectativas de cada cliente.</p>
			</div>
		</div>
		<div class="col-sm-4 perfil-ideais">
			<div class="perfil-corpo__ideais text-center">
				<h3>VISÃO</h3>
				<p>Ser um escritório de abrangência nacional, admirado por sua equipe, clientes e parceiros pela performance e entrega de resultados, apreço pela qualidade e o respeito a todos.</p>
			</div>
		</div>
		<div class="col-sm-4 perfil-ideais">
			<div class=" perfil-corpo__ideais perfil-corpo__ideais--valores">
				<h3>VALORES</h3>
				<ul>
					<li>Ser equipe</li>
					<li>Ética e respeito</li>
					<li>Dividir é fortalecer</li>
					<li>Humildade</li>
					<li>Compromisso com a qualidade</li>
					<li>Atitude de dono do negócio</li>
				</ul>
			</div>
		</div>
		<div class="row"></div>

		<div class="perfil-corpo__field  texto-corpo">
			<?php the_field('perfil', $perfil) ?>
		</div>
		
</section>
<!-- <section class="container video">
	<video controls src="<?php echo get_theme_file_uri('/assets/images/time.mp4'); ?>">Seu navegador não suporta esse tipo de vídeo</video>
</section> video -->

<section class="publicacoes container">
	<h1 class="publicacoes__titulo titulo-subtitulo">
		Material Institucional
	</h1>

	<?php 
		$publicacoesArgs = array(
			'post_type' => 'publicacoes',
			'post_per_page' => 6,
		);
		$publicacoes_query = new WP_Query($publicacoesArgs);

		while ( $publicacoes_query->have_posts() ) : $publicacoes_query->the_post();
	 ?>
	<article class="col-sm-4 col-xs-6 laminas">
		<center>
		<a href="<?php the_field('arquivo_pdf'); ?>" download target='_blank'>
			<img src="<?php echo get_theme_file_uri('/assets/images/publicacoes.png') ?>" alt="Publicação <?php the_title(); ?>" title="Publicação <?php the_title(); ?>">
			<p class="laminas__titulo laminas__titulo--small"><small>Lâminas</small></p>
			<h1 class="laminas__titulo"><?php the_title(); ?></h1>
		</a>
	</center>
	</article>
	<?php endwhile; wp_reset_query();?>
</section> <!-- publicações -->


<?php
get_footer(); ?>