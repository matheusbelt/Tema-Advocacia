<?php 
// Variables
$row              = 0;
$images_per_page  = 5; // How many posts to display on each page
$images           = get_field( 'laminas' );
$total            = count( $images );
$pages            = ceil( $total / $images_per_page );
$min              = ( ( $page * $images_per_page ) - $images_per_page ) + 1;
$max              = ( $min + $images_per_page ) - 1;

// Loop inicio
if( have_rows( 'laminas' ) ) : ?>

  <?php while( have_rows( 'laminas' ) ): the_row();

    $row++;

    // Ignore this image if $row is lower than $min
    if($row < $min) { continue; }

    // Stop loop completely if $row is higher than $max
    if($row > $max) { break; } ?>                     
    
    <article class="col-xs-12 todos-projetos-ini">
				<div class="img-ini col-md-4">
					<div class="col-md-10">
						<a href="<?php the_sub_field('link_do_projeto'); ?>"><img src="<?php the_sub_field('imagem_do_projeto'); ?>" alt="" class="todos-projetos-img"></a>
					</div>
				</div>
					<div class="post-ini-header col-md-8">
						<a href="<?php the_sub_field('link_do_projeto'); ?>"><h2 class='titulo-apresent todos-projetos-titulo verdana letrazul'><?php the_sub_field('titulo_do_projeto') ?></h2></a>
					</div>

					<div class="post-ini col-md-8">
						<?php the_sub_field('resumo_do_projeto'); ?>
					</div>
	</article><!-- fim do post -->


  <?php endwhile;

  // Pagination
  echo paginate_links( array(
    'base' => get_permalink() . '%#%' . '/',
    'format' => '?page=%#%',
    'current' => $page,
    'total' => $pages
  ) );
  ?>

<?php else: ?>

  Nada encontrado

<?php endif; ?>