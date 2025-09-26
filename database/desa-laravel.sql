-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2025 at 01:48 PM
-- Server version: 11.4.3-MariaDB-log
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agama` varchar(255) NOT NULL,
  `penganut` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `penganut`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 100, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kristen', 30, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Katolik', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Hindu', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(5, 'Budha', 15, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(6, 'Konghucu', 6, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `anggarans`
--

CREATE TABLE `anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggarans`
--

INSERT INTO `anggarans` (`id`, `judul`, `slug`, `keterangan`, `gambar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rincian Dana Desa 2024', 'rincian-dana-desa', '<p>Contoh saja</p>', 'img-anggaran//67aaf242796a8.jpeg', 1, '2025-02-11 06:46:26', '2025-02-11 06:46:49'),
(2, 'Rincian 2025', 'rincian-2025', '<p>Contoh Saja</p>', 'img-anggaran//67aaf2a551c24.png', 1, '2025-02-11 06:48:05', '2025-02-11 06:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `excerpt` longtext NOT NULL,
  `isi_pengumuman` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `judul`, `slug`, `views`, `excerpt`, `isi_pengumuman`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cek Kesehatan Gratis', 'cek-kesehatan-gratis', 2, 'Mahasiswa KKN 39 yang berkolaborasi dengan Puskesmas Bangbayang mengadakan Cek Kesehatan Gratis bagi seluruh warga Desa Calingcing ! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda d...', '<p>Mahasiswa KKN 39 yang berkolaborasi dengan Puskesmas Bangbayang mengadakan <strong>Cek Kesehatan Gratis</strong> bagi seluruh warga Desa Calingcing ! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara gratis.</p><p>📅 <strong>Tanggal:</strong> [Isi tanggal kegiatan]<br>🕘 <strong>Waktu:</strong> [Isi waktu kegiatan]<br>📍 <strong>Lokasi:</strong> [Isi lokasi kegiatan]</p><p>🔍 <strong>Layanan yang tersedia:</strong><br>✅ Pemeriksaan tekanan darah<br>✅ Cek gula darah<br>✅ Pemeriksaan kolesterol<br>✅ Konsultasi kesehatan dengan dokter<br>✅ Edukasi pola hidup sehat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Warga Desa Calingcing&nbsp;<br>📌 Datang sesuai jadwal dan tetap menjaga protokol kesehatan</p><p>Jangan lewatkan kesempatan ini! Ajak keluarga dan kerabat untuk bersama-sama menjaga kesehatan.</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Salam sehat,<br><strong>Dinas Kesehatan Kota Bandung</strong></p>', 1, '2025-02-11 06:42:52', '2025-09-04 21:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `excerpt`, `slug`, `views`, `body`, `user_id`, `status_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 'img-berita/67aae89f0d739.jpg', 'Percepatan Penanggulangan Stunting di Kampung Cijoho', 'Pada 3 September 2025, media Jurnal Inspirasi mengabarkan upaya serius pemerintah desa bersama tenag...', 'percepatan-penanggulangan-stunting-di-kampung-cijoho', 2, '<p>Pada <strong>3 September 2025</strong>, media <i>Jurnal Inspirasi</i> mengabarkan upaya serius pemerintah desa bersama tenaga kesehatan untuk menurunkan angka stunting di Kampung Cijoho. Bidan Desa, Irma Farida, menyampaikan bahwa mereka tidak hanya fokus pada gizi, tetapi juga pola asuh, sanitasi, dan kesehatan lansia. Berbagai program telah dijalankan seperti edukasi gizi, pemberian makanan tambahan berbasis lokal, gotong royong memperbaiki sanitasi, serta pemeriksaan kesehatan lansia. Upaya ini melibatkan Puskesmas, kader posyandu, serta seluruh lapisan masyarakat.</p>', 1, 2, 4, '2025-02-11 06:05:19', '2025-09-07 02:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `berita_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-gallery//67aaef79b6621.png', 'Curug Maribaya', 1, '2025-02-11 06:34:33', '2025-02-11 06:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 70, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Perempuan', 55, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kesenian', 'kesenian', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'UMKM', 'umkm', 1, '2025-02-11 06:05:44', '2025-02-11 06:05:44'),
(4, 'pariwisata', 'pariwisata', 1, '2025-02-11 06:26:07', '2025-02-11 06:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontaks`
--

INSERT INTO `kontaks` (`id`, `lokasi`, `email`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Calincing, Tegal Buleud', 'admin@gmail.com', '0882260686031', 1, '2025-02-11 03:21:45', '2025-09-05 04:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `persyaratan` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `layanan`, `persyaratan`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Pendaftaran Layanan Kesehatan di Puskesmas Secara Online', '<p><strong>Sistem yang Dikembangkan Sendiri oleh Puskesmas:</strong> Setiap Puskesmas mungkin memiliki sistem pendaftaran online yang unik. Petunjuk pendaftaran biasanya tersedia di situs web Puskesmas atau dapat diperoleh melalui kontak telepon.</p><p><strong>Platform Kesehatan Online Pemerintah:</strong> Jika tersedia,&nbsp;</p><p><strong>Aplikasi Pihak Ketiga:</strong> Beberapa Puskesmas mungkin bekerja sama dengan aplikasi pihak ketiga untuk menyediakan layanan pendaftaran online.&nbsp;</p><p><strong>Akses Situs Web atau Aplikasi:</strong> Buka situs web Puskesmas atau aplikasi yang telah ditentukan.</p><p><strong>Pendaftaran Akun:</strong> Jika diperlukan, buat akun dengan mengisi data diri yang diminta.</p><p><strong>Pilih Layanan:</strong> Pilih jenis layanan kesehatan yang dibutuhkan dan jadwal kunjungan.</p><p><strong>Konfirmasi Pendaftaran:</strong> Setelah mengisi semua informasi yang diperlukan, konfirmasi pendaftaran Anda.</p>', 1, '2025-02-11 06:24:18', '2025-09-04 21:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_13_022605_create_sliders_table', 1),
(7, '2023_09_14_134427_create_beritas_table', 1),
(8, '2023_09_14_142413_create_post_statuses_table', 1),
(9, '2023_09_14_223318_create_kategoris_table', 1),
(10, '2023_09_17_091224_create_comments_table', 1),
(11, '2023_09_18_054320_create_comment_replies_table', 1),
(12, '2023_09_18_173129_create_wilayahs_table', 1),
(13, '2023_09_18_203110_create_sejarahs_table', 1),
(14, '2023_09_18_210113_create_visi_misis_table', 1),
(15, '2023_09_19_061945_create_perangkat_desas_table', 1),
(16, '2023_09_21_054915_create_agamas_table', 1),
(17, '2023_09_21_073255_create_jenis_kelamins_table', 1),
(18, '2023_09_21_085821_create_pekerjaans_table', 1),
(19, '2023_09_23_063218_create_petas_table', 1),
(20, '2023_09_24_051908_create_umkms_table', 1),
(21, '2023_09_25_061424_create_kontaks_table', 1),
(22, '2023_09_25_075226_create_video_profils_table', 1),
(23, '2023_09_26_054211_create_situses_table', 1),
(24, '2023_11_29_060538_create_layanans_table', 1),
(25, '2023_11_29_073753_create_galleries_table', 1),
(26, '2023_11_29_164313_create_announcements_table', 1),
(27, '2023_11_29_201150_create_anggarans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaans`
--

CREATE TABLE `pekerjaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Petani', 132, 1, '2025-02-11 03:21:45', '2025-02-11 04:55:09'),
(2, 'Pegawai Negeri', 14, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Belum/Tidak bekerja', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Pensiunan', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_desas`
--

CREATE TABLE `perangkat_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perangkat_desas`
--

INSERT INTO `perangkat_desas` (`id`, `nama`, `foto`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Suherlan', 'img-perangkat//67aaf46b5d68e.jpg', 'Kepala Desa', 1, '2025-02-11 03:21:45', '2025-09-04 21:26:53'),
(2, 'Ramdan', 'img-perangkat//67aaf45773274.jpg', 'Sekretaris Desa', 1, '2025-02-11 03:21:45', '2025-09-04 21:26:16'),
(4, 'Hidayat', 'img-perangkat//67aaf3e13146a.jpg', 'Kepala Dusun', 1, '2025-02-11 03:21:45', '2025-09-04 21:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petas`
--

CREATE TABLE `petas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petas`
--

INSERT INTO `petas` (`id`, `judul`, `alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peta Desa', 'Desa Calingcing tegal buleud', 1, '2025-02-11 03:21:45', '2025-09-07 01:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `post_statuses`
--

CREATE TABLE `post_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_statuses`
--

INSERT INTO `post_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'publish', '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Desa Calingcing', '<p><strong>Lokasi &amp; Administrasi</strong></p><p>Desa Calingcing merupakan bagian dari Kecamatan Tegalbuleud, Kabupaten Sukabumi, Provinsi Jawa Barat (kodepos: 43186). Wilayah Tegal Buleud dikenal sebagai daerah pesisir yang banyak menghasilkan padi dan karet, serta memiliki potensi wisata seperti surfing dan memancing</p><p><strong>Pendidikan</strong></p><p>SD Negeri Calingcing berdiri sejak tahun 1957, memiliki akreditasi B (update terakhir: 15 Oktober 2014), dan tetap melayani pendidikan di desa. Ada juga PAUD Aster I yang resmi berdiri sejak tahun 2009 untuk pendidikan anak usia dini di kampung Calingcing</p><p><strong>Infrastruktur &amp; Pembangunan</strong></p><p>Pada tahun 2025, dilakukan pengaspalan jalan desa sepanjang 200 meter di ruas Puncakpilar–Cihaur, dengan dana desa sebesar Rp 68,37 juta dan melibatkan gotong royong warga. Namun, ada sorotan publik mengenai kualitas aspal yang digunakan, dimana diduga hanya “aspal Lapen” padahal mengklaim memakai aspal Pertamina original.</p><p><strong>Kegiatan Sosial &amp; Gotong Royong</strong></p><p>Babinsa (bintara pembina desa) melakukan kegiatan karya bakti bersama warga untuk memperbaiki rumah-rumah yang rusak di Kampung Cisaray, Desa Calingcing. Juga dilakukan sosialisasi bahaya stunting oleh Pemdes Calingcing dengan melibatkan Puskesmas Bangbayang pada tahun 2020 sebagai upaya meningkatkan kesehatan anak-anak.</p><p><strong>Kondisi Sosial &amp; ekonomi</strong></p><p>Laporan jurnalis menunjukan kondisi rumah warga di Citatah (RT 15/05) yang nyaris roboh struktur kayu lapuk, atap bocor ditinggali oleh keluarga yang penghasilannya dari buruh serabutan. Desa telah mengajukan bantuan melalui program Rutilahu namun belum terealisasi.</p><p>Ini menunjukkan adanya tantangan dalam hal kesejahteraan dan infrastruktur rumah tangga yang layak.</p>', 1, '2025-02-11 03:21:45', '2025-09-07 02:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `situses`
--

CREATE TABLE `situses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nm_desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situses`
--

INSERT INTO `situses` (`id`, `logo`, `nm_desa`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-logo//68ba00f940bad.jpeg', 'Desa Calingcing', 'Tegal Buleud', 'Sukabumi', 'JawaBarat', 43186, 1, '2025-02-11 03:21:45', '2025-09-04 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_slider` varchar(255) DEFAULT NULL,
  `link_btn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `img_slider`, `link_btn`, `created_at`, `updated_at`) VALUES
(1, 'Website Profil UMKM Desa', 'Tujuan pembuatan website profil UMKM Desa Calingcing adalah untuk memperkenalkan dan mempromosikan produk-produk lokal unggulan desa secara digital, memperluas jangkauan pasar hingga tingkat nasional, mempermudah akses informasi mengenai profil usaha, produk, harga, dan cara pemesanan, meningkatkan kepercayaan konsumen melalui transparansi dan testimoni, mendukung digitalisasi desa agar UMKM tidak tertinggal perkembangan teknologi, serta mendorong pertumbuhan ekonomi lokal, membuka lapangan kerja, dan meningkatkan kesejahteraan masyarakat secara berkelanjutan.', 'img-slider//67aac9d9e8306.jpg', '#', '2025-02-11 03:21:45', '2025-09-07 02:25:58'),
(2, 'Sejarah UMKM Desa', 'Desa Calingcing dikenal sebagai sentra industri rumahan, khususnya dalam produksi gula kelapa tradisional yang telah diwariskan secara turun-temurun , Dikelilingi oleh kebun kelapa rakyat, masyarakat memanfaatkan air nira untuk menghasilkan gula kelapa berkualitas tinggi yang terkenal hingga pasar lokal dan regional.\r\n\r\nLebih dari 70% pelaku UMKM di desa ini bergerak di sektor gula kelapa, menjadikan Calingcing sebagai salah satu penghasil utama gula merah alami di Sukabumi. Selain itu, terdapat juga industri rumahan lain seperti tahu, tempe, bakso, dan berbagai produk olahan lainnya yang turut menggerakkan roda perekonomian desa.\r\n\r\nWebsite ini hadir sebagai pusat informasi, pelayanan publik, serta wadah promosi potensi desa kepada masyarakat luas.', 'img-slider//67aacc68000d2.png', '#', '2025-02-11 03:21:45', '2025-09-07 00:54:36'),
(3, 'Visi & Misi', 'Visi:\r\n\r\nMenjadikan UMKM Desa Calingcing sebagai penggerak ekonomi kreatif berbasis potensi lokal yang mandiri, inovatif, dan berdaya saing, untuk meningkatkan kesejahteraan masyarakat serta mendukung Desa Calingcing sebagai desa maju dan berkelanjutan\r\n\r\nMisi:\r\n\r\nMengembangkan produk unggulan lokal (pertanian, hasil laut, olahan pangan, dan kerajinan tangan) dengan inovasi yang bernilai tambah.\r\n\r\nMeningkatkan kualitas dan kapasitas pelaku UMKM melalui pelatihan manajemen, teknologi, dan pemasaran digital.\r\n\r\nMendorong promosi dan pemasaran produk UMKM baik di tingkat lokal, regional, maupun nasional dengan memanfaatkan media online dan offline.\r\n\r\nMembangun jejaring kerjasama dengan pemerintah, lembaga keuangan, dan komunitas usaha untuk memperluas peluang pasar.\r\n\r\nMewujudkan UMKM ramah lingkungan dengan mengedepankan prinsip keberlanjutan dan pemanfaatan sumber daya alam secara bijak.\r\n\r\nMenciptakan lapangan kerja baru yang dapat mengurangi pengangguran dan meningkatkan taraf hidup masyarakat Desa Calingcing.', 'img-slider//67aaca21bd8df.jpeg', '#', '2025-02-11 03:21:45', '2025-09-07 02:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umkms`
--

INSERT INTO `umkms` (`id`, `foto`, `produk`, `slug`, `harga`, `deskripsi`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'img-produk//68ba078866716.jpeg', 'Gula Merah', 'gula-merah', 18000, '<p>Gula merah yang ada di daerah puncak pilar, desa calingcing berdiri nya pada tahun 2012 dan memang dari dulunya pun pengolahan gula telah berdiri sebelum bapak sutrisno.</p><p>Bapak sutrisno mempunyai motivasi untuk membangun pengolahan gula karena pa sutrisno sendiri mempunyai banyak pohon kelapa dan mayoritas di desa calincing memiliki ladang kelapa sendiri. kebanyakan usaha gula di desa calingcing dilakukan oleh perorangan. bapak sutrisno dalam usaha gula nya ini telah bertahan selama 13 tahun sebagai produsen gula merah di desa calingcing.</p><p>Penghasilan rata rata dari bapa sutrisno sendiri itu dari 20 kg itu 300 perhari, Adapun bahan pokok nya itu adalah biang gula dan kayu bakar, alat alat yang harus tersedia itu ada wajan besar mangkok untuk mencetak dan minyak yang nantinya digunakan untuk mengoles di mangkok agar gula tidak lengket</p><p>Waktu pembuatan gula sekitar 8 jam hingga menyurut, dan bapak sutrisno memproduksi nya setiap hari dimana dalam sehari pa sutrisno bisa memproduksi sampai 17 kg atau 17 mangkok.&nbsp;</p><p>Bapak sutrisno juga menjual hasil produksi gula merah dengan menjual bebas karena tidak mempunyai bos dan menjual nya pun masih di daerah terdekat dengan menggunakan sepeda motor.</p><p>Adapun proses pembuatan nya yang paling awal itu adalah mengambil sari dari bunga kelapa yang ada di pohon kelapa dengan memotong si bunga kelapa nya sehingga nanti nya mengeluarkan air, air ini akan di tampung dalam jerigen dan penyadap, sambil menunggu jerigen penuh itu sekitar satu minggu kemudian setelah jerigen penuh maka akan langsung mengolah air sari bunga kelapa dengan merebus nya hingga menyurut. kemudian penyadap juga menambahkan biang gula agar gula mengental dan bisa di cetak di dalam mangkok.</p>', '83434342323', 1, '2025-02-11 06:15:18', '2025-09-07 02:34:37'),
(4, 'img-produk/68bce913ece55.jpg', 'Tahu Bandung AS', 'tahu-bandung-as', 3500, '<p>Usaha pembuatan tahu yang dikelola oleh Bapak Toni berdiri sejak tahun 2011 di Kampung Cijoho RT 11 RW 05, Desa Calingcing, Kecamatan Tegalbuleud, Kabupaten Sukabumi. Dalam menjalankan usahanya, beliau dibantu oleh 4 orang karyawan tetap, dan pada waktu tertentu juga turut melibatkan ibu-ibu sekitar yang membantu proses produksi.</p><p>Kegiatan produksi dimulai sejak pukul 05.30 pagi. Namun, waktu selesai bekerja tidak menentu karena menyesuaikan dengan banyaknya pesanan dari konsumen. Tingginya permintaan membuat produksi tahu ini terus berjalan secara intensif, sehingga usaha ini mampu memberi manfaat tidak hanya bagi keluarga pengusaha tetapi juga membuka lapangan pekerjaan bagi warga sekitar.</p>', '85811429443', 1, '2025-09-07 02:08:20', '2025-09-07 02:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img-profil/user-1.jpg', 'admin', 'admin@gmail.com', NULL, '$2y$10$y524SMmxYHjWaYnq9OmZvOyo9tMISdjVPs72wj9ngvruf3sj7D0S2', NULL, '2025-02-11 03:21:45', '2025-02-11 07:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `video_profils`
--

CREATE TABLE `video_profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_profils`
--

INSERT INTO `video_profils` (`id`, `url_video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/sdSeRoNpJO4', 1, '2025-02-11 03:21:45', '2025-09-04 21:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `visi`, `misi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Menjadikan UMKM Desa Calingcing sebagai penggerak ekonomi kreatif berbasis potensi lokal yang mandiri, inovatif, dan berdaya saing, untuk meningkatkan kesejahteraan masyarakat serta mendukung Desa Calingcing sebagai desa maju dan berkelanjutan', 'Mengembangkan produk unggulan lokal (pertanian, hasil laut, olahan pangan, dan kerajinan tangan) dengan inovasi yang bernilai tambah. Meningkatkan kualitas dan kapasitas pelaku UMKM melalui pelatihan manajemen, teknologi, dan pemasaran digital. Mendorong promosi dan pemasaran produk UMKM baik di tingkat lokal, regional, maupun nasional dengan memanfaatkan media online dan offline. Membangun jejaring kerjasama dengan pemerintah, lembaga keuangan, dan komunitas usaha untuk memperluas peluang pasar. Mewujudkan UMKM ramah lingkungan dengan mengedepankan prinsip keberlanjutan dan pemanfaatan sumber daya alam secara bijak. Menciptakan lapangan kerja baru yang dapat mengurangi pengangguran dan meningkatkan taraf hidup masyarakat Desa Calingcing.', 1, '2025-02-11 03:21:45', '2025-09-07 01:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wilayah Desa Calingcing', '<p>Desa Calingcing di Kecamatan Tegalbuleud memiliki daya tarik khas pedesaan pesisir selatan Sukabumi dengan suasana yang masih alami dan tenang. Wilayah ini dikelilingi hamparan sawah, kebun karet, serta perbukitan hijau yang memberikan pemandangan asri. Tidak jauh dari desa, terdapat garis pantai selatan yang terkenal dengan deburan ombak Samudra Hindia, sehingga banyak dimanfaatkan untuk aktivitas memancing maupun menjadi jalur wisata menuju Pantai Cikaso dan Pantai Tegalbuleud yang populer di kawasan tersebut.</p><p>Selain panorama alam, suasana di Desa Calingcing juga ditandai dengan kehidupan masyarakat yang kental dengan budaya gotong royong, sehingga pengunjung bisa merasakan atmosfer pedesaan yang ramah dan penuh kebersamaan. Bagi wisatawan yang menyukai ketenangan, desa ini menawarkan nuansa jauh dari hiruk pikuk kota, udara sejuk dari perbukitan, serta panorama indah yang berpadu antara pegunungan rendah dan laut lepas di selatan Sukabumi.</p>', 1, '2025-02-11 03:21:45', '2025-09-07 01:14:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggarans`
--
ALTER TABLE `anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petas`
--
ALTER TABLE `petas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_statuses`
--
ALTER TABLE `post_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situses`
--
ALTER TABLE `situses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umkms`
--
ALTER TABLE `umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_profils`
--
ALTER TABLE `video_profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggarans`
--
ALTER TABLE `anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petas`
--
ALTER TABLE `petas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_statuses`
--
ALTER TABLE `post_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `situses`
--
ALTER TABLE `situses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_profils`
--
ALTER TABLE `video_profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
