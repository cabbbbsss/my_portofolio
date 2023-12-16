CREATE TABLE salycil_kimia_farma.base_table AS (
  SELECT
    pjl.id_distributor, pjl.id_cabang, pjl.id_invoice, pjl.tanggal,
    pjl.id_customer, pjl.id_barang, pjl.jumlah_barang, pjl.unit,
    pjl.harga, pjl.mata_uang, pjl.brand_id, pjl.lini, plg.level,
    plg.nama, plg.id_cabang_sales, plg.cabang_sales, plg.id_group,
    plg.group_, br.sektor, br.nama_barang, br.tipe, br.nama_tipe,
    br.kode_lini, br.kemasan
  FROM salycil_kimia_farma.penjualan pjl
    LEFT JOIN salycil_kimia_farma.pelanggan plg
      ON pjl.id_customer = plg.id_customer
    LEFT JOIN salycil_kimia_farma.barang br
      ON pjl.id_barang = br.kode_barang
);

ALTER TABLE salycil_kimia_farma.base_table ADD PRIMARY KEY (id_invoice);