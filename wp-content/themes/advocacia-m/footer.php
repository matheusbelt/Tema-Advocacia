<?php
/**
 * The template for displaying the footer.
 *
 * Contains footer content and the closing of the
 * #main div element.
 *
 * @package Odin
 * @since 2.2.0
 */
$home = get_page_by_title('home');
?>


	<footer id="footer" role="contentinfo" class="col-xs-12 no-padding">
	<?php if(is_home()): ?>

	<?php else :?>

		<section class="informacoes container-fluid">
			<div class="container">
				<article class="col-md-4 informacoes__single">
					<div class="svg-align"><?php include(TEMPLATEPATH . '/inc/svg/svg-place.php'); ?></div>
					<h3>Conheça nossas unidades. <br> Estamos sempre perto de você</h3>
					<p><?php the_field('texto_endereco', $home); ?></p>
				</article> <!-- informaçoes__single -->

				<article class="col-md-4 informacoes__single">
					<div class="svg-align"><?php include(TEMPLATEPATH . '/inc/svg/svg-chat.php'); ?></div>
					<h3>NOSSOS CANAIS DE ATENDIMENTO</h3>
					<p><?php the_field('texto_atendimento', $home); ?></p>
				</article> <!-- informaçoes__single -->

				<article class="col-md-4 informacoes__single">
					<div class="col-xs-12 svg-peaple">
						<center>
							<div class="svg-align"><?php include(TEMPLATEPATH . '/inc/svg/svg-peaple.php'); ?></div>
						</center>
					</div>
					<div class="row"></div>
					<h3>EQUIPE JURÍDICA</h3>
					<p><?php the_field('texto_equipe', $home); ?></p>
				</article> <!-- informaçoes__single -->
		</div> <!-- container -->
		</section><!--  informaçoes -->

		<section class="contato container-fluid">
			<div class="container">
				<article class="col-md-4 contato__single">
					<h3><?php include(TEMPLATEPATH . '/inc/svg/svg-phone.php'); ?>NOSSO TELEFONE</h3>
					<p>4004-5010</p>
				</article> <!-- contato__single -->

				<article class="col-md-4 contato__single contato__single--right">
					<h3><?php include(TEMPLATEPATH . '/inc/svg/svg-email.php'); ?>OUVIDORIA</h3>
					<p>ouvidoria@advocacia.adv.br</p>
				</article> <!-- contato__single -->

				<article class="col-md-4 contato__single contato__single--right contato__single--no-border">
					<h3><?php include(TEMPLATEPATH . '/inc/svg/svg-time.php'); ?>NOSSOS HORÁRIOS</h3>
					<p>Segunda a Sexta, das 07h30 às 17h30</p>
				</article> <!-- contato__single -->
		</div> <!-- container -->
		</section> <!-- contato -->

		<section class="mapa-site container-fluid">
			<div class="container">
				<article class="col-md-3 col-sm-6 col-xs-12 mapa-site__newsletter">
					<h4>CADASTRE-SE PARA RECEBER NOTÍCIAS EXCLUSIVAS</h4>
					<p><a href="<?php echo site_url('/newsletter'); ?>" class="button btn button-footer">Cadastre-se</a></p>

				</article> <!-- newsletter -->
				<article class=" col-sm-3 mapa-site__menu">
						<h4>TAMBÉM NO SITE</h4>
						<nav>
							<?php 
								$menuArgs = array(
									'menu' => 'Mini Menu',
	                    			'theme_location' => 'Também na Página',
	                    			'container' => false
								);
								wp_nav_menu($menuArgs);
							?>
						</nav>
				</article>
				
				<article class="col-sm-3 col-xs-12 mapa-site__menu">
					<h4>NOSSAS EXPERTISES</h4>
					<nav>
						<?php 
							$menuArgs = array(
								'menu' => 'Footer Menu',
                    			'theme_location' => 'Footer Menu',
                    			'container' => false
							);
							wp_nav_menu($menuArgs);
						?>
					</nav>
				</article><!--  menu footer -->

				<article class="mapa-site__endereco col-md-3 col-xs-12">
					<h4>ENDEREÇO</h4>
					<p>Edereço do escritório</p>
					<div class="footer__redes">
						<h4>REDES SOCIAIS</h4>
						<div class="footer__redes--links">
							<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/fb.png') ?>" alt="Facebook" title="Facebook"></a>
							<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/insta.png') ?>" alt="Instagram" title="Instagram"></a>
							<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/in.png') ?>" alt="LinkedIn" title="LinkedIn"></a>
							<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/twitter.png') ?>" alt="Twitter" title="Twitter"></a>
							<a href="#" target="_blank"><img src="<?php echo get_theme_file_uri('/assets/images/social/youtube.png') ?>" alt="Youtube" title="Youtube"></a>
						</div>
					</div>
				</article>
			</div><!--  container -->
		</section> <!-- mapa-site -->
	<?php endif ?>
	</footer><!-- #footer -->


<script src="https://code.jquery.com/jquery-git.js"></script>
<script src="<?php echo get_theme_file_uri('/inc/teste-cep/tratamentoCEP.js') ?>"></script>
<script type="text/javascript">
(function(d,s,id){var z=d.createElement(s);z.type="text/javascript";z.id=id;z.async=true;z.src="//static.zotabox.com/a/a/aa8690ecf570c309c47e680facc5eabb/widgets.js";var sz=d.getElementsByTagName(s)[0];sz.parentNode.insertBefore(z,sz)}(document,"script","zb-embed-code"));
</script>
	<?php wp_footer(); ?>
</body>
</html>
