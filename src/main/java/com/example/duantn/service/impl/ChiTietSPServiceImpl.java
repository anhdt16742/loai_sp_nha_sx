package com.example.duantn.service.impl;

import com.example.duantn.model.ChiTietSanPham;
import com.example.duantn.model.HoaDon;
import com.example.duantn.model.KichCo;
import com.example.duantn.model.LoaiSanPham;
import com.example.duantn.repository.ChiTietSanPhamRepository;
import com.example.duantn.repository.LoaiSanPhamRepository;
import com.example.duantn.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ChiTietSPServiceImpl implements BaseService<ChiTietSanPham> {
    @Autowired
    ChiTietSanPhamRepository repo_chiTietSanPham;

    @Autowired
    LoaiSanPhamRepository repo_loaiSanPham;

//    @Override
//    public List<ChiTietSanPham> layDanhSach() {
//        return repo_chiTietSanPham.getAll();
//    }
//
//    @Override
//    public List<ChiTietSanPham> findByCondition(ChiTietSanPham entity) {
//        return null;
//    }

    @Override
    public Page<ChiTietSanPham> layDanhSach(Pageable pageable) {
        return repo_chiTietSanPham.getAll(pageable);
    }

    @Override
    public Page<ChiTietSanPham> layDanhSach(String textSearch, Pageable pageable) {
        if(textSearch!=null){
            return repo_chiTietSanPham.getAll(textSearch, pageable);
        }

        return repo_chiTietSanPham.getAll(pageable);
    }

//    @Override
//    public Page<ChiTietSanPham> findPage(ChiTietSanPham entity, Pageable pageable) {
//        return null;
//    }

    @Override
    public void xoa(UUID id) {

    }

    @Override
    public void themMoi(ChiTietSanPham entity) {

    }

    @Override
    public void capNhat(ChiTietSanPham entity) {
        repo_chiTietSanPham.save(entity);
    }

    @Override
    public ChiTietSanPham chiTietTheoId(UUID id) {
        Optional<ChiTietSanPham> chiTietSanPham = repo_chiTietSanPham.findById(id);
        ChiTietSanPham chiTietSanPham1 = chiTietSanPham.get();
        return chiTietSanPham1;
    }

    @Override
    public List<ChiTietSanPham> layDanhSachTheoTen(String ten) {
        return null;
    }

    @Override
    public List<ChiTietSanPham> layDanhSach() {
        return repo_chiTietSanPham.getAll();
    }

    public void capNhatSoLuongSauKhiDatHang(Integer soLuongMua, UUID idChiTietSP) {
        repo_chiTietSanPham.updateSoLuong(soLuongMua, idChiTietSP);
    }

    public  List<LoaiSanPham> layTatCa_idLoaiSP_distinct_trongChiTietSP(){
        List<UUID> dsId_loaiSP = new ArrayList<>();
        List<LoaiSanPham> dsLoaiSanPham = new ArrayList<>();
        dsId_loaiSP = repo_chiTietSanPham.getAllLoaiSanPham_coTrongChiTietSP();
        dsLoaiSanPham = repo_loaiSanPham.findAll();

        List<LoaiSanPham> dsLoaiSanPhamNew = new ArrayList<>();
        for(LoaiSanPham x : dsLoaiSanPham){
            for(UUID id : dsId_loaiSP){
                if(id.equals(x.getId())){
                    dsLoaiSanPhamNew.add(x);
                }
            }
        }

        return dsLoaiSanPhamNew;
    }

    public  List<ChiTietSanPham> layDanhSachSanPham_soLuongLonHon_0(Pageable pageable){
        return (List<ChiTietSanPham>) repo_chiTietSanPham.getAllProductLonHon_0(pageable);
    }


    // getListIDMauSacFromSanPhamChiTiet_byIdSanPham
    public  List<UUID> layDanhSachIDMauSacTuSanPhamCT_bangIdSanPham(UUID idSanPham){
        return repo_chiTietSanPham.getListIDMauSacFromSanPhamChiTiet_byIdSanPham(idSanPham);
    }

    // getListSanPhamChiTietTheo_idSanPham
    public  List<ChiTietSanPham> layDanhSachSPCT_theoIDSanPham(UUID idSanPham){
        return repo_chiTietSanPham.getListSanPhamChiTietTheo_idSanPham(idSanPham);
    }

    // getListSanPhamCT_theoIdMauSac_IdSanPham
    public  List<ChiTietSanPham> layDanhSachSPCT_theoIDSanPham_va_ID_mauSac(UUID idSanPham, UUID idMauSac){
        return repo_chiTietSanPham.getListSanPhamCT_theoIdMauSac_IdSanPham(idSanPham,idMauSac);
    }

    // getListUUID_SanPham_fromChiTietSP
    public  List<UUID> layDanhSach_IdSanPham_trongSanPhamCT(){
        return repo_chiTietSanPham.getListUUID_SanPham_fromChiTietSP();
    }

}
