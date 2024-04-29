package com.example.duantn.service.impl;

import com.example.duantn.model.ChiTietSanPham;
import com.example.duantn.model.PhieuGiamGia;
import com.example.duantn.repository.PhieuGiamGiaRepository;
import com.example.duantn.service.PhieuGiamGiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PhieuGiamGiaServiceImpl implements PhieuGiamGiaService {
    @Autowired
    PhieuGiamGiaRepository phieuGiamGiaRepository;

    public List<PhieuGiamGia> layDanhSach() {
        return phieuGiamGiaRepository.getAll();
    }

    @Override
    public List<PhieuGiamGia> getAll() {
        return phieuGiamGiaRepository.getAll();
    }

    public Page<PhieuGiamGia> layDanhSach(String textSearch, Pageable pageable) {
        if(textSearch!=null){
            return phieuGiamGiaRepository.getAll(textSearch, pageable);
        }

        return phieuGiamGiaRepository.getAll(pageable);
    }

    public Page<PhieuGiamGia> layDanhSach(Pageable pageable) {
        return phieuGiamGiaRepository.getAll(pageable);
    }


    @Override
    public void delete(UUID id) {
        phieuGiamGiaRepository.deleteById(id);

    }

    @Override
    public void add(PhieuGiamGia phieuGiamGia) {
        phieuGiamGiaRepository.save(phieuGiamGia);

    }

    @Override
    public PhieuGiamGia detail(UUID id) {
        PhieuGiamGia phieuGiamGia = phieuGiamGiaRepository.findById(id).get();
        return phieuGiamGia;
    }

    @Override
    public PhieuGiamGia update(UUID id, PhieuGiamGia phieuGiamGia) {
        PhieuGiamGia phieuGiamGia1 = phieuGiamGiaRepository.save(phieuGiamGia);
        return phieuGiamGia1;
    }
}
