package com.example.duantn.repository;

import com.example.duantn.model.HoaDon;
import com.example.duantn.record.OrderDetailRecord;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, UUID> {
    @Query(value = "select * from HoaDon ",nativeQuery = true)
    List<HoaDon>getAll();

    @Query(value = "select * from HoaDon where trangThai =:trangThai ",
            countQuery = "select * from HoaDon where trangThai =:trangThai", nativeQuery = true)
    List<HoaDon> getHoaDonBy_status(@Param("trangThai") Integer trangThai);


    @Query(value = "select * from HoaDon where Ma =:maInput ",
            countQuery = "select * from HoaDon where Ma =:maInput", nativeQuery = true)
    HoaDon getHoaDonBy_ma(@Param("maInput") String maHoaDon);
    ///
    Page<HoaDon> findByMa(String ma, Pageable pageable);

    @SuppressWarnings("all")
    @Query("""
         select new com.example.duantn.record.OrderDetailRecord(
             od.hoaDon.id,
             od.hoaDon.ma,
             product.ten,
             cast(pd.giaTriSanPham as double),
             cast(od.soLuong as int),
             cast(od.soLuong * pd.giaTriSanPham as double))
         from HoaDonChiTiet od
         left join od.hoaDon hoaDon
         left join od.chiTietSanPham pd
         left join pd.sanPham product
         where od.hoaDon.id = :orderId
         order by od.ngayTao desc
        """)
    List<OrderDetailRecord> findByOrderId(UUID orderId);
}
