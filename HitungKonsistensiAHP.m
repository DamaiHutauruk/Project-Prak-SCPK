function [RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria)
%Menentukan Indeks Konsistensi Acak yang digunakan
%Nilai yang nantinya dipakai adalah nilai pada indeks sebanyak jumlah kriteria yang ada
indeksAcak = [0 0 0.58 0.9 1.12 1.24 1.32 1.41 1.45 1.49];
 
%Menghitung jumlah kriteria yang sesuai dengan ukuran matriks relasi antar kriteria
[op, jumlahKriteria] = size(relasiAntarKriteria);
 
%Menghitung nilai lambda, yaitu nilai eigenvalue dengan menggunakan fungsi eigenvector
[opp, lambda] = eig(relasiAntarKriteria);
 
%Menentukan maksimal nilai lambda yang telah dihitung sebelumnya
maksLambda = max(max(lambda));
 
%Menentukan nilai indeks konsistensi dengan rumus (maksLambda-n)/(n-1)
IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria-1);
 
%Menghitung rasio konsistensi untuk mendapatkan jawaban akhir
RasioKonsistensi = IndeksKonsistensi/indeksAcak(1,jumlahKriteria);
 
%Jika nilai rasio konsistensi lebih dari 0.1, maka menampilkan pesan kesalahan
if RasioKonsistensi > 0.10
    str = 'Rasio Konsistensi adalah %% %1.2f. Matriks yang dievaluasi tidak konsisten!';
    str = sprintf(str,RasioKonsistensi);
    disp(str);
end
end
