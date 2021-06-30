%Memasukkan data-data yang digunakan
namaBarang = {'PER DH0044 NO.3' 'PER DH0044 NO.4' 'PER DH0044 NO.7' 'PER DH0046 NO.2' 'PER DH0046 NO.3' 'PER DH0046 NO.4' 'PER DH0046 NO.5' 'PER DH004R NO.3' 'PER DH0005 NO.1' 'PER DH0005 NO.2'...
    'PER DHN04F NO.1' 'PER DHN04F NO.2' 'PER DHN04F NO.3' 'PER DHN04F NO.4' 'PER DHN04F NO.5' 'PER HN0048 NO.1' 'PER HN0048 NO.2' 'PER HN0048 NO.3' 'PER HN0048 NO.4' 'PER HN0048 NO.5'...
    'PER HN0048 NO.6' 'PER HN0048 NO.7' 'PER HN0048 NO.8' 'PER HN0052 NO.1' 'PER HN0052 NO.2' 'PER HN0052 NO.3' 'PER HN0052 NO.5' 'PER HN0052 NO.6' 'PER HN0052 NO.8' 'PER HN0052 NO.9'...
    'PER HN0052 NO.10' 'PER HN052H NO.1' 'PER HN052H NO.2' 'PER HN052H NO.3' 'PER HN052H NO.4' 'PER HN052H NO.5' 'PER HN052H NO.6' 'PER HN052H NO.7' 'PER HN052H NO.8' 'PER HN00116 NO.1'...
    'PER HN0119 NO.1' 'PER HN0119 NO.2' 'PER HN0119 NO.4' 'PER HN0119 NO.6' 'PER HN0130 NO.1' 'PER HN0130 NO.2' 'PER HN0130 NO.3' 'PER HN0130 NO.4' 'PER HN0130 NO.5' 'PER HN0130H NO.5'...
    'PER HN0130H NO.6' 'PER HN0130H NO.8' 'PER IZ0022 NO.3' 'PER IZ0040 NO.1' 'PER IZ0040 NO.2' 'PER IZ0040 NO.3' 'PER IZ0040 NO.4' 'PER IZ0040 NO.6' 'PER IZ0040 NO.7' 'PER IZ0040 NO.8'...
    'PER IZ046H NO.2' 'PER IZ046H NO.3' 'PER K019H NO.1' 'PER K019H NO.2' 'PER K019H NO.3' 'PER K019H NO.4' 'PER K019H NO.5' 'PER K019H NO.6' 'PER K019H NO.7' 'PER K019H NO.8'...
    'PER K037H NO.4' 'PER K057 NO.1' 'PER K057 NO.2' 'PER K057 NO.3' 'PER K057 NO.4' 'PER K057 NO.5' 'PER K057 NO.6' 'PER K057 NO.7' 'PER K057 NO.8' 'PER K059 NO.1'...
    'PER K059 NO.2' 'PER K059 NO.3/4' 'PER K059 NO.5/6' 'PER K059 NO.7' 'PER K059 NO.8' 'PER K059 NO.9' 'PER K059H NO.1' 'PER K059H NO.3' 'PER K059H NO.4' 'PER K059H NO.5'...
    'PER K059H NO.6' 'PER K059H NO.7' 'PER K0015 NO.1' 'PER K0015 NO.2' 'PER K0015 NO.3' 'PER K0015 NO.4' 'PER K0015 NO.5' 'PER K0045 NO.3' 'PER K0045 NO.4' 'PER K0045 NO.5'...
    'PER K0045 NO.6' 'PER K0045 NO.7' 'PER K0045 NO.8' 'PER K0045 NO.9' 'PER K0045 NO.10' 'PER K0081 NO.1' 'PER K0081 NO.2' 'PER K0081 NO.3' 'PER K0081 NO.4' 'PER K0081 NO.5'...
    'PER K0101 NO.1' 'PER K0101 NO.2' 'PER K0101 NO.3' 'PER K0101 NO.4' 'PER K0101 NO.5' 'PER K0101 NO.6' 'PER K0129 NO.1' 'PER K0129 NO.2' 'PER K0500 NO.5'};

%Data berikut adalah data secara urut kondisi barang, stok barang, terjual
%catatan untuk kondisi barang : cukup         = 30
%                               kurang        = 20
%                               sangat kurang = 10

data = [ 10  5	2
10  3	3
10  4	1
10  20	9
10  40	6
30  10	4
10  10	1
20  15	4
10  10	2
10  10	2
30  15	1
30  10	5
10  15	7
20  30	1
30  25	2
30  20	9
20  20	4
10  30	8
10  15	5
10  15	5
20  30	8
10  15	3
30  20	1
30  25	7
10  15	3
30  25	5
30  20	3
20  25	5
10  20	4
20  20	7
10  10	1
10  40	22
10  40	22
30  20	9
10  25	11
20  20	12
10  25	18
10  45	15
20  20	11
30  10	4
10  10	3
20  15	2
20  10	1
30  10	1
30  20	5
30  10	1
20  10	3
30  10	2
30  10	2
30  10	3
20  10	1
20  10	1
10  10	7 
10  10	1
10  20	5
10  35	11
20  10	4
30  10	9
10  6	5
20  10	3
10  40	1
20  35	3
30  50	45
30  35	11
30  30	16
10  45	15
10  25	9
20  20	9
20  10	5
10  15	4
20  25	10
30  60	2
20  40	2
10  20	7
30  60	4
30  50	4
20  20	3
10  25	4
20  25	1
20  90	71
30  70	14
10  45	13
10  30	10
30  35	20
20  25	7
30  20	9
30  85	71
20  85	18
10  75	8
20  40	11
20  60	14
10  20	11
10  30	4
10  24	7
20  10	2
10  20	1
10  35	2
10  11	1
30  15	7
30  15	3
20  10	7
10  10	1
10  15	2
30  15	2
20  15	3
20  15	6
20  5	2
20  15	3
10  15	2
30  5	2
10  52	12
10  40	10
10  60	24
30  40	24
20  40	13
30  80	22
30  20	5
10  15	4
10  5	1];

%Menetukan batas maksimal untuk ketiga kriteria diatas. Kriteria yang
%digunakan dalam kasus ini antara lain: kondisi barang, jumlah stok barang,
%dan jumlah barang terjual
maksKondisiBarang = 30;
maksStokBarang = 90;
maksTerjual = 90;

%Melakukan normalisasi data pada masing-masing kriteria dengan
%cara membagi masing-masing data dengan nilai maksimal pada 
%masing-masing kriteria.
data(:,1) = data(:,1) / maksKondisiBarang;
data(:,2) = data(:,2) / maksStokBarang;
data(:,3) = data(:,3) / maksTerjual;

%Menentukan relasi antar kriteria yang digunakan
relasiAntarKriteria = [ 1     2     2
                        0     1     3
                        0     0     1];
%Menentukan TFN                      
TFN = {[-30/3 0      30/3]     [3/30   0     -3/30 ]
       [0     30/3   90/3]     [3/90   3/30      0 ]
       [30/3  90/3  180/3]     [3/180  3/90   3/30 ]
       [90/3  180/3 210/3]     [3/210  3/180  3/90 ]};
   
   %Melakukan perhitungan rasio konsistensi untuk memastikan bahwa matriks 
   %relasi antara kriteria sudah bernilai benar
   [RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria)

if RasioKonsistensi < 0.10
    %Metode Fuzzy AHP
    [bobotAntarKriteria, relasiAntarKriteria] = FuzzyAHP(relasiAntarKriteria, TFN);    

    %Menghitung nilai skor akhir 
    ahp = data * bobotAntarKriteria';
    
    disp('Hasil Perhitungan Penjualan barang dalam kurun waktu dua bulan')
    disp('dengan menggunakan metode Fuzzy AHP.') 
    disp('Nama Barang        Skor Akhir     Kesimpulan')
end

%Menentukan kesimpulan setiap barang dengan menggunakan skor akhir sebagai
%nilai
for i = 1:size(ahp, 1)
        if ahp(i) < 0.6
            status = 'Kurang';
        elseif ahp(i) < 0.7
            status = 'Cukup';
        elseif ahp(i) < 0.8
            status = 'Baik';
        else
            status = 'Sangat Baik';
        end
        
        disp([char(namaBarang(i)), blanks(20 - cellfun('length',namaBarang(i))), ', ', ... 
             num2str(ahp(i)), blanks(13 - length(num2str(ahp(i)))), ', ', ...
             char(status)])
end