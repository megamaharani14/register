# register
A new Flutter project.

Tampilan awal login_page.dart:
![Screenshot register](assets/login_page.png)
Terdapat email dan password untuk login, jika tidak memiliki akun bisa register terlebih dahulu.

Tampilan register_page.dart:
![Screenshot register](assets/register.png)
Dalam register page ini bisa input nama lengkap, email, password, confirm password dan tombol register.

Jika tombol register diklik nanti akan muncul pop up selama 200ms dengan tulisan "pendaftaran berhasil dilakukan"
![Screenshot register](assets/popup_register.png)
 
berikut ini adalah code untuk pop up
![Screenshot register](assets/code.png)


Setelah register, nanti akan diarahkan ke login_page.dart, lalu isi email dan passowrd untuk login.
![Screenshot register](assets/login.png)


Nanti akan muncul pop up yang bertuliskan "selamat datang dan nama" selama 200ms 
![Screenshot register](assets/popup_login.png)

berikut ini adalah code untuk pop upnya
![Screenshot register](assets/code1.png)

ketika diklik tombol keluar maka akan destroy ke halaman utama
![Screenshot register](assets/destroy.png)
Dalam onPressed: (){ SystemNavigator.pop();}: berfungsi untuk menutup aplikasi atau menutup layar, yang dimana di dalam tombol tersebut terdapat teks keluar dan berada di tengah.