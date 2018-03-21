<?php
/**
 * Template Name: Categoria
 *
 * The template for displaying pages with sidebar.
 *
 *
 */
 get_header();
 $titulo = get_the_title(get_the_id());
 $categoria = get_page_by_title(get_the_id());
 ?>

<style>
	.perguntas{
		<?php

		$bgCategoria = get_field('bg_categoria');
		 if($bgCategoria) : ?>
		background: url('<?php echo get_field("bg_categoria")?>');
		<?php else : ?>
		background: url('<?php echo get_theme_file_uri("assets/images/perfil-bg.jpg")?>');
		<?php endif; ?>
		background-size: cover;
		background-position: bottom center;
	}
	.flex-juridico__img.fist-img{
		<?php 
		$bgFlexFirst = get_field('bg_flex_first');
		if($bgFlexFirst) :
		 ?>
		background: url('<?php echo get_field("bg_flex_first")["sizes"]["juridico"]; ?>');
		<?php else : ?>
		background: url('<?php echo get_theme_file_uri('/assets/images/juridico-first-img.jpg') ?>');
		<?php endif ?>
		background-size: cover;
	}
	.flex-juridico__img.last-img{
		<?php $bgFlexSecond = get_field('bg_flex_second');
		if($bgFlexSecond) :
		 ?>
		background: url('<?php echo get_field("bg_flex_second")["sizes"]["juridico"]; ?>');
		<?php else : ?>
		background: url('<?php echo get_theme_file_uri('/assets/images/juridico-second-img.jpg') ?>');
		<?php endif ?>
		background-size: cover;
	}
</style>

<section class="perguntas">
		<div class="container-fluid perguntas__bg">
			<div class="container">
				<article class="col-sm-4 perguntar">
					<?php $pergunta = get_field('topico_1');
					 if($pergunta) :  ?>
					<h2 class="perguntar__titulo"><?php the_field('topico_1') ?></h2>
					<?php else : ?>
					<h2 class="perguntar__titulo">Quero refinanciar meus tributos. <br>
					O que fazer?</h2>
					<?php endif; ?>
					<a href="#categoria-perguntas" class="perguntar__button">SAIBA MAIS</a>
				</article>

				<article class="col-sm-4 perguntar">
					<?php $pergunta = get_field('topico_2');
					 if($pergunta) :  ?>
					<h2 class="perguntar__titulo"><?php the_field('topico_2') ?></h2>
					<?php else : ?>
					<h2 class="perguntar__titulo">Preciso de uma Assessoria Jurídica. <br>
					Como contratar?</h2>
					<?php endif; ?>
					<a href="#categoria-perguntas" class="perguntar__button">SAIBA MAIS</a>
				</article>

				<article class="col-sm-4 perguntar perguntar--no-border">
					<?php $pergunta = get_field('topico_2');
					 if($pergunta) :  ?>
					<h2 class="perguntar__titulo"><?php the_field('topico_3') ?></h2>
					<?php else : ?>
					<h2 class="perguntar__titulo">Como fazer o parcelamento <br>
					do Simples Nacional?</h2>
					<?php endif; ?>
					<a href="#categoria-perguntas" class="perguntar__button">SAIBA MAIS</a>
				</article>

			</div> <!-- container -->
		</div> <!-- container fluid -->
	</section> 

		<section class="solucoes-juridicas">
		<div class="container">
			<hgroup class="titulo-subtitulo">
				<h1 class="solucoes-juridicas__titulo titulo">
					Soluções Jurídicas |
				</h1>
				<h2 class="solucoes-juridicas__subtitulo subtitulo subtitulo--middle">
					Conheça algumas delas
				</h2>
			</hgroup>
		</div> <!-- container -->
		<div class="container-fluid no-padding">
			<div class="flex-juridico">
				<div class="flex-juridico__item flex-juridico__img fist-img">
					
				</div> <!-- first img -->
				<div class="flex-juridico__item flex-juridico__gray">
					<h1 class="flex-juridico__titulo">Compliance <br> Corporativa</h1>
				</div> <!-- flex-juridico gray -->
				<div class="flex-juridico__item flex-juridico__white">
					<h1 class="flex-juridico__titulo">Infraestrutura</h1>
				</div> <!-- flex-juridico white -->
				<div class="flex-juridico__item flex-juridico__gray">
					<h1 class="flex-juridico__titulo">Assessoria & <br> Consultoria</h1>
				</div> <!-- flex-juridico gray -->
				<div class="flex-juridico__item flex-juridico__img last-img">
					
				</div>
			</div>
		</div> <!-- container-fluid -->
		</section> <!-- solucoes juridicas -->

		<!-- Conteúdo específico -->
		<section class="direito-conteudo">
		<div class="direito-conteudo__img text-center">
				<img class="direito-conteudo__img--img" src="<?php echo get_field('imagem_sobre', $categoria )['sizes']['direito-conteudo']; ?>" alt="<?php echo get_field('imagem_sobre')['alt']; ?>">
			</div>
		<div class="container">
				<hgroup class="titulo-subtitulo">
					<h1 class="direito-conteudo__titulo titulo">
						Sobre <?php echo $titulo; ?> |
					</h1>
					<h2 class="direito-conteudo__subtitulo subtitulo subtitulo--middle">
						O que é <?php echo $titulo; ?>
					</h2>
				</hgroup>
			<div class="col-sm-6">
				<div class="direito-conteudo__corpo  texto-corpo">
					<?php the_field('direito_conteudo'); ?>
				</div>
			</div>
		</div> <!-- container -->

		</section>

			<section class="noticias container">
				<hgroup class="titulo-subtitulo">
					<h1 class="noticias__titulo titulo">Fique Bem Informado |</h1>
					<h2 class="noticias__subtitulo subtitulo subtitulo--middle">Notícias <?php echo $titulo; ?></h2>
				</hgroup>
				
			
			
				<?php
				$categoria = get_page_by_title(get_the_id());
				$categoriaField = get_field('categoria', $categoria);

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
						while ( $category_query->have_posts() ) : $category_query->the_post();

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

			<!-- <section class="container video">
				<video controls src="<?php echo get_theme_file_uri('/assets/images/time.mp4'); ?>">Seu navegador não suporta esse tipo de vídeo</video>
			</section> video -->

			<section class="publicacoes container">
				<hgroup class="titulo-subtitulo">
					<h1 class="titulo">Material Institucional |</h1>
					<h2 class="subtitulo subtitulo--middle">Teses do <?php echo $titulo ; ?></h2>
				</hgroup>

					<?php 
						$publicacoesArgs = array(
							'category_name' => $categoriaField,
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
							<h1 class="laminas__titulo"><?php the_title(); ?></h1>
						</a>
					</center>
					</article>
				<?php endwhile; wp_reset_query();?>
			</section> <!-- publicações -->
		
		<?php // if(have_rows('perguntas_frequentes')): ?>
			<section class="categoria-perguntas container" id="categoria-perguntas">
				<hgroup class="titulo-subtitulo">
					<h1 class="titulo">Perguntas Frequentes |</h1>
					<h2 class="subtitulo subtitulo--middle"><?php echo $titulo ; ?></h2>
				</hgroup>
		
		<div id="accordion">
		<?php while(have_rows('perguntas_frequentes')) : the_row();  ?>
					<h3 class="pergunta"><?php the_sub_field('pergunta'); ?></h3>
					<div class="resposta">
					    <p>
					    	<?php the_sub_field('resposta'); ?>
					    </p>
					</div> <!-- resposta -->
				
		<?php endwhile; ?>
		</div> <!-- acordeon -->
			</section> <!-- categoria-perguntas -->
		<?php // endif; ?>
<?php
get_footer(); ?>
