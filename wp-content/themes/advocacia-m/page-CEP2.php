<?php 
/**
 * Template Name: CEP
 *
 * The template for displaying pages with sidebar.
 *
 *
 */
get_header(); ?>
<script src="<?php echo get_theme_file_uri('/inc/teste-cep/tratamentoCEP.js') ?>"></script>
<div class="container cep">
  <h1 class="cep__titulo titulo titulo-subtitulo">Digite seu CEP</h1>
  <p class="cep__instrucoes">Digite o CEP sem caractéres especiais para encontrarmos o escritório mais próximo de você</p>
  <div id="entrada">
    <input id="selecao" class="cep__input" type="text" name="cep" maxlength="8" OnKeyPress="formatar('00000000', this)" placeholder="Digite seu CEP">
    <input id="botao" class="button cep__button" type="submit" value="Ir">
    <br>
      <div id="resposta"></div>
  </div> <!-- entrada -->
</div> <!-- container cep -->

<?php get_footer(); ?>