-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 04 Lis 2022, 23:58
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
(50, '2022_11_03_225616_create_project_images_table', 1);

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
(0, 'castle3d', 'Prywatny projekt wizualizacji 3D w blenderze', 'Prywatny projekt wizualizacji 3D w blenderze', '', 4),
(1, 'watch3d', 'Prywatny projekt wizualizacji 3D w blenderze', 'Prywatny projekt wizualizacji 3D w blenderze', '', 4),
(2, 'danfit', 'Połącz przyjemną grę z budowaniem kondycji, zapisz się na squash!', 'Danfit to szkółka squasha i pływania zlokalizowna w Legnicy, prowadzą zajęcia dla dzieci jak i dorosłych. Prowadzą treningi personalne jak i grupowe. Potrzebowali brandingu, który odzwierciedlił by nowoczesność w aktualnym świecie, lekkość poruszania się i prędkość rozwoju.', 'http://danfit.pl/', 5),
(3, 'komb', 'Koncentrujemy się na tworzeniu nowych miejsc do życia, które są piękne, użyteczne i innowacyjne', 'Projekt jeżdzącej reklamy na bus dla spółki KOMB Constructions z Legnicy. Reprezentujący mi.n jeden z naszych poprzednich projektów zielone-widoki.', 'https://komb.pl/', 6),
(4, 'zielonewidoki', 'Zacznij żyć na \"Zielono\"', 'Zielone widoki to inwestycja dewelopera KOMB Constructions w Legnicy. Osiedle posiada 3 budynki, dwa mieszkalne i jeden mieszkalno usługowy. Inwestycja zlokalizowana jest w centrum Legnicy, zaraz obok parku - stąd też wywodzi się nazwa inwestycji.', 'https://zielone-widoki.pl/', 9),
(5, 'ats', 'Biuro doradczo finansowe \"ATS\" prowadzone z kilkudziesięcio letnim doświadczeniem.', 'ATS-Konsulting to marka z Legnicy prowadzona przez doradce finansowego Pana Sławomira Turze.', 'https://ats-konsulting.pl/', 5),
(6, 'bielanypark', '\"BIELANYPARK\" Najnowsza Ikona Legnicy', 'Bielanypark to kolejna inwestycja spółki KOMB Constructions - tym razem postawili oni na piękny mall gotowy na wszelkiego rodzaju usługę, prestiżowo i kameralnie w centrum Legnicy', 'https://bielanypark.pl/', 10),
(7, 'aviorprojekt', 'Najlepsze meble na wymiar', 'Aviorprojekt to firma zajmujaca się tworzeniem i projektowaniem mebli na wymiar, w swojej ofercie mają wiele pięknych i nowoczesnych frontów, wyróżnają się współpracą z topowymi markami meblowymi w Polsce.', 'https://aviorprojekt.netlify.app/', 8),
(8, 'meble', 'Wizualizacje mebli chesterfield', 'Wizualizacje mebli chesterfield', '', 7),
(9, 'moss', 'Wizualizacja 3D', 'Wizualizacja 3D', '', 3);

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
(4, 3, 'Wizualizacje 3D'),
(5, 4, 'Strona'),
(6, 5, 'Strona'),
(7, 6, 'Strona'),
(8, 6, 'Branding'),
(9, 6, 'Wizualizacje 3D'),
(10, 7, 'Strona'),
(11, 7, 'UI/UX'),
(12, 8, 'Wizualizacje 3D'),
(13, 9, 'Wizualizacje 3D');

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
(1, 6, 'bielanypark_square_dark'),
(2, 6, 'bielanypark_day_close'),
(3, 6, 'bielanypark_karty1'),
(4, 6, 'bielanypark_karty2'),
(5, 6, 'bielanypark_karty3'),
(6, 6, 'bielanypark8_day_far'),
(7, 6, 'bielanypark_chalk_close'),
(8, 6, 'bielanypark_chalk_top');

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
(3, 1, 'Wizualizacja 3D'),
(4, 1, 'Modele 3D'),
(5, 2, 'Branding'),
(6, 2, 'Logo'),
(7, 2, 'Marketing'),
(8, 3, 'Projekt reklamy'),
(9, 3, 'Wizualizacja 3D'),
(10, 4, 'Logo'),
(11, 4, 'Strona Internetowa'),
(12, 4, 'Marketing'),
(13, 5, 'Strona Internetowa'),
(14, 6, 'Wizualizacje 3D'),
(15, 6, 'Strona Internetowa'),
(16, 6, 'Logo'),
(17, 6, 'Marketing'),
(18, 7, 'Strona Internetowa'),
(19, 7, 'Dostosowanie się do aktualnej wizji marki'),
(20, 8, 'Wizualizacja 3D'),
(21, 9, 'Wizualizacja 3D');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `project_goals`
--
ALTER TABLE `project_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `project_responsibilities`
--
ALTER TABLE `project_responsibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
