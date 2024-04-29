package com.example.duantn.service.impl;

import com.example.duantn.model.HoaDon;
import com.example.duantn.model.HoaDonChiTiet;
import com.example.duantn.repository.HoaDonRepository;
import com.example.duantn.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class HoaDonServiceImpl implements HoaDonService {

    @Autowired
    HoaDonRepository hoaDonRepository;
    @Override
    public List<HoaDon> getAll() {
        return hoaDonRepository.getAll();
    }

    public  List<HoaDon> layDanhSachHoaDon_theoTrangThai(Integer trangThai){
        return hoaDonRepository.getHoaDonBy_status(trangThai);
    }

    @Override
    public void delete(UUID id) {
        hoaDonRepository.deleteById(id);

    }

    @Override
    public void add(HoaDon hoaDon) {
        hoaDonRepository.save(hoaDon);

    }

    public HoaDon themMoi(HoaDon hoaDon) {
        return hoaDonRepository.save(hoaDon);
    }

    @Override
    public HoaDon detail(UUID id) {
        HoaDon hoaDon = hoaDonRepository.findById(id).get();
        return hoaDon;
    }

    @Override
    public HoaDon update(UUID id, HoaDon hoaDon) {
        HoaDon hoaDon1 = hoaDonRepository.save(hoaDon);
        return hoaDon1;
    }


    public Page<HoaDon> searchByMa(String ma, Integer pageNum, Integer pageSize) {
        Page pageable = (Page) PageRequest.of(pageNum,pageSize);
        return hoaDonRepository.findByMa(ma, (Pageable) pageable);
    }


    public Page<HoaDon> phanTrangHoaDon(Integer pageNum, Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNum,pageNo);
        return hoaDonRepository.findAll(pageable);
    }


}
