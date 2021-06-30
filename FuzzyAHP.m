function [bobotAntarKriteria, relasiAntarKriteria] = FuzzyAHP(relasiAntarKriteria, TFN)
fuzzyRelasi={};
[jumlahData, jumlahKriteria] = size(relasiAntarKriteria);
 
%=>Melakukan konversi masing-masing relasi antar kriteria menjadi TFN (Triangular Fuzzy Number) (poin 6a - 6b)
 
%Melakukan perhitungan pada matriks relasi antar kriteria
%Memasukkan nilai pada bagian segitiga bawah sesuai dengan nilai sesuai pada poin 3.
for i=1:jumlahData
    for j=i+1:jumlahData
       relasiAntarKriteria(j,i) = 1 / relasiAntarKriteria(i,j); 
    end
end
 
%Melakukan perhitungan pada matriks relasi antar kriteria
%Jika nilai matriks relasi antar kriteria lebih dari 1, 
%maka nilai TFN yang digunakan adalah nilai kriteria pada kelompok pertama
%Jika nilai matriks relasi antar kriteria kurang dari 1, 
%maka nilai TFN yang digunakan adalah nilai kriteria pada kelompok kedua
for i=1:jumlahData
    for j=1:jumlahKriteria
        kriteria = relasiAntarKriteria(i,j);
        if kriteria >= 1
           fuzzyRelasi{i,j} = TFN{kriteria ,1 };
        else
           fuzzyRelasi{i,j} = TFN{round(kriteria^-1) ,2 };
        end
    end
end
 
%Menghitung jumlah dari masing-masing TFN yang dipakai dalam matriks relasi antar kriteria
%Kemudian menjumlahkan nilai tersebut pada masing-masing kolom kriteria
for i=1:jumlahData
    barisRelasi = [fuzzyRelasi{i,:}];
    jumlahRelasiPerBaris{1,i} = sum(reshape(barisRelasi,3,[])');
end
 
RelasiPerData = [jumlahRelasiPerBaris{1,:}];
jumlahRelasiPerKolom = sum(reshape(RelasiPerData,3,[])');
 
%Melakukan perhitungan pada masing-masing nilai relasi pada masing-masing kolom
%Melakukan pembagian dengan jumlah relasi pada masing-masing kolom
%Kemudian mencatat jumlah dari pembagian tersebut untuk setiap kolomnya
for i=1:jumlahData
    RelasiPerData = [jumlahRelasiPerBaris{1,i}];
    for j=1:3
        nilaiRelasiPerKolom = jumlahRelasiPerKolom(1,j);
        jumlahPerKolom(1,j) = (RelasiPerData(1,j))*(1/nilaiRelasiPerKolom);
    end
    jumlahRelasiPerBaris{1,i} = jumlahPerKolom;
end
 
%=>MElakukan perhitungan derajat kemungkinan
%Rumus yang digunakan adalah sebagai berikut:
%              /---
%              | jika m2>=m1          1    
%              |
%              | jika l1>=l2          0    
% V(M2>=M1) = <
%              |                    l1-u2
%              | selain itu     --------------- 
%              |                (m1-u2)-(m1-l1)
%              \---
derajatKemungkinan = zeros(jumlahData*(jumlahData-1),3);
idxBaris = 1;
 
%Melakukan perhitungan pada masing-masing data dengan indeks baris dan kolom tidak sama
for i=1:jumlahData
    for j=1:jumlahData
        if i~=j
            %Memasukkan nilai awal derajat kemungkinan, M1, dan M2 sesuai rumus yang telah dijelaskan sebelumnya
            derajatKemungkinan(idxBaris,[1 2]) = [i j];
            M1 = jumlahRelasiPerBaris{1,i};
            M2 = jumlahRelasiPerBaris{1,j};
            
            %Menghitung nilai derajat kemungkinan menggunakan rumus yang telah dijelaskan sebelumnya
            if M1(1,2) >= M2(1,2)
                derajatKemungkinan(idxBaris,3) = 1;
            elseif M2(1,1) >= M1(1,3)
                derajatKemungkinan(idxBaris,3) = 0;
            else
                derajatKemungkinan(idxBaris,3) = (M2(1,1)-M1(1,3))/((M1(1,2)-M1(1,3))-(M2(1,2)-M2(1,1)));
            end
            
            idxBaris = idxBaris + 1;
        end
    end
end
 
%Menghitung nilai bobot menggunakan nilai derajat kemungkinan minimal pada masing-masing kriteria
bobotAntarKriteria = zeros(1,jumlahData);
for i=1:jumlahData,
    bobotAntarKriteria(1,i) = min(derajatKemungkinan([find(derajatKemungkinan(:,1) == i)], [3]));
end
 
%Melakukan normalisasi terhadap nilai bobot yang telah dihitung
%yaitu dengan cara membagi masing-masing nilai bobot dengan total semua bobot
bobotAntarKriteria = bobotAntarKriteria/sum(bobotAntarKriteria);
 
end
