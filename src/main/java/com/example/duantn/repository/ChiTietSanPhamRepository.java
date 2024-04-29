package com.example.duantn.repository;

import com.example.duantn.model.ChatLieu;
import com.example.duantn.model.ChiTietSanPham;
import com.example.duantn.model.KichCo;
import com.example.duantn.model.LoaiSanPham;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, UUID> {
    @Query(value = "select * from SanPhamCT ", nativeQuery = true)
    public List<ChiTietSanPham> getAll();

    @Query(value = "select  * from SanPhamCT ",
            countQuery = "select  count(*) from SanPhamCT", nativeQuery = true)
    public List<ChiTietSanPham> getAllList( Pageable pageable);

    @Query(value = "select  * from SanPhamCT ",
            countQuery = "select  count(*) from SanPhamCT", nativeQuery = true)
    public Page<ChiTietSanPham> getAll( Pageable pageable);


    @Query(value = "select  * from SanPhamCT \n" +
            "inner join SanPham on SanPhamCT.IdSanPham = SanPham.Id\n" +
            "inner join DanhMuc on SanPhamCT.IdDanhMuc = DanhMuc.Id\n" +
            "inner join ThuongHieu on SanPhamCT.IdThuongHieu = ThuongHieu.Id\n" +
            "where Concat(SanPham.ten, DanhMuc.Ten, ThuongHieu.Ten) like %:textSearch%\n",
            countQuery = "select  count(*) from SanPhamCT \n" +
                    "inner join SanPham on SanPhamCT.IdSanPham = SanPham.Id\n" +
                    "inner join DanhMuc on SanPhamCT.IdDanhMuc = DanhMuc.Id\n" +
                    "inner join ThuongHieu on SanPhamCT.IdThuongHieu = ThuongHieu.Id\n" +
                    "where Concat(SanPham.ten, DanhMuc.Ten, ThuongHieu.Ten) like %:textSearch%\n",
            nativeQuery = true)
    public Page<ChiTietSanPham> getAll(@Param("textSearch") String textSearch, Pageable pageable);


    // @Modifying : cho spring biet day la truy van cap nhat/delete , bắt buộc có @Transctional
    @Transactional
    @Modifying
    @Query(value = "UPDATE SanPhamCT " +
            "SET SoLuong = SoLuong - :soLuongMua " +
            "WHERE ID = :idSanPhamCT", nativeQuery = true)
    public void updateSoLuong(@Param("soLuongMua") Integer soLuongMua, @Param("idSanPhamCT") UUID idSanPhamCT);

    @Query(value = "select * from SanPhamCT  where SoLuong>0 order by (GiaTriSanPham-GiaTriGiam)/GiaTriSanPham*100 desc ",
            countQuery = "select count(*) from SanPhamCT  where SoLuong>0", nativeQuery = true)
    public List<ChiTietSanPham> getAllProductLonHon_0( Pageable pageable);
    //select DISTINCT  ID_loaiSP from SanPhamCT
    //join LoaiSanPham on LoaiSanPham.Id = SanPhamCT.ID_loaiSP

    @Query(value = "select DISTINCT ID_loaiSP as id from SanPhamCT join LoaiSanPham on LoaiSanPham.Id = SanPhamCT.ID_loaiSP",
            countQuery = "select DISTINCT count(ID_loaiSP) as id, LoaiSanPham.ten as ten from SanPhamCT join LoaiSanPham on LoaiSanPham.Id = SanPhamCT.ID_loaiSP"
            , nativeQuery = true)
    public List<UUID> getAllLoaiSanPham_coTrongChiTietSP();

    // lay danh sách id_mauSacTrongSanPhamChiTiet theo idSanPham
    @Query(value = "select distinct IdMauSac from SanPhamCT where IdSanPham =:idSanPham"
            , nativeQuery = true)
    public List<UUID> getListIDMauSacFromSanPhamChiTiet_byIdSanPham(@Param("idSanPham") UUID idSanPham);

    // select distinct IdSanPham from SanPhamCT
    // lấy danh sách IdSanPham trong SanPhamCT không lặp giá trị
    @Query(value = "select distinct IdSanPham from SanPhamCT", nativeQuery = true)
    public List<UUID> getListUUID_SanPham_fromChiTietSP();


    // lay danh sách san pham chi tiet theo idSanPham
    @Query(value = "select * from SanPhamCT where IdSanPham =:idSanPham"
            , nativeQuery = true)
    public List<ChiTietSanPham> getListSanPhamChiTietTheo_idSanPham(@Param("idSanPham") UUID idSanPham);


    // lay danh sách sản phẩm theo IdMauSac va IdSanPham
    @Query(value = "select * from SanPhamCT " +
            "where IdSanPham =:idSanPham and IdMauSac =:idMauSac"
            , nativeQuery = true)
    public List<ChiTietSanPham> getListSanPhamCT_theoIdMauSac_IdSanPham(@Param("idSanPham") UUID idSanPham,
                                                                        @Param("idMauSac") UUID idMauSac);


}
