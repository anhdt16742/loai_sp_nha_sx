package com.example.duantn.repository;

import com.example.duantn.model.HoaDon;
import com.example.duantn.model.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonCTRepository extends JpaRepository<HoaDonChiTiet, UUID> {
    @Query(value = "select * from HoaDonCT ",nativeQuery = true)
    List<HoaDonChiTiet> getAll();


}

