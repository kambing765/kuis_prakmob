import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat pagi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Halaman login'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 40,
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/illustration.png',
            height: 100,
          ),
          _usernameField(),
          _passwordField(),
          _loginButton(context),
        ],
      ),
    ));
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.deepPurple)),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.deepPurple)),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
        onPressed: () {
          String text = "";
          if (username == "nopal" && password == "123") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          }
          ;
        },
        child: Text('Login'),
      ),
    );
  }
}

class KentangLayanan extends StatelessWidget {
  const KentangLayanan({Key? key}) : super(key: key);



@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
                Container(
                  color: Colors.white,// Your screen background color
                ),
                SingleChildScrollView(
                    child: Column(children: <Widget>[
                      Container(height: 70.0),
                      Image.asset('assets/header.png',fit: BoxFit.fill,),
                      SizedBox(height: 10),
                      Padding(padding: EdgeInsets.all(20), 
                        child: 
                        Text('Apa itu Bank sampah keliling?',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        softWrap: true,),),
                      Padding(padding: EdgeInsets.all(20), 
                        child: 
                        Text(
                          '\nBank sampah keliling adalah inisiatif yang bertujuan untuk meningkatkan partisipasi masyarakat dalam pengelolaan sampah dan pencegahan pencemaran lingkungan. Biasanya dilaksanakan oleh komunitas atau organisasi non-pemerintah, bank sampah keliling menggunakan kendaraan khusus untuk mengumpulkan sampah dari rumah ke rumah atau dari lokasi yang telah ditentukan.'
                          '\n\nSetelah dikumpulkan, sampah tersebut dibersihkan, dipilah, dan diolah menjadi bahan daur ulang. Melalui bank sampah keliling, masyarakat diberikan kesempatan untuk berpartisipasi aktif dalam menjaga lingkungan sekaligus memperoleh insentif berupa hadiah atau uang sebagai imbalan dari sampah yang mereka berikan.'
                          '\n\nDengan demikian, bank sampah keliling memiliki peran penting dalam mengedukasi masyarakat tentang pentingnya pengelolaan sampah yang berkelanjutan dan membantu mengurangi jumlah sampah yang masuk ke tempat pembuangan akhir.',
                        style: TextStyle(fontSize: 14),
                        softWrap: true,),),
                      
                    ])
                ),
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    title: const Text(''),// You can add title here
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
                      onPressed: () => Navigator.pop(context),
                    ),
                    backgroundColor: Colors.deepPurple.withOpacity(0.2), //You can make this transparent
                    elevation: 0.0, //No shadow
                  ),),
            ]),

      
    );
  }
}




class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: CustomScrollView(
          slivers: [
            // SliverToBoxAdapter untuk Card biasa
            SliverToBoxAdapter(
              child: Column(children: [
                Image.asset('assets/greeting.png',fit: BoxFit.fill,),    
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                    foregroundColor: WidgetStateProperty.all(Colors.white)
                  ),
                  onPressed: () {
                    // Aksi yang ingin dilakukan saat tombol ditekan
                      Navigator.pop(context);
                  },
                  child: const Text('Logout'),
                ),
                SizedBox(height: 10,),
                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.deepPurple)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Informasi Bank Sampah',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Bank sampah akan hadir di dekat rumah Anda. Klik untuk informasi lebih lanjut.',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KentangLayanan(),
                            ),
                          );
                        },
                        child: const Text('>>Pelajari lebih lanjut'),
                      ),
                    ],
                  ),
                ),
              ),
              ],)
            ),

            // SliverGrid untuk GridView yang bisa di-scroll
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Jumlah kolom
                mainAxisExtent: 200, // Tinggi setiap item grid
                crossAxisSpacing: 10.0, // Jarak antar kolom
                mainAxisSpacing: 10.0, // Jarak antar baris
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final schedule = scheduleList[index];
                  return  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.deepPurple)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              const SizedBox(width: 5),
                              Text(
                                schedule.coverageArea,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 30),
                              Text(
                                schedule.wasteBankName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              SizedBox(width: 30),
                              Text('Tanggal:'),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 50),
                              Text(schedule.implementationDate),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            
                            children: const [
                              SizedBox(width: 40),
                                Text('Mulai'),
                              SizedBox(width: 40),                              
                                Text('Selesai'),
                              
                            ],
                          ),
                          Row(
                            children: [
                                SizedBox(width: 40),
                                Text(schedule.startTime),
                                SizedBox(width: 40),
                                Text(schedule.endTime),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: scheduleList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Schedule {
  String coverageArea;
  String wasteBankName;
  String implementationDate;
  String startTime;
  String endTime;
  String imageUrl;

  Schedule({
    required this.coverageArea,
    required this.wasteBankName,
    required this.implementationDate,
    required this.startTime,
    required this.endTime,
    required this.imageUrl,
  });
}

var scheduleList = [
  Schedule(
    coverageArea: 'Suryodiningratan dan sekitarnya',
    wasteBankName: 'Bank Sampah Gemah Ripah',
    implementationDate: '2024-10-05',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'https://example.com/logo_gemah_ripah.png',
  ),
  Schedule(
    coverageArea: 'Prawirodirjan dan sekitarnya',
    wasteBankName: 'Bank Sampah Hijau Lestari',
    implementationDate: '2024-10-06',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'https://example.com/logo_hijau_lestari.png',
  ),
  Schedule(
    coverageArea: 'Mantrijeron dan sekitarnya',
    wasteBankName: 'Bank Sampah Bersih Sejahtera',
    implementationDate: '2024-10-07',
    startTime: '07:30',
    endTime: '09:30',
    imageUrl:
        'https://pengulon-buleleng.desa.id/assets/files/artikel/sedang_1570754533Logo%20Sampah%20Pelita%20AA.jpg',
  ),
  Schedule(
    coverageArea: 'Ngupasan dan sekitarnya',
    wasteBankName: 'Bank Sampah Asri Jaya',
    implementationDate: '2024-10-08',
    startTime: '08:30',
    endTime: '10:30',
    imageUrl:
        'https://kampungkb.bkkbn.go.id/storage/34/3402/340215/3402152003/6402/intervensi/2022/12/25/470841/16719960030.jpeg',
  ),
  Schedule(
    coverageArea: 'Pakuncen dan sekitarnya',
    wasteBankName: 'Bank Sampah Lestari Mandiri',
    implementationDate: '2024-10-09',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE1scMeVYuh99qWcbJQXmj85f3nb2Ck126Zw&s',
  ),
  Schedule(
    coverageArea: 'Wirobrajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Sejahtera Abadi',
    implementationDate: '2024-10-10',
    startTime: '07:00',
    endTime: '09:00',
    imageUrl:
        'https://assets-a1.kompasiana.com/items/album/2021/07/29/logo-bank-sampah-6101e3e41525104da36e21f2.png',
  ),
  Schedule(
    coverageArea: 'Notoprajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Berkah',
    implementationDate: '2024-10-11',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl:
        'https://pengulon-buleleng.desa.id/assets/files/artikel/sedang_1570754533Logo%20Sampah%20Pelita%20AA.jpg',
  ),
];
