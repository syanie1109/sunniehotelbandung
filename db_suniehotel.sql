-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 03:55 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_suniehotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `kd_bayar` char(11) NOT NULL,
  `kd_pesanan` char(11) NOT NULL,
  `id_tamu` char(11) NOT NULL,
  `nama_akun_rek` varchar(50) NOT NULL,
  `no_rek` char(20) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `fasilitas` varchar(50) NOT NULL,
  `photo` tinytext NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `fasilitas`, `photo`, `deskripsi`) VALUES
(1, 'FITNESS CENTRE', '', 'Sunnie Hotel provides a place for you to exercise in a relaxed and cool way at the \'Fitness Centre\'. It is hoped that you can exercise comfortably here. We provide several other facilities here so you can enjoy your exercise time well. Unite the heat of your body with the coolness of nature.\r\n'),
(2, 'BUSINESS SERVICES', '', 'Do your business safely and comfortably. We provide the right facilities and services for your business meeting.\r\n'),
(3, 'SWIMMING POOL', '', 'Enjoy your day by swimming in our heated infinity swimming pool and open air jacuzzi with a gentle pressure for masssage relaxation overlooking the beauty of the valley.\r\n'),
(4, 'THE RESTAURANT', '', 'The new concept of our restaurant will enhance your dining experience. Located above the green valley that give you a refreshing breeze of air. This romantic setting will give you a different vibe while enjoying our finest Asiatic and European cuisine.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `multiuser`
--

CREATE TABLE `multiuser` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiuser`
--

INSERT INTO `multiuser` (`id`, `username`, `password`, `level`) VALUES
(1, 'ade', 'c0b568039954c4a386d50e4acbf2af81', 'admin'),
(2, 'dea', '02a15039bced716eece8bb07533a9d4d', 'admin'),
(3, 'dede', '42be868bfb62976649fd5cada94fc129', 'admin'),
(4, 'haliya', 'ac3ee59af4c4011c17b4c11dc1457ca7', 'resepsionis'),
(5, 'dafreza', 'a6a74ecf75f681e9c362da62502bebb1', 'resepsionis'),
(6, 'zyanka', '6af0a226c3343ef31597093bca0affe3', 'resepsionis');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `kd_pesanan` char(11) NOT NULL,
  `id_tamu` char(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `jmlh_kamar` int(11) NOT NULL,
  `jmlh_hari` int(11) NOT NULL,
  `jmlh_bayar` int(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`kd_pesanan`, `id_tamu`, `id_kamar`, `tgl_pesan`, `check_in`, `check_out`, `jmlh_kamar`, `jmlh_hari`, `jmlh_bayar`, `status`) VALUES
('RSV001', 'SN001', 3, '2022-03-28', '2022-03-29', '2022-03-30', 1, 1, 2700000, 'sudah bayar'),
('RSV002', 'SN002', 1, '2022-03-30', '2022-03-31', '2022-04-02', 2, 3, 8100000, 'belum bayar');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` char(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kec` varchar(50) NOT NULL,
  `kab` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `username`, `no_telp`, `email`, `password`, `alamat`, `kec`, `kab`, `provinsi`) VALUES
('SN001', 'rara', '083829410684', 'rara@gmail.com', '462950d333ef567a2ec5796d6d99070b', 'Kp. Kihapit RT 005 RW 001', 'Cimahi Selatan', 'Cimahi', 'Jawa Barat'),
('SN002', 'icha', '081829364536', 'icha@gmail.com', 'd54d1702ad0f8326224b817c796763c9', 'Kp. Bojong Alit RT 005 RW 009', 'Ciraden Timur', 'Bandung', 'Jawa Barat'),
('SN003', 'lala', '081898769876', 'lalalili@gmail.com', 'f2161c97358b66f2f69bbb71b8028007', 'Kp. Padakasih RT 005 RW 008', 'Cimahi Selatan', 'Cimahi', 'Jawa Barat'),
('SN004', 'lulu', '083812344321', 'luluadilah@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Kp. Gunung Dukuh RT 005 RW 001', 'Ciraden', 'Bandung Barat', 'Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tipekamar`
--

CREATE TABLE `tipekamar` (
  `id_kamar` int(11) NOT NULL,
  `tipe_kamar` varchar(50) NOT NULL,
  `photo` tinytext NOT NULL,
  `size` int(11) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `fasilitas` varchar(1000) NOT NULL,
  `view` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipekamar`
--

INSERT INTO `tipekamar` (`id_kamar`, `tipe_kamar`, `photo`, `size`, `deskripsi`, `kapasitas`, `stok`, `fasilitas`, `view`, `harga`) VALUES
(1, 'Deluxe Room', 'building.jpg', 30, 'Combining comfort and style, our Deluxe Room with pool view is definitely a place where you can find tranquility at Bandung’s hidden gem. Located at the 2nd down to 4th Floor of the hotel building. A chic 28-sqm room and wooden floor panel with a modern bathroom featuring  shower. A double bed (200 cm x 200 cm). All beds are furnished with plush duvet covers. All rooms are also equipped with LCD TV 32 inch, a safe deposit box – laptop size and face to the luscious green valley.', 3, 18, 'Air Conditioning, Flat Screen TV, Mini-Bar, Unlimited Wifi, Restaurant quality, Room Service (24 hours), Gym Centre, Spa & Sauna, Non-smoking rooms available, Daily Maid Service, Safe Deposit Box, Dry cleaning and laundry, Soundproof Windows, Movie Library, Reservation & confirmation, Babysitter upon request, Refrigerator, Modern Furnishing.', 'Valley or Pool View ', 1350000),
(2, 'Premier Room', 'premier.jpg', 30, 'Our Premier Room is facilitated with an exquisite bathroom featuring shower and separate bathtub. A King-size bed (200x200 cm) or Twin-size bed (200x120 cm). All rooms are furnished with plush duvet covers and also equipped with LCD TV 37 inch, a safe deposit box – laptop size and overlooking the  luscious green valley. An additional extra bed or baby cot is available upon request.', 2, 12, 'Air Conditioning, Flat Screen TV, Mini-Bar, Unlimited Wifi, Restaurant quality, Room Service (24 hours), Gym Centre, Spa & Sauna, Bath Bomb (upon request), Welcome fruits on arrival, Iron & Ironing Board, Dry cleaning and laundry, Soundproof Windows, Non-smoking rooms available, Reservation & confirmation, Babysitter upon request, Sitting Area,  Coffee Facilities.', 'Hillside or Mountain', 1650000),
(3, 'Hillside Studio', 'hillside.jpg', 33, 'Located at the 6th and 7th Floor of the hotel building. A chic 37-sqm room with a modern bathroom featuring bathtub. A king size bed (200 cm x 200 cm). All beds are furnished with plush duvet covers. All rooms are also equipped with LCD TV 37 inch, a safe deposit box – laptop size and face to the luscious green valley. An additional extra bed or baby cot is available upon request.', 3, 12, 'Air Conditioning, Flat Screen TV, Mini-Bar, Unlimited Wifi, Restaurant quality, Room Service (24 hours), Gym Centre, Spa & Sauna, Bath Amenities, Coffee Facilities, Fruit Basket on arrival, Dry cleaning and laundry, Mountain View, Outdoor Playground, Reservation & confirmation, Babysitter upon request, Swimming Pool for children, Iron & Ironing Board.', 'Valley', 2000000),
(4, 'Family Suite', 'family.jpg', 36, 'With its highlight of seperate living room and bedroom, this newly-renovated 62 square metre Family Suite is truly a state-of-the-art. Family Suite is featuring a pleasant king size bed (200x200cm) topped with duvet covers perfect for family and couple who crave for an ultimate indulgence. Specially-curated with an opulent wooden floor panel, seperate shower and bathtub, also private balcony with alluring view to the valley so you can pamper yourself all day long.', 4, 11, 'Air Conditioning, Flat Screen TV, Mini-Bar, Unlimited Wifi, Restaurant quality, Room Service (24 hours), Gym Centre, Spa & Sauna, Billiard (Pool) Table, Shower & Changing Roomn, Swimming Pool for children, Dry cleaning and laundry, Baby Chairs at the Restaurant, Outdoor Playground, Reservation & confirmation, Babysitter upon request, Concierge, Doctor (upon request).', 'Hillside View', 2500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`kd_bayar`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `multiuser`
--
ALTER TABLE `multiuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`kd_pesanan`),
  ADD KEY `id_kamar` (`id_kamar`),
  ADD KEY `id_tamu` (`id_tamu`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tipekamar`
--
ALTER TABLE `tipekamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `multiuser`
--
ALTER TABLE `multiuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `tipekamar` (`id_kamar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_tamu`) REFERENCES `tamu` (`id_tamu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
