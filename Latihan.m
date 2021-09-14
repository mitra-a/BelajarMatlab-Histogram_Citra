%DATA
data = [1 2 1 1, 3 3 4 7, 2 1 1 7];

%HISTOGRAM
[kolom, baris] = size(data);
histogram = zeros(1,7);

for x = 1 : kolom 
    for y = 1 : baris
        ii = data(x,y);
        histogram(ii) = histogram(ii) + 1; 
    end
end

figure(1)
bar(histogram)
axis([0 8 0 8])
grid on

%KOMULATIF
kumulatif = zeros(1,7);
for k = 1 : 7
    kumulatif(k) = sum(histogram(1:k));
end

figure(2)
bar(kumulatif)
axis([0 8 0 kolom*baris])
grid on

%EKUALISASI
ekualisasi = zeros(1,7);
for e = 1 : 7
    ekualisasi(e) = round(kumulatif(e) * 7 / (kolom * baris));
end

figure(3)
bar(ekualisasi)
axis([0 8 0 kolom*baris])
grid on
