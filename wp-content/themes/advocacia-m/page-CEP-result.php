<?php
/**
 * Template Name: CEP-result
 *
 * The template for displaying pages with sidebar.
 *
 *
 */
 get_header(); ?>
<section class="cep-result container">
	<div id="conteudo1">
	</div>
</section>
<script src="https://code.jquery.com/jquery-git.js"></script>
<script src="<?php echo get_theme_file_uri('/inc/teste-cep/tratamentoCEP.js'); ?>"></script>
<script src="<?php echo get_theme_file_uri('/inc/teste-cep/enderecoProximo.js'); ?>"></script>


<?php get_footer(); ?>