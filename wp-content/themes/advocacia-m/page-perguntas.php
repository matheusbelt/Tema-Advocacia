<?php 
/**
 * Template Name: Perguntas
 *
 * The template for displaying pages with sidebar.
 *
 *
 */
get_header(); ?>

	<section class="container perguntas-frequentes">
		<h1 class="titulo perguntas-frequentes__titulo">Perguntas Frequentes</h1>
		<div id="accordion">
		<?php if(have_rows('perguntas')): while(have_rows('perguntas')) : the_row(); ?>
			
		  <h3 class="pergunta"><?php the_sub_field('titulo_pergunta'); ?></h3><!-- pergunta -->
		  <div class="resposta">
		    <p>
		    	<?php the_sub_field('resposta'); ?>
		    </p>
		  </div> <!-- resposta -->

		  <?php endwhile; endif?>
		</div> <!-- acordeon -->
	</section> <!-- container -->

<?php
get_footer();
