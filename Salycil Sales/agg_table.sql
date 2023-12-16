SELECT
  bt.id_invoice, bt.tanggal, bt.id_customer,
  bt.nama AS nama_customer, bt.cabang_sales,
  bt.id_distributor,
  COUNT(DISTINCT id_barang) AS total_barang,
  SUM(harga) AS total_pembelian
FROM salycil_kimia_farma.base_table bt
GROUP BY 1,2,3,4,5,6
ORDER BY 1;