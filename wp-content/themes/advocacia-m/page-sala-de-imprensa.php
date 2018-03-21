<?php

 get_header();
 $titulo = get_the_title(get_the_id());
 $categoria = get_page_by_title(get_the_id());
 ?>

	
	<?php
	$categoria = get_page_by_title(get_the_id());
	$categoriaField = 'secreto';

	$categoriaArgs = array(
		'category_name' => $categoriaField,
		'post_type' => 'post',
		'posts_per_page'=> 3,
		'offset' => 1,
	);
	$RecentArgs = array(
		'category_name' => $categoriaField,
		'post_type' => 'post',
		'posts_per_page' => 1,
	);
	
	// QUERY DO POST RECENTE
	$recent_query = new WP_Query($RecentArgs);

	if($recent_query->have_posts()) : ?>
	<section class="noticias container">
		<hgroup class="titulo-subtitulo">
		<h1 class="noticias__titulo titulo">Material Exclusivo |</h1>
		</hgroup>
	<?php 
	while ( $recent_query->have_posts() ) : $recent_query->the_post();

			/*
			 * Include the post format-specific template for the content. If you want to
			 * use this in a child theme, then include a file called called content-___.php
			 * (where ___ is the post format) and that will be used instead.
			 */
			get_template_part( 'content-recent');

			endwhile;

			// Page navigation.
			odin_paging_nav();


	wp_reset_query(); 

	// QUERY DOS POSTS NORMAIS
	$category_query = new WP_Query($categoriaArgs);
			// Start the Loop.
			while ( $category_query->have_posts() ) : $category_query->the_post(); //WHILE DE NOTICIAS

			/*
			 * Include the post format-specific template for the content. If you want to
			 * use this in a child theme, then include a file called called content-___.php
			 * (where ___ is the post format) and that will be used instead.
			 */ ?>
			 	<div class="col-md-6">
			<?php 
			get_template_part( 'content-categorias'); ?>
			</div>
			<?php 

			endwhile;

			// Page navigation.
			odin_paging_nav();

		wp_reset_query();
	?>

</section> <!-- noticias -->
<?php endif //FIM DO CONDICIONAL DE NOTICIAS ?>
		
		<?php 
			$fotografiaArgs = array(
				'post_type' => 'fotos',
				'post_per_page' => -1,
			);

			$fotografiaQuery = new WP_Query($fotografiaArgs);

			if($fotografiaQuery->have_posts()) : ?>
				<section class="publicacoes container">
					<hgroup class="titulo-subtitulo">
						<h1 class="titulo">Fotografias para assinantes |</h1>
					</hgroup>
			<?php
			while ( $fotografiaQuery->have_posts() ) : $fotografiaQuery->the_post(); //WHILE DE FOTOS
		 ?>
		 <article class="col-xs-12">
			<?php 
			$images = get_field('galeria_secreta');
			foreach( $images as $image ): ?>
			<div class="col-md-4">
                <a href="<?php echo $image['url']; ?>">
                     <img src="<?php echo $image['sizes']['gallery']; ?>" alt="<?php echo $image['alt']; ?>" />
                </a>
                <p><?php echo $image['caption']; ?></p>
			</div>
        <?php endforeach; ?>
        </article>
			
		<?php endwhile;?>
	</section><!--  fim do section de fotos -->
		<?php endif; ?>
			

		<?php 
			$publicacoesArgs = array(
				'category_name' => $categoriaField,
				'post_type' => 'publicacoes',
				'post_per_page' => 6,
			);

			$publicacoes_query = new WP_Query($publicacoesArgs);

			if($publicacoes_query->have_posts()) : ?>
				<section class="publicacoes container">
					<hgroup class="titulo-subtitulo">
						<h1 class="titulo">Artigos |</h1>
					</hgroup>
			<?php
			while ( $publicacoes_query->have_posts() ) : $publicacoes_query->the_post(); //WHILE DE ARTIGOS
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

<?php endif; //FIM DO CONDICIONAL DE ARTIGOS
get_footer(); ?>
