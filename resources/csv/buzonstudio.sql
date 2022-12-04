-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 03 Gru 2022, 18:27
-- Wersja serwera: 5.7.33
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `buzonstudio`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2019_08_19_000000_create_failed_jobs_table', 1),
(45, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(46, '2022_11_03_224556_create_projects_table', 1),
(47, '2022_11_03_225306_create_project_responsibilities_table', 1),
(48, '2022_11_03_225315_create_project_goals_table', 1),
(49, '2022_11_03_225328_create_project_categories_table', 1),
(50, '2022_11_03_225616_create_project_images_table', 1),
(51, '2022_12_01_130442_create_secrets_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '6f2d51cd4b88ac9e83b99fa83006dba70d9f89b19366888a99247370317a8ff0', '[\"*\"]', NULL, NULL, '2022-12-02 11:51:30', '2022-12-02 11:51:30'),
(2, 'App\\Models\\User', 1, 'MyApp', '84eb8c6867c4f4fc8a860ea3ed81ee7de228dd18664168bcca2a9803c9960900', '[\"*\"]', NULL, NULL, '2022-12-02 12:10:17', '2022-12-02 12:10:17'),
(3, 'App\\Models\\User', 1, 'MyApp', 'a74dd92cb7d4bc353191f5397ee0ec6e9445d88d2fd26565f3014105feb51793', '[\"*\"]', NULL, NULL, '2022-12-02 12:10:37', '2022-12-02 12:10:37'),
(4, 'App\\Models\\User', 1, 'MyApp', '0b95833d496708e5943bda2de45c22852f2ea9dc2a65069c877aeba506b076ec', '[\"*\"]', NULL, NULL, '2022-12-02 12:10:47', '2022-12-02 12:10:47'),
(5, 'App\\Models\\User', 1, 'MyApp', '99da49feb0ba279c7ab0aa64d0f0667f7fb9c2d08737ad27bd3dc034f60d5fbc', '[\"*\"]', NULL, NULL, '2022-12-02 12:11:04', '2022-12-02 12:11:04'),
(6, 'App\\Models\\User', 1, 'MyApp', '20b368a02f542b2bae46a945fd775d4df37f8c2cb6956e669e0c54eec287f92e', '[\"*\"]', NULL, NULL, '2022-12-02 12:11:30', '2022-12-02 12:11:30'),
(7, 'App\\Models\\User', 1, 'MyApp', '4a1050d0de8f745dcb4c25426bac6faa2428b0b39ffd1fdcf3aebae28ea5a20d', '[\"*\"]', NULL, NULL, '2022-12-02 12:11:34', '2022-12-02 12:11:34'),
(8, 'App\\Models\\User', 1, 'MyApp', 'd49f98ee3d6cbbdec42a4eb4add591d4896bc1368c4cc8cebd016f2ae99f87ba', '[\"*\"]', NULL, NULL, '2022-12-02 12:12:36', '2022-12-02 12:12:36'),
(9, 'App\\Models\\User', 1, 'MyApp', '408516414bceba40f0243b1ab60a3579722d5b71ff794579a60e6fd9ba044578', '[\"*\"]', NULL, NULL, '2022-12-02 12:12:41', '2022-12-02 12:12:41'),
(10, 'App\\Models\\User', 1, 'MyApp', '0716e8374a80c5228a4960a4d9093ed1e39a8e6693ecd8f0f42fe4ab2cfddf24', '[\"*\"]', NULL, NULL, '2022-12-02 12:17:48', '2022-12-02 12:17:48'),
(11, 'App\\Models\\User', 1, 'MyApp', 'b0ee349b4d3bf403734d9c40eabdce288ec9396aedd1a715ea62fdda87c6a13e', '[\"*\"]', NULL, NULL, '2022-12-02 12:18:10', '2022-12-02 12:18:10'),
(12, 'App\\Models\\User', 1, 'MyApp', 'a6d69c9f0859d05f73130061a5135563577031e16435f2ac2bd7397fde0edb84', '[\"*\"]', NULL, NULL, '2022-12-02 20:23:08', '2022-12-02 20:23:08'),
(13, 'App\\Models\\User', 1, 'MyApp', '4deaa9496476a0c5d25e106fb630703e7b66f513e40a519ef094e9b77ddae48f', '[\"*\"]', NULL, NULL, '2022-12-02 20:23:21', '2022-12-02 20:23:21'),
(14, 'App\\Models\\User', 1, 'MyApp', '63199c93a5cecd1e9dc3a2bff8632c7e2d2503853f725536450e99c2ee72a452', '[\"*\"]', NULL, NULL, '2022-12-02 20:24:00', '2022-12-02 20:24:00'),
(15, 'App\\Models\\User', 1, 'MyApp', '2e8c12e8dd4d412fc553096b7600558070b6f3d37aa908dd2664c6b81df9f74c', '[\"*\"]', NULL, NULL, '2022-12-02 20:26:29', '2022-12-02 20:26:29'),
(16, 'App\\Models\\User', 1, 'MyApp', 'd2f130ce213e45973f7dbbd1420789d03fc09e02cf5d06bf612da701ec75f6b1', '[\"*\"]', NULL, NULL, '2022-12-02 20:35:46', '2022-12-02 20:35:46'),
(17, 'App\\Models\\User', 1, 'MyApp', '208db9dd9df88652ba788f44ffca6802adbf3c4894e5946077f231f46fbd0766', '[\"*\"]', NULL, NULL, '2022-12-02 20:38:27', '2022-12-02 20:38:27'),
(18, 'App\\Models\\User', 1, 'MyApp', 'e048839c14d2b0727a618d9245927cca6109cc361d7842074672e595f647f41f', '[\"*\"]', NULL, NULL, '2022-12-02 20:38:51', '2022-12-02 20:38:51'),
(19, 'App\\Models\\User', 1, 'MyApp', 'ed4841d6e85c401f104abb839ba90d554496af3ad782875cafa1c2a6bc3caf8c', '[\"*\"]', NULL, NULL, '2022-12-02 20:46:05', '2022-12-02 20:46:05'),
(20, 'App\\Models\\User', 1, 'MyApp', 'a294c7629354102d9291633d4f5f3b52fcde0d92c1dfa9a444b1f11cb95f5c69', '[\"*\"]', NULL, NULL, '2022-12-02 20:46:10', '2022-12-02 20:46:10'),
(21, 'App\\Models\\User', 1, 'MyApp', 'abdd8404cdd294db174b9163444c4052b51b4e47d061e6eab4429a3c187301c2', '[\"*\"]', NULL, NULL, '2022-12-02 20:46:46', '2022-12-02 20:46:46'),
(22, 'App\\Models\\User', 1, 'MyApp', '43d1a86d93fc19813eec576e9e75d9bc145af6eab20a63b80148920bc334d5c1', '[\"*\"]', NULL, NULL, '2022-12-02 20:48:08', '2022-12-02 20:48:08'),
(23, 'App\\Models\\User', 1, 'MyApp', 'ee60e44c356389482e5fb391c575d083e75468c4a14636da572c43645b4efa9f', '[\"*\"]', NULL, NULL, '2022-12-02 20:51:59', '2022-12-02 20:51:59'),
(24, 'App\\Models\\User', 1, 'MyApp', '2391feeb8fa1e7aefeb3d38e96c750679213862e88db0845cc3600220be2a0e9', '[\"*\"]', NULL, NULL, '2022-12-02 20:52:42', '2022-12-02 20:52:42'),
(25, 'App\\Models\\User', 1, 'MyApp', 'c496b434dac023ccb34ff6da26633cbd25ba0bd132a0b08ada54054baaaab657', '[\"*\"]', NULL, NULL, '2022-12-02 20:53:14', '2022-12-02 20:53:14'),
(26, 'App\\Models\\User', 1, 'MyApp', '8fbee7a4c69851bc5d8d41c106906a6b5da9b25f8b49744c9f1e8bc8cdccf84e', '[\"*\"]', NULL, NULL, '2022-12-02 20:54:27', '2022-12-02 20:54:27'),
(27, 'App\\Models\\User', 1, 'MyApp', 'd458248645a641667cc124744b30ce30f0935cf007ad9c83fba5e913775a545b', '[\"*\"]', NULL, NULL, '2022-12-02 20:54:47', '2022-12-02 20:54:47');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descShort` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descLong` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `projects`
--

INSERT INTO `projects` (`id`, `name`, `descShort`, `descLong`, `website`, `importance`) VALUES
(0, 'castle3d', 'Case-study wizualizacji przestrzennej', 'Wizualizacje stworzone jako case-study przesztrzeni, manipulowania wzrokiem i głębi obrazu.', '', 4),
(1, 'watch3d', 'Case-study wizualizacji produktu', 'Wizualizacje stworzone jako case-study prezentowania produktu i manipulacji oświetleniem.', '', 4),
(2, 'danfit', 'Połącz przyjemną grę z budowaniem kondycji, zapisz się na squash!', 'Danfit to szkółka squasha i pływania zlokalizowna w Legnicy, prowadzą zajęcia dla dzieci jak i dorosłych. Prowadzą treningi personalne jak i grupowe. Potrzebowali brandingu, który odzwierciedlił by nowoczesność w aktualnym świecie, lekkość poruszania się i prędkość rozwoju.', 'http://danfit.pl/', 5),
(3, 'komb', 'Koncentrujemy się na tworzeniu nowych miejsc do życia, które są piękne, użyteczne i innowacyjne', 'Projekt jeżdzącej reklamy na bus dla spółki KOMB Constructions z Legnicy. Reprezentujący mi.n jeden z naszych poprzednich projektów zielone-widoki.', 'https://komb.pl/', 6),
(4, 'zielonewidoki', 'Zacznij żyć na \"Zielono\"', 'Zielone widoki to inwestycja dewelopera KOMB Constructions w Legnicy. Osiedle posiada 3 budynki, dwa mieszkalne i jeden mieszkalno usługowy. Inwestycja zlokalizowana jest w centrum Legnicy, zaraz obok parku - stąd też wywodzi się nazwa inwestycji.', 'https://zielone-widoki.pl/', 9),
(5, 'ats', 'Biuro doradczo finansowe \"ATS\" prowadzone z kilkudziesięcio letnim doświadczeniem.', 'ATS-Konsulting to marka z Legnicy prowadzona przez doradce finansowego Pana Sławomira Turze.', 'https://ats-konsulting.pl/', 5),
(6, 'bielanypark', '\"BIELANYPARK\" Najnowsza Ikona Legnicy', 'Bielanypark to kolejna inwestycja spółki KOMB Constructions - tym razem postawili oni na piękny mall gotowy na wszelkiego rodzaju usługę, prestiżowo i kameralnie w centrum Legnicy', 'https://bielanypark.pl/', 10),
(7, 'aviorprojekt', 'Najlepsze meble na wymiar', 'Aviorprojekt to firma zajmujaca się tworzeniem i projektowaniem mebli na wymiar, w swojej ofercie mają wiele pięknych i nowoczesnych frontów, wyróżnają się współpracą z topowymi markami meblowymi w Polsce.', 'https://aviorprojekt.netlify.app/', 8),
(8, 'meble', 'Wizualizacje mebli chesterfield', 'Projekt dla firmy zajmującej się tworzeniem mebli typu chesterfield od podstaw.', '', 7),
(9, 'moss', 'Case-study wizualizacji elementu przestrzeni', 'Wizualizacje stworzone jako case-study oświetlenia i modelu mchu wraz z jego dystrybucją na modelu 3D', '', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `project_categories`
--

INSERT INTO `project_categories` (`id`, `project_id`, `category`) VALUES
(1, 0, 'Wizualizacje 3D'),
(2, 1, 'Wizualizacje 3D'),
(3, 2, 'Branding'),
(4, 2, 'Marketing'),
(5, 3, 'Wizualizacje 3D'),
(6, 3, 'Projekt 2D'),
(7, 4, 'Strona'),
(8, 4, 'Wizualizacje 3D'),
(9, 4, 'Marketing'),
(10, 5, 'Strona'),
(11, 6, 'Strona'),
(12, 6, 'Branding'),
(13, 6, 'Wizualizacje 3D'),
(14, 7, 'Strona'),
(15, 7, 'UI/UX'),
(16, 8, 'Wizualizacje 3D'),
(17, 9, 'Wizualizacje 3D');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_goals`
--

CREATE TABLE `project_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `goal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_images`
--

CREATE TABLE `project_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `image`) VALUES
(1, 0, 'castle3d_portfolio'),
(2, 0, 'castle3d1'),
(3, 1, 'watch3d1'),
(4, 1, 'watch3d_portfolio'),
(5, 1, 'watch3d2'),
(6, 1, 'watch3d3'),
(7, 2, 'logo'),
(8, 2, 'post2'),
(9, 2, 'post1'),
(10, 3, 'komb_portfolio'),
(11, 3, 'mockup_komb_van'),
(12, 3, 'komb1'),
(13, 4, 'zielonewidoki2'),
(14, 4, 'zielonewidoki1'),
(15, 4, '2budynki'),
(16, 4, 'zielonewidoki_mockup_social'),
(17, 4, '2phone'),
(18, 4, 'budynekmieszkalny'),
(19, 4, 'zielonewidoki_mockup_folder'),
(20, 4, 'zielonewidoki1'),
(21, 4, 'tablet2'),
(22, 4, 'zielonewidoki6'),
(23, 4, 'zielonewidoki3'),
(24, 5, 'main_laptop'),
(25, 5, 'tablet2'),
(26, 5, '2phone'),
(27, 5, 'ats_portfolio'),
(28, 6, 'bielanypark_square_dark'),
(29, 6, 'bielanypark_day_close'),
(30, 6, 'bielanypark_karty1'),
(31, 6, 'main_laptop'),
(32, 6, 'bielanypark_karty2'),
(33, 6, 'tablet2'),
(34, 6, 'bielanypark_karty3'),
(35, 6, '2phone'),
(36, 6, 'bielanypark_dark'),
(37, 6, 'bielanypark_chalk_top'),
(38, 6, 'bielanypark8_day_far'),
(39, 7, 'main_laptop'),
(40, 7, 'tablet2'),
(41, 7, '2phone'),
(42, 7, 'aviorprojekt_portfolio'),
(43, 7, 'web_layout_showcase2'),
(44, 8, '1'),
(45, 8, '2'),
(46, 8, '3'),
(47, 8, '4'),
(48, 8, '5'),
(49, 8, '6'),
(50, 8, '7'),
(51, 8, '8'),
(52, 8, '9'),
(53, 9, 'moss_portfolio'),
(54, 9, '2'),
(55, 9, '1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_responsibilities`
--

CREATE TABLE `project_responsibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `responsibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `project_responsibilities`
--

INSERT INTO `project_responsibilities` (`id`, `project_id`, `responsibility`) VALUES
(1, 0, 'Wizualizacja 3D'),
(2, 0, 'Modele 3D'),
(3, 0, 'Oświetlenie sceny'),
(4, 0, 'Rendering'),
(5, 1, 'Wizualizacja 3D'),
(6, 1, 'Modele 3D'),
(7, 1, 'Oświetlenie sceny'),
(8, 1, 'Rendering'),
(9, 2, 'Identyfikacja wizualna'),
(10, 2, 'Logo'),
(11, 2, 'Marketing online'),
(12, 3, 'Projekt reklamy'),
(13, 3, 'Wizualizacja 3D'),
(14, 3, 'Modele 3D'),
(15, 4, 'Strona Internetowa'),
(16, 4, 'Wizualizacje 3D'),
(17, 4, 'Modele 3D'),
(18, 4, 'Logo'),
(19, 4, 'Projekty reklam'),
(20, 4, 'Projekt kart katalogowych'),
(21, 4, 'Marketing online'),
(22, 5, 'Strona Internetowa'),
(23, 6, 'Wizualizacje 3D'),
(24, 6, 'Modele 3D'),
(25, 6, 'Strona Internetowa'),
(26, 6, 'Logo'),
(27, 6, 'Marketing online'),
(28, 6, 'Projekty reklam'),
(29, 6, 'Projekt kart katalogowych'),
(30, 7, 'Strona Internetowa'),
(31, 7, 'Dostosowanie się do aktualnej wizji marki'),
(32, 8, 'Modele 3D'),
(33, 8, 'Wizualizacje 3D'),
(34, 8, 'Oświetlenie sceny'),
(35, 8, 'Rendering'),
(36, 9, 'Modele 3D'),
(37, 9, 'Wizualizacje 3D'),
(38, 9, 'Oświetlenie sceny'),
(39, 9, 'Rendering');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `secrets`
--

CREATE TABLE `secrets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `secrets`
--

INSERT INTO `secrets` (`id`, `user_id`, `secret`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aut veniam excepturi molestiae maiores totam. Eligendi hic totam dolores aut non qui veritatis. Autem molestiae eius odio delectus quo fuga.', '2022-12-01 12:14:52', '2022-12-01 12:14:52'),
(2, 1, 'Quas est aut nisi quas quas in et. Error praesentium adipisci itaque. Dolores et et rerum nostrum voluptates ut sit. Dolores omnis ipsum velit et fugiat doloremque repellat.', '2022-12-01 12:16:25', '2022-12-01 12:16:25'),
(3, 2, 'Ipsum ullam odio aut necessitatibus corporis fugit. Similique similique perspiciatis officia est aliquam. Natus nisi temporibus soluta ad. Praesentium id repellendus accusantium repudiandae.', '2022-12-01 12:16:40', '2022-12-01 12:16:40'),
(4, 2, 'Voluptatem labore autem maxime aut quidem. Quod enim accusantium ipsa laboriosam repellat. Hic sint ea magnam omnis pariatur voluptatem et. Quo occaecati modi et sint vero accusamus nesciunt sint.', '2022-12-01 12:16:40', '2022-12-01 12:16:40');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bs', 'hej@buzon.studio', '2022-12-01 12:13:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A6T2eGa5cOdc7BlziwXk0PSyWxAoojA1tgLYpODqS6ZSqITqAipbHtrDm12x', '2022-12-01 12:13:44', '2022-12-01 12:13:44');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_categories_project_id_foreign` (`project_id`);

--
-- Indeksy dla tabeli `project_goals`
--
ALTER TABLE `project_goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_goals_project_id_foreign` (`project_id`);

--
-- Indeksy dla tabeli `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_images_project_id_foreign` (`project_id`);

--
-- Indeksy dla tabeli `project_responsibilities`
--
ALTER TABLE `project_responsibilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_responsibilities_project_id_foreign` (`project_id`);

--
-- Indeksy dla tabeli `secrets`
--
ALTER TABLE `secrets`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `project_goals`
--
ALTER TABLE `project_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT dla tabeli `project_responsibilities`
--
ALTER TABLE `project_responsibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `secrets`
--
ALTER TABLE `secrets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `project_categories`
--
ALTER TABLE `project_categories`
  ADD CONSTRAINT `project_categories_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Ograniczenia dla tabeli `project_goals`
--
ALTER TABLE `project_goals`
  ADD CONSTRAINT `project_goals_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Ograniczenia dla tabeli `project_images`
--
ALTER TABLE `project_images`
  ADD CONSTRAINT `project_images_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Ograniczenia dla tabeli `project_responsibilities`
--
ALTER TABLE `project_responsibilities`
  ADD CONSTRAINT `project_responsibilities_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
