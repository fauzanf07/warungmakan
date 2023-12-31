class Menu{
  String nama;
  String urlImg;
  bool isFree;
  bool isOut;
  int harga;
  int likes;
  int stok;
  String deskripsi;

  Menu({
    required this.nama,
    required this.urlImg,
    required this.isFree,
    required this.isOut,
    required this.harga,
    required this.likes,
    required this.stok,
    required this.deskripsi,
  });
}


var menu_utama = [
  Menu(
    nama: 'Nasi',
    urlImg: 'images/nasi.jpg',
    isFree: false,
    isOut: false,
    harga: 3000,
    likes: 70,
    stok: 20,
    deskripsi: 'Rasakan kelezatan sejati dalam setiap suapan! Nasi kami, disajikan segar dan harum, menjadi teman sempurna untuk setiap hidangan. Kaya akan nutrisi dan rasa autentik, nikmati kelezatan nasi kami yang tak tertandingi. Segera pesan dan hadirkan kelezatan istimewa ke meja makan Anda!',
  ),
  Menu(
    nama: 'Ayam Serundeng',
    urlImg: 'images/ayam-serundeng.jpg',
    isFree: false,
    isOut: false,
    harga: 5000,
    likes: 20,
    stok: 15,
    deskripsi: 'Nikmati kelezatan cita rasa Indonesia! Ayam Serundeng kami menghadirkan perpaduan sempurna antara daging ayam lembut dan kelapa serundeng yang gurih. Setiap gigitan membawa sensasi kenikmatan yang tak terlupakan. Segera pesan, rasakan sensasi kuliner yang autentik hanya untuk Anda!',
  ),
  Menu(
    nama: 'Cumi Asam Manis',
    urlImg: 'images/cumi-asam-manis.jpg',
    isFree: false,
    isOut: true,
    harga: 7000,
    likes: 45,
    stok: 0,
    deskripsi: 'Raih pengalaman kuliner yang memikat! Cumi Asam Manis kami hadir dengan kombinasi sempurna antara kelezatan cumi yang kenyal dan saus asam manis yang menggoda selera. Setiap suapan menghadirkan sensasi kelezatan yang tak terlupakan. Pesan sekarang dan nikmati keindahan rasa di setiap gigitan!',
  ),
  Menu(
    nama: 'Pecel Lele',
    urlImg: 'images/pecel-lele.jpg',
    isFree: false,
    isOut: false,
    harga: 10000,
    likes: 56,
    stok: 20,
    deskripsi: 'Lelehkan kelezatan di setiap gigitan! Pecel Lele kami, dengan lele yang renyah dan bumbu pecel yang khas, memberikan pengalaman kuliner yang tiada tara. Segera pesan dan nikmati cita rasa autentik pecel lele yang menggoda selera. Kelezatan di setiap suapan, hanya untuk Anda!',
  ),
  Menu(
    nama: 'Perkedel Kentang',
    urlImg: 'images/perkedel-kentang.jpg',
    isFree: false,
    isOut: true,
    harga: 4000,
    likes: 19,
    stok: 0,
    deskripsi: 'Kelezatan yang tak terbantahkan! Perkedel Kentang kami, gurih di luar, lembut di dalam, siap memanjakan lidah Anda. Dengan bahan berkualitas dan cita rasa yang otentik, setiap gigitan adalah kepuasan sejati. Segera pesan dan nikmati nikmatnya perkedel kentang ala kami. Ciptakan momen lezat di setiap hidangan!',
  ),
  Menu(
    nama: 'Rendang',
    urlImg: 'images/rendang.jpg',
    isFree: false,
    isOut: false,
    harga: 10000,
    likes: 80,
    stok: 30,
    deskripsi: 'Rasakan kenikmatan sejati dengan Rendang kami! Daging yang lembut, bumbu rempah yang kaya, setiap gigitan adalah petualangan rasa yang tak terlupakan. Pesan sekarang untuk pengalaman kuliner yang autentik dan mendalam. Rendang yang tak hanya menggugah selera, tetapi juga hati Anda!',
  ),
  Menu(
    nama: 'Telur Balado',
    urlImg: 'images/telur-balado.jpg',
    isFree: false,
    isOut: false,
    harga: 5000,
    likes: 60,
    stok: 20,
    deskripsi: 'Ledakan rasa dalam setiap gigitan! Telur Balado kami hadir dengan telur yang sempurna dimasak dan saus balado yang pedas menggoda. Pengalaman cita rasa yang memikat, setiap suapan menghadirkan kelezatan yang sulit dilupakan. Segera pesan, dan nikmati kelezatan telur balado di meja makan Anda hari ini!',
  ),
  Menu(
    nama: 'Tumis Kangkung',
    urlImg: 'images/tumis-kangkung.jpg',
    isFree: false,
    isOut: false,
    harga: 3000,
    likes: 20,
    stok: 10,
    deskripsi: 'Segar, sehat, dan lezat! Tumis Kangkung kami hadir dengan kelezatan sayuran yang renyah, disajikan dalam bumbu yang meresap sempurna. Sajian ringan yang memanjakan lidah Anda. Segera pesan untuk pengalaman sehat dan lezat di meja makan Anda!',
  ),
  Menu(
    nama: 'Tempe Bacem',
    urlImg: 'images/tempe-bacem.jpg',
    isFree: false,
    isOut: false,
    harga: 3000,
    likes: 20,
    stok: 15,
    deskripsi: 'Tempe Bacem, kelezatan tradisional yang tak tergantikan! Tempe yang gurih dan manis dari bumbu bacem, setiap gigitan adalah perjalanan rasa yang memuaskan. Sajikan kelezatan khas Indonesia di meja makan Anda. Pesan sekarang dan nikmati kelezatan autentik Tempe Bacem kami!',
  ),
];

var sambal = [
  Menu(
    nama: 'Sambal Cobek',
    urlImg: 'images/sambal-cobek.jpg',
    isFree: true,
    isOut: false,
    harga: 0,
    likes: 40,
    stok: 20,
    deskripsi: 'Sambal Cobek, ledakan pedas yang menggoda selera! Racikan sambal tradisional dengan sentuhan cobek, memberikan pengalaman pedas yang tak terlupakan. Segera pesan untuk nikmati sensasi pedas autentik di setiap hidangan Anda. Hidupkan lidah Anda dengan Sambal Cobek kami\n\nSambal ini gratis jika anda membeli nasi atau lauk di warung kami',
  ),
  Menu(
    nama: 'Sambal Dabu-Dabu',
    urlImg: 'images/sambal-dabu-dabu.jpg',
    isFree: false,
    isOut: true,
    harga: 3000,
    likes: 30,
    stok: 0,
    deskripsi: 'Sambal Dabu-Dabu, kelezatan pedas yang meriah! Racikan pedas segar dengan sentuhan bumbu alami, menciptakan sensasi meledak di setiap gigitan. Segera pesan dan nikmati kelezatan autentik Sambal Dabu-Dabu, sajian pedas yang tak terlupakan untuk pencinta kuliner sejati!',
  ),
  Menu(
    nama: 'Sambal Ijo',
    urlImg: 'images/sambal-ijo.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 30,
    stok: 20,
    deskripsi: 'Sambal Ijo, kelezatan hijau yang menyegarkan! Racikan pedas dengan sentuhan segar dari bahan alami, menciptakan sensasi pedas dan nikmat. Segera pesan dan tambahkan kelezatan Sambal Ijo ke hidangan Anda. Berani mencoba kepedasan yang berbeda!',
  ),
  Menu(
    nama: 'Sambal Matah',
    urlImg: 'images/sambal-matah.jpg',
    isFree: false,
    isOut: false,
    harga: 2000,
    likes: 55,
    stok: 20,
    deskripsi: 'Nikmati kelezatan eksotis! Sambal Matah, paduan segar antara cabai, bawang, dan rempah pilihan, memberikan sentuhan pedas yang meledak di lidah Anda. Sajikan sensasi rasa baru di meja makan Anda. Pesan sekarang dan rasakan kelezatan autentik Sambal Matah yang memukau!',
  ),
  Menu(
    nama: 'Sambal Roa',
    urlImg: 'images/sambal-roa.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 34,
    stok: 20,
    deskripsi: 'Rasakan kepedasan unik! Sambal Roa kami hadir dengan sentuhan asli dari ikan roa, menciptakan paduan pedas dan gurih yang tak terlupakan. Segera pesan untuk pengalaman kuliner yang berbeda dan menggugah selera. Tambahkan kelezatan Sambal Roa ke hidangan Anda hari ini!',
  ),
  Menu(
    nama: 'Sambal Terasi',
    urlImg: 'images/sambal-terasi.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 40,
    stok: 20,
    deskripsi: 'Sambal Terasi, kelezatan khas Indonesia dalam setiap suapan! Racikan pedas terasi yang menggoda selera, memberikan pengalaman rasa autentik. Segera pesan untuk menciptakan sensasi pedas dan lezat di hidangan Anda. Jangan lewatkan kelezatan Sambal Terasi yang menggairahkan!',
  ),
];

var gorengan = [
  Menu(
    nama: 'Bakwan',
    urlImg: 'images/bakwan.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 40,
    stok: 50,
    deskripsi: 'Kelezatan yang renyah dalam setiap gigitan! Bakwan kami, dengan sayuran segar dan bumbu pilihan, hadir sebagai sajian yang nikmat dan bergizi. Segera pesan dan nikmati kelezatan Bakwan kami yang gurih di setiap suapan. Cocok sebagai camilan lezat kapan pun Anda inginkan!',
  ),
  Menu(
    nama: 'Gehu',
    urlImg: 'images/gehu.jpg',
    isFree: false,
    isOut: false,
    harga: 2000,
    likes: 60,
    stok: 30,
    deskripsi: 'Nikmati kelezatan sederhana yang lezat! Gehu goreng kami, dengan tekstur renyah dan cita rasa gurih, siap memanjakan lidah Anda. Sajikan kelezatan tanpa ribet, pesan sekarang untuk pengalaman kuliner yang lezat dan praktis. Gehu Goreng, selalu tepat untuk semua kesempatan makan Anda!',
  ),
  Menu(
    nama: 'Cireng',
    urlImg: 'images/cireng.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 55,
    stok: 20,
    deskripsi: 'Cireng Gurih, Sensasi Gigitan Lezat! Terbuat dari campuran tepung yang berkualitas, Cireng kami siap memuaskan selera Anda. Cocok sebagai camilan anytime, pesan sekarang dan nikmati kelezatan gurih Cireng yang selalu pas di lidah Anda!',
  ),
  Menu(
    nama: 'Karoket',
    urlImg: 'images/karoket.jpg',
    isFree: false,
    isOut: true,
    harga: 1000,
    likes: 20,
    stok: 0,
    deskripsi: 'Karoket Lezat, Kelezatan di Setiap Gigitan! Dengan lapisan renyah di luar dan isian lezat di dalam, Karoket kami siap memberikan pengalaman rasa yang memuaskan. Pesan sekarang untuk camilan istimewa yang menggugah selera Anda. Karoket, kelezatan sejati untuk kenikmatan makanan Anda!',
  ),
  Menu(
    nama: 'Risol',
    urlImg: 'images/risol.jpeg',
    isFree: false,
    isOut: true,
    harga: 2500,
    likes: 100,
    stok: 0,
    deskripsi: 'Risol Lezat, Kelezatan dalam Setiap Lipatan! Kulit tipis yang renyah meliputi isian lezat, setiap gigitan adalah petualangan rasa yang tak terlupakan. Pesan sekarang dan nikmati kelezatan Risol kami, camilan istimewa untuk kenikmatan makanan Anda!',
  ),
  Menu(
    nama: 'Tempe Goreng',
    urlImg: 'images/tempe-goreng.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 20,
    stok: 30,
    deskripsi: 'Tempe Goreng, Gurih dan Lezat! Tempe kami digoreng sempurna, menciptakan tekstur renyah yang memikat. Sajikan kelezatan tradisional di meja makan Anda. Pesan sekarang untuk nikmati Tempe Goreng yang lezat dan gurih, camilan ideal untuk segala kesempatan!',
  ),
  Menu(
    nama: 'Pisang Goreng',
    urlImg: 'images/pisang-goreng.jpg',
    isFree: false,
    isOut: false,
    harga: 1000,
    likes: 45,
    stok: 30,
    deskripsi: 'Pisang Goreng Gurih, Kelezatan yang Tiada Tanding! Dengan lapisan luar yang renyah dan pisang yang lembut di dalam, setiap gigitan adalah sensasi cita rasa yang memuaskan. Pesan sekarang dan nikmati kelezatan Pisang Goreng kami, camilan klasik yang tak pernah salah pilih!',
  ),
];

var minuman = [
  Menu(
    nama: 'Air Putih',
    urlImg: 'images/air-putih.jpg',
    isFree: true,
    isOut: false,
    harga: 0,
    likes: 70,
    stok: 30,
    deskripsi: 'Air Putih, Kesegaran yang Murni! Temukan kelezatan dalam setiap tegukan. Sajikan kesegaran alami dan kesehatan tanpa batas. Pesan sekarang dan nikmati kebaikan Air Putih, teman setia untuk hidrasi optimal Anda. \n\nAir putih ini gratis jika anda membeli nasi atau lauk di warung kami',
  ),
  Menu(
    nama: 'Es Teh',
    urlImg: 'images/es-teh.jpg',
    isFree: false,
    isOut: false,
    harga: 4000,
    likes: 20,
    stok: 20,
    deskripsi: 'Es Teh Segar, Kelezatan Dingin dalam Setiap Minuman! Nikmati sensasi manis dan segarnya teh yang berkualitas, diolah dengan sempurna menjadi Es Teh istimewa kami. Pesan sekarang dan rasakan kelezatan setiap tegukan. Es Teh, penyejuk sempurna untuk setiap momen Anda!',
  ),
  Menu(
    nama: 'Lemon Tea',
    urlImg: 'images/lemon-tea.jpg',
    isFree: false,
    isOut: false,
    harga: 6000,
    likes: 35,
    stok: 20,
    deskripsi: 'Lemon Tea Segar, Harmoni Rasa yang Menyegarkan! Nikmati kombinasi unik antara teh yang lezat dan keceriaan segar lemon dalam setiap tegukan. Sajikan kesegaran istimewa, pesan sekarang dan temukan kenikmatan Lemon Tea yang sempurna untuk memeriahkan hari Anda!',
  ),
  Menu(
    nama: 'Pop Ice',
    urlImg: 'images/pop-ice.jpg',
    isFree: false,
    isOut: false,
    harga: 5000,
    likes: 80,
    stok: 100,
    deskripsi: 'Pop Ice - Kesenangan Es yang Merefresh! Hadirkan kegembiraan dalam setiap tegukan dengan variasi rasa yang menyegarkan. Lezat, praktis, dan siap memberikan kesegaran instan. Pesan sekarang dan nikmati kelezatan Pop Ice, teman segar di setiap kesempatan!\n\nVarian rasa pop ice :\n1. Strawberry\n2. Mangga\n3. Durian\n4. Melon\n5. Coklat\n6. Moccacino\n7. Vanilla Latte\n8. Taro\n9. Alpukat\n10. Permen Karet'
  ),
];