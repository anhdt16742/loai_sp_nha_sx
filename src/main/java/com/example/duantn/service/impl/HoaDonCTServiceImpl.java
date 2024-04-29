package com.example.duantn.service.impl;

import com.example.duantn.model.HoaDonChiTiet;
import com.example.duantn.record.OrderDetailRecord;
import com.example.duantn.repository.HoaDonCTRepository;
import com.example.duantn.repository.HoaDonRepository;
import com.example.duantn.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class HoaDonCTServiceImpl implements BaseService<HoaDonChiTiet> {
    @Autowired
    HoaDonCTRepository hoaDonCTRepository;
    @Autowired
    private HoaDonRepository hoaDonRepository;

//    @Override
//    public List<HoaDonChiTiet> getAll() {
//        return hoaDonCTRepository.getAll();
//    }
//
//    @Override
//    public void delete(UUID id) {
//
//        hoaDonCTRepository.deleteById(id);
//    }

//    @Override
//    public void add(HoaDonChiTiet hoaDonCT) {
//        hoaDonCTRepository.save(hoaDonCT);
//
//    }

//    @Override
//    public HoaDonChiTiet detail(UUID id) {
//        HoaDonChiTiet hoaDonCT = hoaDonCTRepository.findById(id).get();
//        return hoaDonCT;
//    }
//
//    @Override
//    public HoaDonChiTiet update(UUID id, HoaDonChiTiet hoaDonCT) {
//        HoaDonChiTiet hoaDonCT1 = hoaDonCTRepository.save(hoaDonCT);
//        return hoaDonCT1;
//    }

//    @Override
//    public List<HoaDon> layDanhSach() {
//        return null;
//    }

//    @Override
//    public List<HoaDonChiTiet> findByCondition(HoaDon entity) {
//        return null;
//    }

    @Override
    public List<HoaDonChiTiet> layDanhSach() {
        return null;
    }

    @Override
    public Page<HoaDonChiTiet> layDanhSach(Pageable pageable) {
        return null;
    }

    @Override
    public Page<HoaDonChiTiet> layDanhSach(String textSearch, Pageable pageable) {
        return null;
    }

//    @Override
//    public Page<HoaDonChiTiet> findPage(HoaDon entity, Pageable pageable) {
//        return null;
//    }

    @Override
    public void xoa(UUID id) {

    }


    @Override
    public void themMoi(HoaDonChiTiet entity) {
        hoaDonCTRepository.save(entity);
    }


    @Override
    public void capNhat( HoaDonChiTiet hoaDonChiTiet) {
         hoaDonCTRepository.save(hoaDonChiTiet);
    }

    public void capNhat(UUID id, HoaDonChiTiet entity) {
        HoaDonChiTiet hoaDon1 = hoaDonCTRepository.save(entity);
    }

    @Override
    public HoaDonChiTiet chiTietTheoId(UUID id) {
        return null;
    }

    public List<OrderDetailRecord> findByOrderId(UUID id) {
        return hoaDonRepository.findByOrderId(id);
    }

    @Override
    public List<HoaDonChiTiet> layDanhSachTheoTen(String ten) {
        return null;
    }
}
