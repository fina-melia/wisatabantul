-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2022 pada 03.37
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(3) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Pantai'),
(2, 'goa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `jumlah` varchar(15) NOT NULL,
  `bulan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id_pengunjung`, `name`, `jumlah`, `bulan`) VALUES
(1, 'Pantai Prangtritis', '27000', 'maret'),
(2, 'Pantai Samas', '23000', 'maret'),
(3, 'Pantai Goa Cemara', '28000', 'maret'),
(4, 'Goa Payaman', '19000', 'maret'),
(5, 'Goa Selarong', '20000', 'maret'),
(6, 'Goa Gajah Mangunan', '17000', 'maret');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(8) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `nm_wisata` varchar(50) NOT NULL,
  `info_wisata` varchar(780) NOT NULL,
  `alamat_wisata` varchar(128) NOT NULL,
  `htm_wisata` varchar(128) NOT NULL,
  `fasilitas` varchar(128) NOT NULL,
  `gambar_wisata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `id_kategori`, `nm_wisata`, `info_wisata`, `alamat_wisata`, `htm_wisata`, `fasilitas`, `gambar_wisata`) VALUES
(1, 1, 'Pantai Samas', 'Awalnya dibuka sejak sekitar 1975-an. Awalnya adalah gundukan pasir dan semak belukar. Namun sebagian kawasan digunakan untuk pembuatan garam. Sejak dibuka, Pantai Samas menjadi ramai pengunjung dan puncaknya 1980-an hingga 1990.Samas merupakan kepanjangan Samudera Emas, karena Samas banyak menghasilkan pendapatan bagi warga sekitar mulai dari lautnya, pasirnya, hingga hasil bumi sekitar laut sehingga disebut Samudera Emas yang disingkat Samas.', 'Desa Srigading, Kecamatan Sanden, Kabupaten Bantul, Provinsi Daerah Istimewa Yogyakarta (DIY)', 'Rp. 4000', 'Area parkir, Laguna, Ladang Bunga Matahari, Penangkaran penyu, Tempat kuliner terapung, Menara pandang, Toilet, Jembatan Bambu', 'https://sikidang.com/wp-content/uploads/pantai-samas.jpg'),
(2, 1, 'Pantai Parangtritis', 'Berdasarkan buku Peningkatan Pariwisata Pesisir Pulau Jawa, sejarah Pantai Parangtritis bermula pada zaman kerajaan Majapahit. Dahulu, ada seorang pelarian dari kerajaan tersebut yang bernama Dipokusumo.\r\nIa sampai ke sebuah pantai untuk melakukan semadi. Ketika bersemadi, ia melihat air menetes (tumaritis) yang berasal dari celah-celah batu karang (parang). Kemudian Dipokusumo memberi nama daerah itu “Parangtritis” yang berarti “air yang menetes dari batu”.Pantai Parangtritis diyakini oleh masyarakat setempat sebagai perwujudan dari kesatuan trimurti, yaitu Gunung Merapi, Keraton Yogyakarta, dan Parangtritis. Oleh sebab itu, ketiga tempat sering dihubungkan ketika fenomena alam terjadi di antara ketiga tempat tersebut.\r\n\r\n\r\n\r\n', 'Desa Parangtritis, Kecamatan Kretek, Kabupaten Bantul, Yogyakarta. Berjarak sekitar 27 km arah selatan Yogyakarta, wisatawan dap', 'Rp. 5000', 'Motor ATV, Kuda, dan Delman untuk berkeliling Pantai Parangtritis.\r\nGazebo Pantai,Warung Makan,Toko Souvenir dan Baju,Penginapan', 'https://1.bp.blogspot.com/-ib311gV-P0s/XR5OHBnL_kI/AAAAAAAABJ0/p1ivrgbsIlIZJmeOJmgFhQg4FQTjQyzMQCLcBGAs/s1600/Keindahan-Pantai-Parangtritis-Yogyakarta.jpg'),
(3, 1, 'Pantai Goa Cemara', 'Pantai ini merupakan pantai pengembangan baru dimana terdapat banyak pohong Cemara udang rindang membentuk seperti goa, hal ini yang membuat pantai ini dinamai Goa Cemara. Pohon Cemara ini bertujuan untuk melindungi abrasi air laut dan menahan gumuk pasir supaya tidak mengalamai perpindahan akibat tiupan angin', 'Dusun Patihan, Desa Gadingsari, Kecamatan Sanden, Kabupaten Bantul. Daerah Istimewa Yogyakarta', 'Rp. 4000', 'Mushola, Warung makan,Kamar mandi,Area parkir,Toilet,Camping Ground\r\nPenyewaan Kuda', 'https://sewamobiljogja.id/wp-content/uploads/2019/07/Pantai-Goa-Cemara-Jogja.png'),
(4, 2, 'Goa Payaman', 'Goa Payaman sudah sering digunakan untuk camping. Goa Payaman dan Bumi Perkemahan terletak tidak berjauhan, dan keduanya dijadikan satu sebagai lokasi wisata edukasi, wisata sejarah, dan religi. Saat tiba di Goa Payaman, bentuk goa hanya sedalam 8 meter dan tidak terlihat adanya stalaktit dan stalakmitnya. Dengan ukuran panjang dan lebar sekitar 8 meter bisa diperkirakan goa tersebut berfungsi sebagai tempat tinggal.\r\nDahulu Goa Payaman ada dua buah yaitu Goa Lanang dan Goa Putri, namun saat ini hanya tersisa Goa Putri karena Goa Lanang sudah tertutup tanah. Banyak cerita, sejarah, dan mitos yang berkembang di kawasan Goa Payaman dari masa ke masa. Cerita Goa Lanang yang sudah ditutup diantaranya sebagai tempat pertapaan Prabu Brawijaya V dan tempat keluar masuknya Nyi ', 'Dukuh Payaman, Dusun Kepuhan, Desa Argorejo, Kecamatan Sedayu, Kabupaten Bantul atau sekitar 14 Km dari kota Yogyakarta.', 'Rp. 5000', 'Beragam fasilitas yang tersedia di kawasan ini seperti tempat parkir, toilet, sampai warung sederhana. Di dekat goa, terdapat bu', 'https://elmaredo.files.wordpress.com/2013/05/dsc01058.jpg'),
(5, 2, 'Goa Selarong', 'Dulunya goa Selarong merupakan markas Pangeran Diponegoro bersama pasukannya saat melakukan aksi perang gerilya melawan penjajah Belanda antara tahun 1825 -1830. Pangeran Diponegoro dendam kepada Belanda lalu mulai menyusun aksi balasan setelah rumahnya di Tegalrejo dibakar habis. Di goa Selarong sendiri terdapat dua goa utama yaitu goa Kakung dan goa Putri. Goa Kakung menjadi kediaman Pangeran Diponegoro. Sedangkan goa Puteri digunakan sebagai tempat tinggal Raden Ayu Ratnaningsih. Beliau adalah selir pangeran yang paling setia setelah kedua istrinya meninggal dunia. Pangeran Diponegoro mengobarkan semangat perjuangan rakyat pribumi dengan semboyannya: sadumuk bathuk sanyari bumi dikahi tekan pati. Artinya, sejari kepala sejengkal tanah dibela sampai mati', '48Q7+6W9, Waktu Gedug, Guwosari, Kec. Pajangan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55751', 'Rp. 3000', 'Toilet umum/kamar mandi,Tempat ibadah,Sarana bermain untuk anak-anak,Beberapa pendopo untuk beristirahat dan bersantai,Area perk', 'https://jadwaltravel.com/wp-content/uploads/2019/12/Tiket-Masuk-Goa-Selarong.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
