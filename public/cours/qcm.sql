-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2016 at 10:00 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(32) COLLATE utf8_bin NOT NULL,
  `question` varchar(256) COLLATE utf8_bin NOT NULL,
  `duree` int(11) NOT NULL DEFAULT '10',
  `point_ok` int(11) NOT NULL DEFAULT '1',
  `point_nok` int(11) NOT NULL DEFAULT '2',
  `type` enum('multiple','unique') COLLATE utf8_bin NOT NULL DEFAULT 'unique',
  `reponses` varchar(256) COLLATE utf8_bin NOT NULL,
  `reponse` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=22 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `titre`, `question`, `duree`, `point_ok`, `point_nok`, `type`, `reponses`, `reponse`) VALUES
(1, 'HTML', 'Quel est le doctype d''un document HTML5 ?', 10, 1, 2, 'unique', '[\r\n"<!DOCTYPE HTML PUBLIC ''-//W3C//DTD HTML 4.01//EN'' ''http://www.w3.org/TR/html4/strict.dtd''>",\r\n"<!DOCTYPE html PUBLIC ''-//W3C//DTD XHTML 1.1//EN'' ''http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd''>",\r\n"<!DOCTYPE html>",\r\n"<!DOCTYPE html5>"\r\n]', 2),
(2, 'CSS', 'Que signifie CSS ?', 10, 1, 2, 'unique', '[\n"Compagnie Sucriere Senegalaise",\n"Cascading Style Sheets",\n"Comment S''en Sortir",\n"Centre Solaire Spatial"\n]', 1),
(3, 'CSS', 'Quel element separe la propriete de sa valeur', 10, 1, 2, 'unique', '[\r\n":",\r\n"*",\r\n",",\r\n";"\r\n]', 0),
(4, 'CSS', 'Avec quel symbole selectionne-t-on un id ?', 10, 1, 2, 'unique', '[\r\n":",\r\n"*",\r\n",",\r\n"#"\r\n]', 3),
(5, 'CSS', 'Avec quel symbole selectionne-t-on une classe ?', 10, 1, 2, 'unique', '[\r\n".",\r\n"*",\r\n",",\r\n"#"\r\n]', 0),
(6, 'MATH', 'Combien font 3*4 ?', 4, 1, 2, 'unique', '[\r\n"11",\r\n"13",\r\n"12",\r\n"34"\r\n]', 2),
(7, 'MATH', 'Combien fait 392 - 17 ?', 20, 1, 2, 'unique', '[\r\n"375",\r\n"365",\r\n"385",\r\n"355"\r\n]', 0),
(8, 'PHP', 'Quelle fonction retourne la longueur d''une chaine de caracteres ?', 10, 1, 2, 'unique', '[\r\n"strlen",\r\n"count",\r\n"sizeof",\r\n"mb2strlen"\r\n]', 0),
(9, 'PHP', 'Comment accede-t-on au 1er element "chaton" dans le tableau suivant :\n$tableau = array("chaton", "ornithorynque", "dauphin"); ?', 10, 1, 2, 'unique', '[\r\n"$tableau[0]",\r\n"$tableau[1]",\r\n"tableau(0)",\r\n"tableau.get(1)"\r\n]', 0),
(10, 'PHP', 'Comment verifie-t-on l''egalite de deux variables : $a et $b ?', 10, 1, 2, 'unique', '[\r\n"$b = $a",\r\n"$b == $a",\r\n"$a != $b",\r\n"$a =!= $b"\r\n]', 1),
(11, 'PHP', 'Comment verifie-t-on l''egalite STIRCTE de deux variables : $a et $b ?', 10, 1, 2, 'unique', '[\r\n"$b == $a",\r\n"$b === $a",\r\n"$a ==== $b",\r\n"$a = $b"\r\n]', 1),
(12, 'PHP', 'Comment s''appelle l''operateur suivant | ?', 10, 1, 2, 'unique', '[\r\n"moustache",\r\n"esperluette",\r\n"pipe",\r\n"ou"\r\n]', 2),
(13, 'PHP', 'Quelle methode utilise-t-on dans un formulaire pour envoyer des informations ?', 10, 1, 2, 'unique', '[\r\n"DELETE",\r\n"PUT",\r\n"POST",\r\n"GET"\r\n]', 2),
(14, 'PHP', 'Compte tenu le script PHP suivant :\n$dodo = 6;\n$dodo += 2;\necho $dodo;\nQue va-t-il s''afficher a l''ecran ?', 10, 1, 2, 'unique', '[\r\n"2",\r\n"8",\r\n"4",\r\n"6"\r\n]', 1),
(15, 'PHP', 'Quelle variable globale utilise-t-on apres le login d''un utilisateur ?', 10, 1, 2, 'unique', '[\r\n"$_SERVER",\r\n"$_GET",\r\n"$_SESSION",\r\n"$_POST"\r\n]', 2),
(16, 'PHP - Securite', 'Quelle fonction est-elle utilisee avant l''affichage d''une variable ?', 10, 1, 2, 'unique', '[\r\n"mysqli_real_escape_string",\r\n"mysql_real_escape_string",\r\n"htmlentities",\r\n"htmlspecialchars"\r\n]', 2),
(17, 'PHP - Securite', 'Quelle fonction permet-elle d''eviter les injections SQL ?', 10, 1, 2, 'unique', '[\r\n"mysqli_real_escape_string",\r\n"mysql_real_escape_string",\r\n"htmlentities",\r\n"htmlspecialchars"\r\n]', 0),
(18, 'PHP', 'Quelle fonction permet de verifier si une variable existe ?', 10, 1, 2, 'unique', '[\r\n"undefined",\r\n"isdefined",\r\n"isset",\r\n"htmlspecialchars"\r\n]', 2),
(19, 'GENERAL', 'Que dire de cette affirmation : "Les virus existent seulement sous Windows, les autres systemes d''exploitation et les mobiles ne sont pas touches"', 10, 1, 2, 'unique', '[\r\n"vrai",\r\n"faux",\r\n"ca depend",\r\n"La reponse D"\r\n]', 1),
(20, 'GENERAL', 'Le phishing est un repas avec du poisson.', 10, 1, 2, 'unique', '[\r\n"vrai",\r\n"faux",\r\n"ca depend",\r\n"La reponse D"\r\n]', 1),
(21, 'GENERAL', 'Comment s''appelle la norme de disposition du clavier francais ?', 10, 1, 2, 'unique', '[\r\n"QWERTY",\r\n"AZERTY",\r\n"QWERTZ",\r\n"FGĞIOD"\r\n]', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
