-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2024 pada 08.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `nama_lapang` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam_mulai` varchar(255) NOT NULL,
  `total_jam_main` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `nama_lapang`, `tanggal`, `jam_mulai`, `total_jam_main`, `nominal`) VALUES
(6, 'Lapangan KOF', '30 Januari 2024', 'Jam 8 ', '1 Jam', '100.000'),
(8, 'Saluyu', '30 Januari 2024', 'Jam 20.00', '2 Jam', '200.000'),
(15, 'lapangan joglo', '53168238172', '31231', '123', '1312312'),
(16, 'asdasd', 'dasdas', 'dasdas', 'ddasd', 'adasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'daffa', 'daffa@admin.com', '$2y$10$afwfO4EaxvYc27laHiYNy.NNO40Y1Ylj6LMmTlgBMEQ1hHyTSql0i'),
(2, 'Syahid', 'Syahid@gmail.com', '$2y$10$7FAcFfOVDzv.4MhLalAkUOHipCP.p4.6IwLCSsn0krhZqikgOCxCS'),
(3, 'ucok', 'ucoknibos@gmail.com', '$2y$10$fPgzIuXinyaUmxCu7vKOweOdnqL.Y4HpxG8PfVHTazh5I5fV81QqC'),
(4, 'daps', 'daps@gmail.com', '$2y$10$Eb.IpnBnGATcZuB2.Te00OYIxnNbtCAJdgiHSO7JieWCnsKMZbGey'),
(5, 'syahid', 'syahid22@gmail.com', '$2y$10$RJlZEzfKr.HjsRP.I80XMe2a0tRiGiqP/xveW4SkTPTkVF1XW9e3C'),
(6, 'syahid', 'sya24@gmail.com', '$2y$10$J3jgViK3qU.BDhzqglnGkuAaZRDYIs2vXUjHIkiPtVeMfGLvszLpC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 1, 'sghjndAunB3OnZBE2XvNoswAReULsdh6BUE4PMkR1eBb1rVrYSZMPxk0K9VfMhshXnIysAlB8miNTqw7ZE6QrdnHIOLlguPJyH2r'),
(2, 1, 'bgW97Nyd8d9CckPPsH4cODhn0V37CgxnjniVXJ5LLomb0RskNSr9R0uCwnT6LA63dLdSPyTKOs175JZsOgIr6xbQXRDAbwS5c629'),
(3, 1, 'BBsPtKfdVMXdSVoAfjk9ElFs7Kursblcp2Z3HwyKCQssdW9owGq7APdsRUCXm8iIUS3dL5ByGdLqnI18aJizpMjNUs5LsdgB25GR'),
(4, 1, 'QHlwCvwNdZcH1PfozxVPaVMfYvLLHpsvBzdBdkqYAszoK6HSCk1kEDJgdWII1Nk2mDAwAAFsuVFK0jisPNAnsLDMrhlyzbsInzUd'),
(5, 1, 'RYrEdrwEnlRfARA6iZVxUwLWZ9DPsvgHXaq8Vsmsqjs5LeJ9yWzhuBCoAy9sd4sYndG4i68lkUITtk2zqj0t7AZVxpc20QQtK7zR'),
(6, 1, 'OpCN3ecjEhIy0Eq8hUsvh06fskUexORhuXEv9TPUpozwve0iIdQWdeMLRxNNoeLIn0GNkHdr5R3sRUxWRRddb00hshtudmOP5f1D'),
(7, 1, 'wgoNH95pvZj3ROKC81tdj1QEN1xoS7de8WG97bf8jUSUIy1zCuadJdErIi0QvT4FmvEaPhKarln4D9wAainMCbEwr81nUwUOn85Y'),
(8, 1, 'GtVO7uHWxWDFmVqts7ROYHwNceshLb8NBx9otuXCVkcUzUsnJcTN9kddI5kGUId7IYLoAmmnO42UF72VldGtnstOuFjc8qdHkObI'),
(9, 1, 'sKAr1CFEQQnjAdvJl0dD0aUVBfKdf4ylz4MaE6ZUcwC5idd7ubBG7Q2dtcwKqpTPMEzaMJdkOAp9QSQw3iHGjssFsePOcGgI2lMm'),
(10, 2, 'BWaMzsf8z1PsSl0NNtk0IBl7bNp94YiWw6CjuR8ulkjWdOqVpfda5y8c13MxdIYBk6uIL7Mrd0UNdcwj4eJXeuKIqbyeBLi0lZPk'),
(11, 1, 'L9FiFCzLetwWH6edtXJZQOhHsSewk7UFjg4NWCj9IE0Qbek6ON7k4Ow0gADiRLwVpfqlUMYsujL9YHnt0whEOn5UbdQFXXqbwPVd'),
(12, 2, 'KCgKwgARyNVHK2oh8CEcZa4HBDcGeBKKEbd59DcuBwGX7drCsdmyQ5an8lllslfd8DAinUsznAJIKGKqiVBdKaNpN5EurjFDooDI'),
(13, 2, 'bGD97tEZnInf56VEivsPmdzzFiV5aRdDe0dLpHWbNJSsGTykNYIXEhVAUW0tQ0bZqUefLVg149GOZ6CDuiGqsBSQHMfve6Z6x4oB'),
(14, 2, 'FwKOgAC16H2NWd7HtwYVfjA87nDhLkUJGV85p1H2scKUkTLiH3M88oF1fVd3cbFGNdj9QvfJT3Npcq4RQYaTbMdbWtJxceglqnbi'),
(15, 2, 'mGs3UIsl2EpslphbdGNJtdf81wwmfwNDzdxcG553qzkcdRpCC7MgMQ9CzidQWrHONsVMeqAssXlnN9J2SrEv9vHKAeApHG11t9sE'),
(16, 2, 'tdAVmdZnr47SthZ4TBp3fAWixPLqc3l6IIxgV0C0CPgnToeIuUeo7k59kLsUhNmsNduXhOoTUsYtIdjZLNvM4vIUvlkPxQz4AK6R'),
(17, 2, 'l5Z2g8isEhEA9oOISz8h9EzyGwKsQddabfuLFdKXCORkFIlVGyofdDSRVHIX6GdgpgaMkW0Stumdg6rs4qfr8lxkR4QwhiOtuo6Q'),
(18, 2, '0ymg4Vk5sp7QyGkPKluEGec51EESrzdL8e0a6DwTwoBt8iJPASHbnsdi51jVcuEBOYHlsBKQcLBDrOjJQOkA1IbHtj8WicS4cykm'),
(19, 2, 'JlR216soW6dm6955do1HMe9IUOSug2C4J3PXO3skdv3BT2SGsz7E39UWLahqoH0ss0ActcQ7KVPsnUJUNjaVOUjSed780jATZDzJ'),
(20, 2, 'FBjJ8LitIXJTF5WFwU3smQQTRHwIgiUfRMdh6CJk9wCeZbTMgVzuM7sdDVcvnddzWd4seyr5Ck1ha8N973sddq8YiJDZlwq2UCod'),
(21, 2, 'lttObj0ZeBRkrjEjKegEDUquxoUqZniBc6USiSe8d4vtJj2H9rbo2l3JrAVS5eSLWVZykaV1FsUc57NBebMdaOXqmr31tCnJBfZF'),
(22, 2, 'JqJWynvWIXts1BQCBwst1VDzWdMLdOHXqsdu3dCHwECsZIUfsaovK4A9yipmd4XU7d9qtma19aBJWVl7vl0DdJQErzMG0gtWNvHs'),
(23, 2, 'YK1zYDvdWbcMyLi012cy0guT4Qef891bvT4abEvUJPDGLtw5AkJxlSMwNzH97Jk1uTIKv7pdxhtri0prWqHjvWR0thAKwGMkVQng'),
(24, 2, 'YeLI63E1GBLjoMxGV8IMiWGqxQi0r6Duq8vt5z4VlspdebQuC5Setr3VYWrvTvsllRLjKdIssZkfMFz2yksDbWWa696O5ZmXd7VV'),
(25, 2, 'oIx56nWdNMl6wTgV0jtBsdcrI4dYdUkDd13xixsduGsdqBkmghzWxVL2NdjflL2lonFlf8b7dZVG4s19WzbW6QHEsWAEUEBxd5qo'),
(26, 2, 'dtdc6oQjqa3UsD8AGsdvtZIDrSu1hsPd2dRdTNNJMIqJ483DdQptSrnJ9SsEotLXrCr2AZQIdjssE6yW3K7KddBXUP18LLy5Bxau'),
(27, 2, 'R7E7DCJ9dKgZotmds6zp1ykXfPVwKH8d915CsVRiXFO8PsHGWTT7ZwACNTsAkdlk9WINBkftmdUbpr8xCv5yaXh3Afa5LSAwdMA5'),
(28, 2, 'PqKjvFnC2SbgkyVsoKihJW01p3rwLcErIEvmCtOptsjK6ws3bQXHKKtTrXHKzdWrtEnjFd2nazkdgRC2Ys4pXA8AqRzX7Zf7hRGs'),
(29, 4, 'w0mNUNJCLRTKPQP7eEuFAAR5iO9RcDUKm5zNtToY21csiWedrav1Jwps6JimtKimAJvt5U9QjdmaJIixqhnjghjlsdGYcddW4hDP'),
(30, 2, 'gG9bY0ONCVt8BPsVEciZeVddwTxRcSgvXYIfQY5ToiJ9hblHobNOE13Gdas0Arv4lPdiOSLXrABaylh5cavnHks7ZssZ982W0DgO'),
(31, 5, 'D0jGNJdyxP5KlClUuKpsmQuQwst6o9cCD3R6bstOoGmMoAJVW2oiqCZdIbG8YYDdZ6PGLA9E7LttWKid4BHdYGdjZRHyzFOEukoi'),
(32, 2, 'f8IG07a2dEPflIKtEEsGAs7sZV0Q5lSKksfAusvcwT0JNmHpBsjSCdSpcSl6WtscedkBOZltMHSOFmi8uRqWYsdolHGNplZsw58S');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
