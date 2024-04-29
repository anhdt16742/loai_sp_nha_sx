package com.example.duantn.repository;

import com.example.duantn.model.ChiTietSanPham;
import com.example.duantn.model.PhieuGiamGia;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface PhieuGiamGiaRepository extends JpaRepository<PhieuGiamGia, UUID> {
    @Query(value = "select * from PhieuGiamGia ",nativeQuery = true)
    List<PhieuGiamGia>getAll();

    @Query(value = "select  * from PhieuGiamGia ",
            countQuery = "select  count(*) from PhieuGiamGia", nativeQuery = true)
    public Page<PhieuGiamGia> getAll(Pageable pageable);


    @Query(value = "select  * from PhieuGiamGia " +
                    "where Concat(PhieuGiamGia.ten) like %:textSearch%\n",
            nativeQuery = true)
    public Page<PhieuGiamGia> getAll(@Param("textSearch") String textSearch, Pageable pageable);
}
