-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2026 at 01:05 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sma_abbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata_guru`
--

CREATE TABLE `biodata_guru` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ekskul_siswa`
--

CREATE TABLE `ekskul_siswa` (
  `id` bigint UNSIGNED NOT NULL,
  `ekskul_id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_ekskul`
--

CREATE TABLE `jurnal_ekskul` (
  `id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `ekskul_id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `materi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absensi` json NOT NULL,
  `foto_kegiatan` json DEFAULT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_ekskul`
--

INSERT INTO `jurnal_ekskul` (`id`, `guru_id`, `ekskul_id`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `materi`, `absensi`, `foto_kegiatan`, `catatan`, `status`, `created_at`, `updated_at`, `jam_mulai`, `jam_selesai`) VALUES
(3, 2, 23, '2026-02-03', '16:00:00', '17:30:00', 'Smash', '[{\"nama\": \"Siswa X-TAH-21 - 1\", \"status\": \"hadir\", \"siswa_id\": \"41\"}, {\"nama\": \"Siswa X-TAH-21 - 2\", \"status\": \"hadir\", \"siswa_id\": \"42\"}, {\"nama\": \"Siswa XI-CAM-22 - 1\", \"status\": \"hadir\", \"siswa_id\": \"43\"}, {\"nama\": \"Siswa XI-CAM-22 - 2\", \"status\": \"hadir\", \"siswa_id\": \"44\"}, {\"nama\": \"Siswa XI-ICT-23 - 1\", \"status\": \"hadir\", \"siswa_id\": \"45\"}]', '[\"ekskul-photos/EkzeqTDlnjgzPYYffb5ydDWsrfsCdxZV9HahBQNv.png\", \"ekskul-photos/UxNoEEnDli5UsQk5oDWa39fVRAkfOc0gYyylDnCQ.png\", \"ekskul-photos/k9L0TcwgtAjwdRj72QZdvnSe5pgaVSCx6dA7TU04.png\", \"ekskul-photos/ee0M3nDTeLzTczmXI5CG1oqqL5jUQwPfJ7wnL3uA.png\", \"ekskul-photos/2KM2Vh2o5l8ZOwYhSnOn8LgTI8Mz69uUo7tMxp4t.png\", \"ekskul-photos/qtUhmlnEENuziTyrThpu6Fu1M2FWuQdoWyqJp9XK.png\", \"ekskul-photos/IMvKtvcbrSzfiivPKKugJH32MWtWyUNwB3Rq1TbY.png\", \"ekskul-photos/Rzpb0fFDlRXNlD9ItkYcWUpvn8H5W2kqabeiIqfe.png\", \"ekskul-photos/4l8vGqMoSAaQfmMxe9Ajm9uDVaBtOcRecR8LOEI3.png\", \"ekskul-photos/xP6h7vKP6TVM1xrEmHaLoO0AYqGdH6r975NZ8zsN.png\"]', '-', 'draft', '2026-02-03 09:19:25', '2026-02-03 09:21:52', NULL, NULL),
(4, 3, 8, '2026-02-04', '15:30:00', '16:30:00', 'UI/UX', '[{\"nama\": \"Siswa XII-TAH-18 - 2\", \"status\": \"hadir\", \"siswa_id\": \"36\"}, {\"nama\": \"Siswa X-CAM-19 - 1\", \"status\": \"izin\", \"siswa_id\": \"37\"}, {\"nama\": \"Siswa X-CAM-19 - 2\", \"status\": \"hadir\", \"siswa_id\": \"38\"}, {\"nama\": \"Siswa X-ICT-20 - 1\", \"status\": \"sakit\", \"siswa_id\": \"39\"}, {\"nama\": \"Siswa X-ICT-20 - 2\", \"status\": \"hadir\", \"siswa_id\": \"40\"}]', '[\"ekskul-photos/BqX71K9XqzfaeqKtu27n3zb3qaaH91SSxFHHmnTe.png\"]', '-', 'draft', '2026-02-04 07:01:25', '2026-02-04 07:01:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_kbm`
--

CREATE TABLE `jurnal_kbm` (
  `id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `materi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_pelajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absensi` json NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_kbm`
--

INSERT INTO `jurnal_kbm` (`id`, `guru_id`, `kelas_id`, `mapel_id`, `tanggal`, `jam_mulai`, `jam_selesai`, `materi`, `jam_pelajaran`, `absensi`, `catatan`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 11, 6, '2026-02-04', '13:00:00', '14:00:00', 'Aljabar', NULL, '\"[{\\\"nama\\\":\\\"Siswa X-ICT-11 - 1\\\",\\\"status\\\":\\\"Sakit\\\"},{\\\"nama\\\":\\\"Siswa X-ICT-11 - 2\\\",\\\"status\\\":\\\"Hadir\\\"}]\"', '-', 'draft', '2026-02-04 06:35:31', '2026-02-04 06:35:31'),
(6, 2, 15, 14, '2026-02-04', '08:30:00', '11:00:00', 'Dakwah', NULL, '\"[{\\\"nama\\\":\\\"Siswa XI-TAH-15 - 1\\\",\\\"status\\\":\\\"Hadir\\\"},{\\\"nama\\\":\\\"Siswa XI-TAH-15 - 2\\\",\\\"status\\\":\\\"Hadir\\\"}]\"', '-', 'draft', '2026-02-04 07:05:08', '2026-02-04 07:05:08'),
(7, 2, 14, 10, '2026-02-04', '10:10:00', '12:00:00', 'Noun', NULL, '\"[{\\\"nama\\\":\\\"Siswa XI-ICT-14 - 1\\\",\\\"status\\\":\\\"Hadir\\\"},{\\\"nama\\\":\\\"Siswa XI-ICT-14 - 2\\\",\\\"status\\\":\\\"Sakit\\\"}]\"', '-', 'draft', '2026-02-04 07:06:20', '2026-02-04 07:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_kegiatan`
--

CREATE TABLE `jurnal_kegiatan` (
  `id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `jenis_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta` json NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kegiatan` json DEFAULT NULL,
  `dokumentasi` json DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_kegiatan`
--

INSERT INTO `jurnal_kegiatan` (`id`, `guru_id`, `jenis_kegiatan`, `nama_kegiatan`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `lokasi`, `peserta`, `deskripsi`, `foto_kegiatan`, `dokumentasi`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'sosialisasi', 'Sosialisasi Demam Berdarah', '2026-02-03', '09:30:00', '12:00:00', 'Aula Sekolah', '{\"guru\": \"20\", \"siswa\": \"200\"}', '-', '[\"kegiatan-photos/MJeUEWZ8ya5BB0SGB2akZBeF5uuvAbhPfiBLK168.png\", \"kegiatan-photos/2dvJ2hYkw0jeKJQg6G0Zy0CgKz0aUuLPohqIKGJK.png\", \"kegiatan-photos/KLeZSFXdLsIbNXCyMLFTD70bO06ONaiea2L1VOdL.png\", \"kegiatan-photos/ydP0433lfjGkfxCkk9Y8QjoJg4wTtt94czdXg5cS.png\", \"kegiatan-photos/ktv3TI3ADZ34i0P8NR42r075LBeaIBiPE4Hs3KOY.png\", \"kegiatan-photos/yItO9Iy6xM2z2YGLu0SbgkPnheGjEzuxb25KkgcY.png\", \"kegiatan-photos/ANIyV3XLSTukLxZHxBwFac3zvcqaKveoc5GdnOdc.png\", \"kegiatan-photos/cpRQ5CPFM2BpifsHEaLBwGirAllSN5hZAmUHe2XD.png\", \"kegiatan-photos/Q8r2Zb9P73CKkTyzxUfBDwHjmZZJwhRlhpAJm4VD.png\", \"kegiatan-photos/a7XZ1VTQZVrjQzy7MudLuE7VxAMcmeTdbYW9BCKG.png\"]', '[{\"nama\": \"PERKAB DIKLAT 2025.pdf\", \"path\": \"kegiatan-dokumentasi/GGraV55hbdG5B5XhJ4M03Fb76xC6VpyonMUrsoxu.pdf\"}]', 'draft', '2026-02-03 09:21:19', '2026-02-03 09:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_piket`
--

CREATE TABLE `jurnal_piket` (
  `id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `hari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `guru_tidak_hadir` json DEFAULT NULL,
  `jumlah_siswa_tidak_hadir` int NOT NULL DEFAULT '0',
  `siswa_tidak_hadir_detail` json DEFAULT NULL,
  `tamu_sekolah` json DEFAULT NULL,
  `kejadian_penting` json DEFAULT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_piket`
--

INSERT INTO `jurnal_piket` (`id`, `guru_id`, `hari`, `tanggal`, `guru_tidak_hadir`, `jumlah_siswa_tidak_hadir`, `siswa_tidak_hadir_detail`, `tamu_sekolah`, `kejadian_penting`, `catatan`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'Selasa', '2026-02-03', '\"[{\\\"nama\\\":\\\"Alex\\\",\\\"catatan\\\":\\\"Sakit\\\"}]\"', 0, NULL, '\"[{\\\"nama\\\":\\\"Yanti\\\",\\\"tujuan\\\":\\\"Kunjungan\\\"}]\"', NULL, '-', 'draft', '2026-02-03 09:20:08', '2026-02-04 07:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_ekskul`
--

CREATE TABLE `master_ekskul` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ekskul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int UNSIGNED NOT NULL DEFAULT '30' COMMENT 'Kapasitas peserta ekskul',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_ekskul`
--

INSERT INTO `master_ekskul` (`id`, `nama_ekskul`, `kapasitas`, `created_at`, `updated_at`) VALUES
(1, 'Airsoft Gun', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(2, 'Akustik', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(3, 'Arabic Club', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(4, 'Astronomi', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(5, 'Badminton', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(6, 'Basket', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(7, 'Cooking Club', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(8, 'Desain Grafis', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(9, 'English Club', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(10, 'Fotografi', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(11, 'Futsal', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(12, 'IT Club', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(13, 'Jurnalistik', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(14, 'Karate', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(15, 'Manga', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(16, 'Panahan', 30, '2026-02-03 07:53:25', '2026-02-03 07:53:25'),
(17, 'Saman', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(18, 'Science Club', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(19, 'Taekwondo', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(20, 'Tapak Suci', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(21, 'Video Editing', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(22, 'Vocal Group', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(23, 'Voli', 30, '2026-02-03 07:53:26', '2026-02-03 07:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `master_kelas`
--

CREATE TABLE `master_kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IPA',
  `program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cambridge, ICT, Tahfidz',
  `kapasitas` int DEFAULT '32' COMMENT 'Jumlah maksimum siswa per kelas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_kelas`
--

INSERT INTO `master_kelas` (`id`, `nama_kelas`, `tingkat`, `created_at`, `updated_at`, `jurusan`, `program`, `kapasitas`) VALUES
(1, 'X-CAM-1', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(2, 'X-ICT-2', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(3, 'X-TAH-3', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(4, 'XI-CAM-4', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(5, 'XI-ICT-5', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(6, 'XI-TAH-6', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(7, 'XII-CAM-7', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(8, 'XII-ICT-8', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(9, 'XII-TAH-9', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(10, 'X-CAM-10', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(11, 'X-ICT-11', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(12, 'X-TAH-12', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(13, 'XI-CAM-13', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(14, 'XI-ICT-14', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(15, 'XI-TAH-15', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(16, 'XII-CAM-16', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(17, 'XII-ICT-17', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(18, 'XII-TAH-18', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(19, 'X-CAM-19', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(20, 'X-ICT-20', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(21, 'X-TAH-21', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(22, 'XI-CAM-22', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(23, 'XI-ICT-23', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(24, 'XI-TAH-24', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(25, 'XII-CAM-25', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(26, 'XII-ICT-26', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(27, 'XII-TAH-27', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(28, 'X-CAM-28', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(29, 'X-ICT-29', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(30, 'X-TAH-30', 'X', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(31, 'XI-CAM-31', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(32, 'XI-ICT-32', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32),
(33, 'XI-TAH-33', 'XI', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Tahfidz', 32),
(34, 'XII-CAM-34', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'Cambridge', 32),
(35, 'XII-ICT-35', 'XII', '2026-02-03 07:53:26', '2026-02-03 07:53:26', 'IPA', 'ICT', 32);

-- --------------------------------------------------------

--
-- Table structure for table `master_mapel`
--

CREATE TABLE `master_mapel` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_mapel` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_mapels`
--

CREATE TABLE `master_mapels` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cambridge, ICT, Tahfidz, Semua',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_mapels`
--

INSERT INTO `master_mapels` (`id`, `kode_mapel`, `nama_mapel`, `jenjang`, `program`, `created_at`, `updated_at`) VALUES
(1, 'CAM-MTK', 'Matematika', 'X-XII', 'Cambridge', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(2, 'CAM-FIS', 'Fisika', 'X-XII', 'Cambridge', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(3, 'CAM-KIM', 'Kimia', 'X-XII', 'Cambridge', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(4, 'CAM-BIG', 'Bahasa Inggris', 'X-XII', 'Cambridge', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(5, 'CAM-BIO', 'Biologi', 'X-XII', 'Cambridge', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(6, 'ICT-MTK', 'Matematika', 'X-XII', 'ICT', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(7, 'ICT-INF', 'Informatika', 'X-XII', 'ICT', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(8, 'ICT-KR', 'Komputer & Jaringan', 'X-XII', 'ICT', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(9, 'ICT-DG', 'Desain Grafis', 'X-XII', 'ICT', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(10, 'ICT-BIG', 'Bahasa Inggris', 'X-XII', 'ICT', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(11, 'TAH-PAI', 'Pendidikan Agama Islam', 'X-XII', 'Tahfidz', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(12, 'TAH-TAH', 'Tahfidz', 'X-XII', 'Tahfidz', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(13, 'TAH-AR', 'Bahasa Arab', 'X-XII', 'Tahfidz', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(14, 'TAH-AD', 'Akhlak & Dakwah', 'X-XII', 'Tahfidz', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(15, 'TAH-BIG', 'Bahasa Inggris', 'X-XII', 'Tahfidz', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(16, 'PKN', 'Pendidikan Kewarganegaraan', 'X-XII', 'Semua', '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(17, 'SEJ', 'Sejarah', 'X-XII', 'Semua', '2026-02-03 07:53:26', '2026-02-03 07:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `master_ruangan`
--

CREATE TABLE `master_ruangan` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kelas','laboratorium','perpustakaan','lainnya') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int DEFAULT NULL,
  `fasilitas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_tahun_ajaran`
--

CREATE TABLE `master_tahun_ajaran` (
  `id` bigint UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_tahun_ajarans`
--

CREATE TABLE `master_tahun_ajarans` (
  `id` bigint UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_tahun_ajarans`
--

INSERT INTO `master_tahun_ajarans` (`id`, `tahun_ajaran`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2024/2025', 1, '2026-01-23 09:49:30', '2026-02-03 07:34:26'),
(2, '2024/2025', 1, '2026-01-27 02:07:02', '2026-01-27 02:07:02'),
(3, '2024/2025', 1, '2026-01-29 03:27:06', '2026-01-29 03:27:06'),
(4, '2024/2025', 1, '2026-02-03 07:17:16', '2026-02-03 07:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_22_000000_create_sessions_table', 1),
(5, '2026_01_22_080935_create_master_tables', 1),
(6, '2026_01_22_082000_create_jurnal_kbm_table', 1),
(7, '2026_01_22_082001_create_jurnal_ekskul_table', 1),
(8, '2026_01_22_105840_create_jurnal_piket_table', 1),
(9, '2026_01_22_105921_create_jurnal_kegiatan_table', 1),
(10, '2026_01_22_105944_create_master_ruangan_table', 1),
(11, '2026_01_22_111734_create_master_tahun_ajarans_table', 1),
(12, '2026_01_23_163045_add_missing_columns_to_jurnal_kbm_table', 1),
(14, '2026_01_25_081646_add_columns_to_biodata_guru_table', 3),
(15, '2026_01_25_081856_add_jurusan_to_master_kelas_table', 4),
(16, '2026_01_25_081347_create_biodata_guru_table', 5),
(17, '2026_01_25_081313_create_biodata_guru_table', 6),
(18, '2026_01_25_081355_create_master_kelas_table', 7),
(19, '2026_01_25_081400_create_master_mapel_table', 7),
(20, '2026_01_25_081417_create_master_ekskul_table', 7),
(21, '2026_01_27_000000_update_users_table_for_username', 7),
(22, '2026_01_27_000001_simplify_users_table', 8),
(23, '2026_01_27_085158_create_siswas_table', 9),
(24, '2026_01_29_101426_add_jam_columns_to_jurnal_kbm_table', 10),
(25, '2026_01_29_102722_update_siswas_table', 11),
(26, '2026_02_02_000001_create_ekskul_siswa_table', 12),
(27, '2026_02_02_000002_add_waktu_to_jurnal_ekskul_table', 12),
(28, '2026_02_02_000000_create_siswa_ekstrakurikuler_table', 13),
(29, '2026_02_02_000001_add_jam_to_jurnal_ekskul_table', 13),
(30, '2026_02_03_000001_add_program_to_master_mapels', 13),
(31, '2026_02_03_000002_update_master_kelas_remove_wali_add_program', 14),
(32, '2026_02_03_000003_update_master_ekskul_remove_deskripsi', 14),
(33, '2026_02_03_000005_add_kapasitas_to_master_kelas', 14),
(34, '2026_02_03_000006_change_tingkat_column_type', 14),
(35, '2026_02_03_000007_dedupe_master_ekskul_and_mapel', 15),
(36, '2026_02_03_000009_drop_pembina_from_master_ekskul', 16),
(37, '2026_02_03_000010_add_kapasitas_to_master_ekskul', 17),
(38, '2026_02_04_000001_remove_nisn_add_nis_to_siswas', 18),
(39, '2026_02_04_000002_make_kelas_id_nullable_on_siswas', 18);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('K1BMalGRrXkXxFypgNRMxwodHVYYBoMSxmjfwfnP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjlGNUNLaFZiUXFINjlRZm5ob2U2a1dKSXhJaTdha3dIc3FRY3lENiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9zbWEtYWJicy1zdXJha2FydGEudGVzdC9wdWJsaWMvZGFzaGJvYXJkIjtzOjU6InJvdXRlIjtzOjk6ImRhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1770225323),
('T5tw057Qtu46gznEXxLwlaTlB78m9a3r8ujMwOWR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0dBQ3hrYTIyem9BUUVhaTVLcWpUelNxMjdRTVd4NlNUN2t1Nm1EZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9zbWEtYWJicy1zdXJha2FydGEudGVzdC9wdWJsaWMvbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1770293673);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED DEFAULT NULL,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `kelas_id`, `nama_siswa`, `created_at`, `updated_at`, `nis`, `jenis_kelamin`) VALUES
(1, 1, 'Siswa X-CAM-1 - 1', '2026-02-03 07:53:26', '2026-02-04 08:22:37', '1000001', 'L'),
(2, 1, 'Siswa X-CAM-1 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000002', 'P'),
(3, 2, 'Siswa X-ICT-2 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000003', 'L'),
(4, 2, 'Siswa X-ICT-2 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000004', 'P'),
(5, 3, 'Siswa X-TAH-3 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000005', 'L'),
(6, 3, 'Siswa X-TAH-3 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000006', 'P'),
(7, 4, 'Siswa XI-CAM-4 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000007', 'L'),
(8, 4, 'Siswa XI-CAM-4 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000008', 'P'),
(9, 5, 'Siswa XI-ICT-5 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000009', 'L'),
(10, 5, 'Siswa XI-ICT-5 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000010', 'P'),
(11, 6, 'Siswa XI-TAH-6 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000011', 'L'),
(12, 6, 'Siswa XI-TAH-6 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000012', 'P'),
(13, 7, 'Siswa XII-CAM-7 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000013', 'L'),
(14, 7, 'Siswa XII-CAM-7 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000014', 'P'),
(15, 8, 'Siswa XII-ICT-8 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000015', 'L'),
(16, 8, 'Siswa XII-ICT-8 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000016', 'P'),
(17, 9, 'Siswa XII-TAH-9 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000017', 'L'),
(18, 9, 'Siswa XII-TAH-9 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000018', 'P'),
(19, 10, 'Siswa X-CAM-10 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000019', 'L'),
(20, 10, 'Siswa X-CAM-10 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000020', 'P'),
(21, 11, 'Siswa X-ICT-11 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000021', 'L'),
(22, 11, 'Siswa X-ICT-11 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000022', 'P'),
(23, 12, 'Siswa X-TAH-12 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000023', 'L'),
(24, 12, 'Siswa X-TAH-12 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000024', 'P'),
(25, 13, 'Siswa XI-CAM-13 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000025', 'L'),
(26, 13, 'Siswa XI-CAM-13 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000026', 'P'),
(27, 14, 'Siswa XI-ICT-14 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000027', 'L'),
(28, 14, 'Siswa XI-ICT-14 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000028', 'P'),
(29, 15, 'Siswa XI-TAH-15 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000029', 'L'),
(30, 15, 'Siswa XI-TAH-15 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000030', 'P'),
(31, 16, 'Siswa XII-CAM-16 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000031', 'L'),
(32, 16, 'Siswa XII-CAM-16 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000032', 'P'),
(33, 17, 'Siswa XII-ICT-17 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000033', 'L'),
(34, 17, 'Siswa XII-ICT-17 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000034', 'P'),
(35, 18, 'Siswa XII-TAH-18 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000035', 'L'),
(36, 18, 'Siswa XII-TAH-18 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000036', 'P'),
(37, 19, 'Siswa X-CAM-19 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000037', 'L'),
(38, 19, 'Siswa X-CAM-19 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000038', 'P'),
(39, 20, 'Siswa X-ICT-20 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000039', 'L'),
(40, 20, 'Siswa X-ICT-20 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000040', 'P'),
(41, 21, 'Siswa X-TAH-21 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000041', 'L'),
(42, 21, 'Siswa X-TAH-21 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000042', 'P'),
(43, 22, 'Siswa XI-CAM-22 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000043', 'L'),
(44, 22, 'Siswa XI-CAM-22 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000044', 'P'),
(45, 23, 'Siswa XI-ICT-23 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000045', 'L'),
(46, 23, 'Siswa XI-ICT-23 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000046', 'P'),
(47, 24, 'Siswa XI-TAH-24 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000047', 'L'),
(48, 24, 'Siswa XI-TAH-24 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000048', 'P'),
(49, 25, 'Siswa XII-CAM-25 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000049', 'L'),
(50, 25, 'Siswa XII-CAM-25 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000050', 'P'),
(51, 26, 'Siswa XII-ICT-26 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000051', 'L'),
(52, 26, 'Siswa XII-ICT-26 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000052', 'P'),
(53, 27, 'Siswa XII-TAH-27 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000053', 'L'),
(54, 27, 'Siswa XII-TAH-27 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000054', 'P'),
(55, 28, 'Siswa X-CAM-28 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000055', 'L'),
(56, 28, 'Siswa X-CAM-28 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000056', 'P'),
(57, 29, 'Siswa X-ICT-29 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000057', 'L'),
(58, 29, 'Siswa X-ICT-29 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000058', 'P'),
(59, 30, 'Siswa X-TAH-30 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000059', 'L'),
(60, 30, 'Siswa X-TAH-30 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000060', 'P'),
(61, 31, 'Siswa XI-CAM-31 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000061', 'L'),
(62, 31, 'Siswa XI-CAM-31 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000062', 'P'),
(63, 32, 'Siswa XI-ICT-32 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000063', 'L'),
(64, 32, 'Siswa XI-ICT-32 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000064', 'P'),
(65, 33, 'Siswa XI-TAH-33 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000065', 'L'),
(66, 33, 'Siswa XI-TAH-33 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000066', 'P'),
(67, 34, 'Siswa XII-CAM-34 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000067', 'L'),
(68, 34, 'Siswa XII-CAM-34 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000068', 'P'),
(69, 35, 'Siswa XII-ICT-35 - 1', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000069', 'L'),
(70, 35, 'Siswa XII-ICT-35 - 2', '2026-02-03 07:53:26', '2026-02-03 07:53:26', '1000070', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_ekstrakurikuler`
--

CREATE TABLE `siswa_ekstrakurikuler` (
  `id` bigint UNSIGNED NOT NULL,
  `ekstrakurikuler_id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa_ekstrakurikuler`
--

INSERT INTO `siswa_ekstrakurikuler` (`id`, `ekstrakurikuler_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(2, 1, 2, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(3, 1, 3, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(4, 1, 4, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(5, 1, 5, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(6, 2, 6, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(7, 2, 7, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(8, 2, 8, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(9, 2, 9, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(10, 2, 10, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(11, 3, 11, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(12, 3, 12, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(13, 3, 13, '2026-02-03 07:53:26', '2026-02-03 07:53:26'),
(14, 3, 14, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(15, 3, 15, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(16, 4, 16, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(17, 4, 17, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(18, 4, 18, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(19, 4, 19, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(20, 4, 20, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(21, 5, 21, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(22, 5, 22, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(23, 5, 23, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(24, 5, 24, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(25, 5, 25, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(26, 6, 26, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(27, 6, 27, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(28, 6, 28, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(29, 6, 29, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(30, 6, 30, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(31, 7, 31, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(32, 7, 32, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(33, 7, 33, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(34, 7, 34, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(35, 7, 35, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(36, 8, 36, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(37, 8, 37, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(38, 8, 38, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(39, 8, 39, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(40, 8, 40, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(41, 9, 41, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(42, 9, 42, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(43, 9, 43, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(44, 9, 44, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(45, 9, 45, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(46, 10, 46, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(47, 10, 47, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(48, 10, 48, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(49, 10, 49, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(50, 10, 50, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(51, 11, 51, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(52, 11, 52, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(53, 11, 53, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(54, 11, 54, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(55, 11, 55, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(56, 12, 56, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(57, 12, 57, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(58, 12, 58, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(59, 12, 59, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(60, 12, 60, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(61, 13, 61, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(62, 13, 62, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(63, 13, 63, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(64, 13, 64, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(65, 13, 65, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(66, 14, 66, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(67, 14, 67, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(68, 14, 68, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(69, 14, 69, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(70, 14, 70, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(71, 15, 1, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(72, 15, 2, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(73, 15, 3, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(74, 15, 4, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(75, 15, 5, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(76, 16, 6, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(77, 16, 7, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(78, 16, 8, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(79, 16, 9, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(80, 16, 10, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(81, 17, 11, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(82, 17, 12, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(83, 17, 13, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(84, 17, 14, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(85, 17, 15, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(86, 18, 16, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(87, 18, 17, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(88, 18, 18, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(89, 18, 19, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(90, 18, 20, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(91, 19, 21, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(92, 19, 22, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(93, 19, 23, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(94, 19, 24, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(95, 19, 25, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(96, 20, 26, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(97, 20, 27, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(98, 20, 28, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(99, 20, 29, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(100, 20, 30, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(101, 21, 31, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(102, 21, 32, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(103, 21, 33, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(104, 21, 34, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(105, 21, 35, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(106, 22, 36, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(107, 22, 37, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(108, 22, 38, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(109, 22, 39, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(110, 22, 40, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(111, 23, 41, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(112, 23, 42, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(113, 23, 43, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(114, 23, 44, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(115, 23, 45, '2026-02-03 07:53:27', '2026-02-03 07:53:27'),
(118, 5, 1, '2026-02-04 07:24:03', '2026-02-04 07:24:03'),
(119, 5, 2, '2026-02-04 07:24:03', '2026-02-04 07:24:03'),
(120, 5, 19, '2026-02-04 07:24:03', '2026-02-04 07:24:03'),
(121, 5, 20, '2026-02-04 07:24:03', '2026-02-04 07:24:03'),
(122, 5, 37, '2026-02-04 07:24:03', '2026-02-04 07:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','guru','siswa','wali') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siswa',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin ABBS Surakarta', 'adminabbssurakarta', '$2y$12$Zfc2W2O7juUzjbmLdJ08vul7KByzufFeULi4HillUpbJaUs/n7ZHu', 'admin', '2026-01-29 03:27:06', '2026-01-29 03:27:06'),
(2, 'Yanto Hermawan', 'yanto', '12345678', 'guru', '2026-01-29 03:32:06', '2026-02-04 06:37:16'),
(3, 'Bambang Pamukas', 'bambang', '87654321', 'guru', '2026-01-29 03:55:45', '2026-02-04 06:38:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata_guru`
--
ALTER TABLE `biodata_guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_guru_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `ekskul_siswa`
--
ALTER TABLE `ekskul_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ekskul_siswa_ekskul_id_siswa_id_unique` (`ekskul_id`,`siswa_id`),
  ADD KEY `ekskul_siswa_siswa_id_foreign` (`siswa_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnal_ekskul`
--
ALTER TABLE `jurnal_ekskul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_ekskul_guru_id_foreign` (`guru_id`),
  ADD KEY `jurnal_ekskul_ekskul_id_foreign` (`ekskul_id`);

--
-- Indexes for table `jurnal_kbm`
--
ALTER TABLE `jurnal_kbm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_kbm_guru_id_foreign` (`guru_id`),
  ADD KEY `jurnal_kbm_kelas_id_foreign` (`kelas_id`),
  ADD KEY `jurnal_kbm_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `jurnal_kegiatan`
--
ALTER TABLE `jurnal_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_kegiatan_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `jurnal_piket`
--
ALTER TABLE `jurnal_piket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_piket_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `master_ekskul`
--
ALTER TABLE `master_ekskul`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_ekskul_nama_ekskul_unique` (`nama_ekskul`);

--
-- Indexes for table `master_kelas`
--
ALTER TABLE `master_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_mapel`
--
ALTER TABLE `master_mapel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_mapel_kode_mapel_unique` (`kode_mapel`);

--
-- Indexes for table `master_mapels`
--
ALTER TABLE `master_mapels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_mapels_nama_mapel_program_unique` (`nama_mapel`,`program`);

--
-- Indexes for table `master_ruangan`
--
ALTER TABLE `master_ruangan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_ruangan_kode_ruangan_unique` (`kode_ruangan`);

--
-- Indexes for table `master_tahun_ajaran`
--
ALTER TABLE `master_tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tahun_ajarans`
--
ALTER TABLE `master_tahun_ajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `siswa_ekstrakurikuler`
--
ALTER TABLE `siswa_ekstrakurikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_se_ekskul` (`ekstrakurikuler_id`),
  ADD KEY `fk_se_siswa` (`siswa_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata_guru`
--
ALTER TABLE `biodata_guru`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ekskul_siswa`
--
ALTER TABLE `ekskul_siswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurnal_ekskul`
--
ALTER TABLE `jurnal_ekskul`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jurnal_kbm`
--
ALTER TABLE `jurnal_kbm`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jurnal_kegiatan`
--
ALTER TABLE `jurnal_kegiatan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jurnal_piket`
--
ALTER TABLE `jurnal_piket`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_ekskul`
--
ALTER TABLE `master_ekskul`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `master_kelas`
--
ALTER TABLE `master_kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `master_mapel`
--
ALTER TABLE `master_mapel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_mapels`
--
ALTER TABLE `master_mapels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `master_ruangan`
--
ALTER TABLE `master_ruangan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_tahun_ajaran`
--
ALTER TABLE `master_tahun_ajaran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_tahun_ajarans`
--
ALTER TABLE `master_tahun_ajarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `siswa_ekstrakurikuler`
--
ALTER TABLE `siswa_ekstrakurikuler`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodata_guru`
--
ALTER TABLE `biodata_guru`
  ADD CONSTRAINT `biodata_guru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ekskul_siswa`
--
ALTER TABLE `ekskul_siswa`
  ADD CONSTRAINT `ekskul_siswa_ekskul_id_foreign` FOREIGN KEY (`ekskul_id`) REFERENCES `master_ekskul` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ekskul_siswa_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jurnal_ekskul`
--
ALTER TABLE `jurnal_ekskul`
  ADD CONSTRAINT `jurnal_ekskul_ekskul_id_foreign` FOREIGN KEY (`ekskul_id`) REFERENCES `master_ekskul` (`id`),
  ADD CONSTRAINT `jurnal_ekskul_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jurnal_kbm`
--
ALTER TABLE `jurnal_kbm`
  ADD CONSTRAINT `jurnal_kbm_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jurnal_kbm_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `master_kelas` (`id`),
  ADD CONSTRAINT `jurnal_kbm_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `master_mapels` (`id`);

--
-- Constraints for table `jurnal_kegiatan`
--
ALTER TABLE `jurnal_kegiatan`
  ADD CONSTRAINT `jurnal_kegiatan_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jurnal_piket`
--
ALTER TABLE `jurnal_piket`
  ADD CONSTRAINT `jurnal_piket_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `master_kelas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `siswa_ekstrakurikuler`
--
ALTER TABLE `siswa_ekstrakurikuler`
  ADD CONSTRAINT `fk_se_ekskul` FOREIGN KEY (`ekstrakurikuler_id`) REFERENCES `master_ekskul` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_se_siswa` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
