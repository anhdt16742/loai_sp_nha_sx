package com.example.duantn.controller.banTaiQuay;

import com.example.duantn.model.HoaDon;
import com.example.duantn.service.impl.ChiTietSPServiceImpl;
import com.example.duantn.service.impl.HoaDonServiceImpl;
import com.example.duantn.service.impl.KhachHangServiceImpl;
import com.example.duantn.service.impl.PhieuGiamGiaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/api/ban-hang")   // /api/ban-hang/getDanhSachSanPham
public class BanHangRestController {

    @Autowired
    ChiTietSPServiceImpl chiTietSPService;

    @Autowired
    KhachHangServiceImpl khachHangService;

    @Autowired
    PhieuGiamGiaServiceImpl phieuGiamGiaService;

    @Autowired
    HoaDonServiceImpl hoaDonService;

    /**
     *
     * @param model
     * @return
     */
    // api lấy ra danh sách các sản phẩm chi tiết
    @GetMapping("/getDanhSachSanPham")
    public ResponseEntity<?> getListProductDetail(
            Model model
    ){
        return ResponseEntity.of(Optional.ofNullable(chiTietSPService.layDanhSach()));
    }

    // api lấy ra danh sách khách hàng
    @GetMapping("/getDanhSachKhachHang")
    public ResponseEntity<?> getListCustomer(
            Model model
    ){
        return ResponseEntity.of(Optional.ofNullable(khachHangService.layDanhSach()));
    }

    // api lấy ra danh sách phieu giảm giá
    @GetMapping("/getDanhSachPhieuGiamGia")
    public ResponseEntity<?> getListDiscount(
            Model model
    ){
        return ResponseEntity.of(Optional.ofNullable(phieuGiamGiaService.layDanhSach()));
    }

    // api lấy ra danh sách phieu giảm giá
    @GetMapping("/getDanhSachHoaDonTheoTrangThai_hoaDonCho")
    public ResponseEntity<?> getListBill_byStatus(
            Model model
    ){
        return ResponseEntity.of(Optional.ofNullable(hoaDonService.layDanhSachHoaDon_theoTrangThai(0)));
    }




}
