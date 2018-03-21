<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'advocacia');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'mysql');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '=DuF3#;#=BZ[/BBnv,nBvwuFbq%zW/9YUI9/?1, @L28KleA7su.Kgd6v.X*>Jym');
define('SECURE_AUTH_KEY',  'xl?V[06__![m.nz=U.?OU)h]2FVyIf;E* %Y;,;Yj9{QXyRGKXR>fSr]7.5$Uql;');
define('LOGGED_IN_KEY',    '<nzM+0pvFQ}8Uz~T60s,J|E~]l1&-qs+#?|j_O+~[tIngtF<2[G?~~qMTRTcBMeQ');
define('NONCE_KEY',        '%cdxtI5dCdaCKvna;i,>c.#0md,3XED$|$NZIQ65S(%fejo4[%qe`zV?3:,$rG!^');
define('AUTH_SALT',        'U>:Lzm7<4YW:S>u{ hLSZm]>R??}xb,8Z+s&9$^RGsIlyX4]{D]w?sPx4#%mjsvo');
define('SECURE_AUTH_SALT', 'hR:5E=+g/`ZS{7&T?S0lRe|aA[v]fkM>dFo7.#xPW;akv6Z3F}OIOQm#B&~ZG}[9');
define('LOGGED_IN_SALT',   'AfjPP#z)P/<dFh(6psqh{))#_6:mQ%WL^(,H{A|;N0pl24do2Qm,l?`4!0%-H&+_');
define('NONCE_SALT',       'F)Bz.M}Gh8X+hT]Qv0egj:DOT:(O@k.e)PmFi8/:CH6oybL((c>*E&Oc7L:vk*5J');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
