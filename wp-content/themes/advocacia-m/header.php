<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till #main div
 *
 * @package Odin
 * @since 2.2.0
 */
?><!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
	<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,700" rel="stylesheet">



	<?php if ( ! get_option( 'site_icon' ) ) : ?>
		<link href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.png" rel="shortcut icon" />
	<?php endif; ?>
	<?php wp_head(); ?>
</head>
<script src="<?php echo get_theme_file_uri('/assets/js/accordion.js') ?>"></script>
<body <?php body_class(); ?>>
	<style>
		@font-face{
			font-family: MontserratBlack;
			src: url(<?php echo get_theme_file_uri('/assets/fonts/montserrat-black.ttf') ?>);
			}
		@font-face{
			font-family: Museo700;
			src: url(<?php echo get_theme_file_uri('/assets/fonts/museo700/Museo700.woff') ?>) format('woff'),
			     url(<?php echo get_theme_file_uri('/assets/fonts/museo700/Museo700.woff2') ?>) format('woff2');
		}
		@font-face {
		    font-family: 'Museo300-Regular';
		    src: url('Museo300-Regular-webfont.woff2') format('woff2'),
		         url('Museo300-Regular-webfont.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face{
			font-family: Avenir;
			src: url(<?php echo get_theme_file_uri('/assets/fonts/avenir-light.otf') ?>);
		}



	</style>

	
		

<?php
$titulo = get_the_title(get_the_id());

if ( is_home() ) : ?>
	<header id="header" class="header" role="banner">
		<div class="site-title">
			<a class="site-title__titulo" href="<?php echo site_url('/perfil'); ?>"><h3 class="perfil__titulo--white">Nosso Perfil</h3></a>
			<div></div>
			<h1 class="site-title__imagem">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home">
					<img src="<?php echo get_theme_file_uri('/assets/images/logo-new.jpg'); ?>" title="Voltar para a Página Inicial" alt="Marcos Inácio Advocacia">
				</a>
			</h1>
		</div> <!-- site title -->
	</header>


<?php elseif (is_page('perfil') ): ?>
	<header id="header" class="header  header--page" role="banner">
		<div class="site-title container">
			<h1 class="site-title__imagem">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home">
					<img src="<?php echo get_theme_file_uri('/assets/images/logo-new.jpg'); ?>" title="Voltar para a Página Inicial" alt="Marcos Inácio Advocacia">
				</a>
			</h1>
			<h3 class="perfil__titulo--white">Nosso Perfil</h3>
		</div> <!-- site title -->
	</header>
	
<?php elseif (is_page_template('page-categorias.php') ): ?>
	<header class="header  header--page" role="banner" id="header">
		<div class="site-title container">
			<h1 class="site-title__titulo site-title__titulo--page"><?php echo $titulo; ?></h1>
			<h1 class="site-title__imagem">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home">
					<img src="<?php echo get_theme_file_uri('/assets/images/logo-new.jpg'); ?>" title="Voltar para a Página Inicial" alt="Marcos Inácio Advocacia">
				</a>
			</h1>
		</div> <!-- site title -->
	</header>

<?php else : ?>
	<header class="header  header--page" role="banner" id="header">
		<div class="site-title container">
			<h1 class="site-title__imagem">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home">
					<img src="<?php echo get_theme_file_uri('/assets/images/logo-new.jpg'); ?>" title="Voltar para a Página Inicial" alt="Marcos Inácio Advocacia">
				</a>
			</h1>
			<div></div>
		</div> <!-- site title -->
	</header>
	
	<style>
		.inicial-geral{
			background: url('<?php echo get_theme_file_uri('/assets/images/joaopessoa_interna.jpg'); ?>');
			background-attachment: fixed;
		}
	</style>
	<section <?php if(is_page('cep-result')){ echo 'class="inicial-geral inicial-cep-result"';} else{ echo ' class="inicial-geral"';} ?>>
		<h1 class="inicial-geral__titulo"><?php echo $titulo; ?></h1>
		<?php if(is_page('sala-de-imprensa')) : ?>
			<br>
			<h3>Conteúdos exclusivos para nossos assinantes</h3>
		<?php endif ?>
	</section>

	<?php endif ?>
		