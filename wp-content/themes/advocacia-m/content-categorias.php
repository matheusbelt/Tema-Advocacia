<?php
/**
 * The default template for displaying content.
 *
 * Used for both single and index/archive/author/catagory/search/tag.
 *
 * @package Odin
 * @since 2.2.0
 */
?>

<article id="post-<?php the_ID(); ?>" class="post post--small col-xs-12">
	<header class="entry-header entry-header--small col-sm-4">
		<a href="<?php the_permalink(); ?>">
			<div class="entry-header__thumb entry-header__thumb--small">
				<?php the_post_thumbnail(); ?>
			</div> <!-- thumbnail -->
		</a><!--  thumbnail link -->
	</header><!-- .entry-header -->
	
	<div class="entry-content entry-content--small col-sm-8">
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

		<div class="entry-summary entry-summary--small">
			<?php echo wp_trim_words(get_the_content(), 20); ?>
		</div><!-- .entry-summary -->
	</div> <!-- entry-content -->
</article><!-- #post-## -->
