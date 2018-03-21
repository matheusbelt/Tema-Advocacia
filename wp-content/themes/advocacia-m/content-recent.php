<?php
/**
 * The default template for displaying content.
 *
 *
 * @package Odin
 * @since 2.2.0
 */
?>

<article id="post-<?php the_ID(); ?>" class="post post--big col-md-6">
	<header class="entry-header">
		<a href="<?php the_permalink(); ?>">
			<div class="entry-header__thumb">
				<?php the_post_thumbnail(); ?>
			</div> <!-- thumbnail -->
		</a><!--  thumbnail link -->
		<?php
			if ( is_single() ) :
				the_title( '<h1 class="entry-title">', '</h1>' );
			else :
				the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
			endif;
		?>

		<?php if ( 'post' == get_post_type() ) : ?>
			<div class="entry-meta">
				<?php odin_posted_on(); ?>
			</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

		<div class="entry-summary">
			<?php echo wp_trim_words(get_the_content(), 60); ?>
		</div><!-- .entry-summary -->
		
</article><!-- #post-## -->
