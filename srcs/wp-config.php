<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'test' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'password' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'hhj85-p+3p@E {PRQm<B2p0`!m,9L{8@gLuxt5:vQ)H)Lx?d$tfh6(<EE/7<]DFr' );
define( 'SECURE_AUTH_KEY',  'Ov._nPlI_I2muOaM_b9e1,L/)@pC0r<<@;&72TSj7#@l^l&IjO@iH2 8qsI[iZ/D' );
define( 'LOGGED_IN_KEY',    'tW;mFr,ZiP*DXS$?CLW|c$c^[yOdSbr+~!R2E|:aZVgD.*m5[BTgFi1IoRErFHZ0' );
define( 'NONCE_KEY',        'T(Q3oh.[tTTEY 1_QSy.k(:jz!buwU0qC(8|3v3mnks$XIFUcw):Xu^Kq*>?4.p,' );
define( 'AUTH_SALT',        'N9y3E4O5s8nA93#_!!]~>K(qQ|~Cr*[cho<DLCErClnf=||ACu+8;M]z&im^#>R8' );
define( 'SECURE_AUTH_SALT', '* F(NF5?Ii.AWdl]$-jW|[!fDmm_.b-h:oK$fW)@Drjm|M|Roi~E*P{3CO!>:o+w' );
define( 'LOGGED_IN_SALT',   'zt80vxMDXvYo[fG Q6Qmc>_Ru7>.z{ej.7KLt+,$%Z1({?xrN6B5}|:Cv)gc {>>' );
define( 'NONCE_SALT',       'Sz/LknHL]:{T?Sy`fW}j)[eccjF{~Uv/Lt%bw9WkHbQB2_+1HN3~dw;U11T {S63' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
