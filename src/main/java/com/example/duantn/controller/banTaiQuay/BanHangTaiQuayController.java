package com.example.duantn.controller.banTaiQuay;

import com.example.duantn.model.ChiTietSanPham;
import com.example.duantn.model.HoaDon;
import com.example.duantn.model.KhachHang;
import com.example.duantn.model.PhieuGiamGia;
import com.example.duantn.request.GioHang;
import com.example.duantn.request.PhanTrangRequest;
import com.example.duantn.request.SanPhamTrongGioHang;
import com.example.duantn.service.HoaDonService;
import com.example.duantn.service.impl.ChiTietSPServiceImpl;
import com.example.duantn.service.impl.HoaDonServiceImpl;
import com.example.duantn.service.impl.KhachHangServiceImpl;
import com.example.duantn.service.impl.PhieuGiamGiaServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/ban-hang")   // /ban-hang/view
public class BanHangTaiQuayController {

    // , khachHang, GiamGia, SanPhamCT, HoaDon
    @Autowired
    ChiTietSPServiceImpl sanPhamCTService;

    @Autowired
    PhieuGiamGiaServiceImpl phieuGiamGiaService;

    @Autowired
    HoaDonServiceImpl hoaDonService;

    @Autowired
    KhachHangServiceImpl khachHangService;


    @GetMapping("view")
    public String xemBanHangTaiQuay(
            Model model,
            HttpServletRequest httpServletRequest
    ){
        // ds hoa don
        HttpSession session = httpServletRequest.getSession();


//        Pageable pageable2 = PageRequest.of(currentPage, Constant.pageNumber);
//        Page<PhieuGiamGia> pageKhuyenMai =  phieuGiamGiaService.layDanhSach(textSearchPhieuGiam, pageable);
//        List<PhieuGiamGia> khuyenMais = pageKhuyenMai.getContent();

//        // danh sach khách hàng

//        Pageable pageable3 = PageRequest.of(currentPage, Constant.pageNumber);
//        Page<KhachHang> pageKhachHang =  khachHangService.layDanhSach(textSearch, pageable);
//        List<KhachHang> khachHangs = pageKhachHang.getContent();

        return "admin/banHangTaiQuay/banHang2";
    }

    @PostMapping("/phan-trang-sanPhamChiTiet")
    public ResponseEntity<Map<String, Object>> phanTrangSanPhamChiTiet(
            final Model model
            , final HttpServletRequest request
            , final HttpServletResponse response
            , @RequestBody PhanTrangRequest phanTrang
            ) throws IOException {
        int currentPage = 0;
        int pageLimit = phanTrang.getPageLimit()==null?4:phanTrang.getPageLimit();
        currentPage = phanTrang.getCurrentPage()==null?0:phanTrang.getCurrentPage();
//        System.out.println("Current page: " + currentPage);

        Pageable pageable = PageRequest.of(currentPage, pageLimit);
        Page<ChiTietSanPham> pageChiTietSP =  sanPhamCTService.layDanhSach(pageable);
        List<ChiTietSanPham> chiTietSanPhams = pageChiTietSP.getContent();


        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("status", "Success");
        jsonResult.put("danhSachSanPhamChiTiet", chiTietSanPhams);

        return ResponseEntity.ok(jsonResult);
    }

    @PostMapping("/phan-trang-thongTinKhachHang")
    public ResponseEntity<Map<String, Object>> phanTrang_thongTinKhachHang(
            final Model model
            , final HttpServletRequest request
            , final HttpServletResponse response
            , @RequestBody PhanTrangRequest phanTrang
    ) throws IOException {
        int currentPage = 0;
        int pageLimit = phanTrang.getPageLimit()==null?4:phanTrang.getPageLimit();
        currentPage = phanTrang.getCurrentPage()==null?0:phanTrang.getCurrentPage();
//        System.out.println("Current page: " + currentPage);

        Pageable pageable = PageRequest.of(currentPage, pageLimit);
        Page<KhachHang> pageKhachHang =  khachHangService.layDanhSach(pageable);
        List<KhachHang> khachHangs = pageKhachHang.getContent();


        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("status", "Success");
        jsonResult.put("danhSachKhachHang", khachHangs);


        return ResponseEntity.ok(jsonResult);
    }



    @PostMapping("/phan-trang-phieuGiamGia")
    public ResponseEntity<Map<String, Object>> phanTrang_phieuGiamGia(
            final Model model
            , final HttpServletRequest request
            , final HttpServletResponse response
            , @RequestBody PhanTrangRequest phanTrang
    ) throws IOException {
        int currentPage = 0;
        int pageLimit = phanTrang.getPageLimit()==null?4:phanTrang.getPageLimit();
        currentPage = phanTrang.getCurrentPage()==null?0:phanTrang.getCurrentPage();
//        System.out.println("Current page: " + currentPage);


        Pageable pageable = PageRequest.of(currentPage, pageLimit);
        Page<PhieuGiamGia> pagePhieuGiamGia =  phieuGiamGiaService.layDanhSach(pageable);
        List<PhieuGiamGia> phieuGiamGias = pagePhieuGiamGia.getContent();


        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("status", "Success");
        jsonResult.put("danhSachPhieuGiamGia", phieuGiamGias);


        return ResponseEntity.ok(jsonResult);
    }


    // api tự động tạo 1 hóa đơn chờ khi ko có hóa đơn chờ nào trong hệ thống
    @PostMapping("/tuDongTao1HoaDonCho")
    public ResponseEntity<?> tuDongTao1HoaDonCho(
            final Model model
            , final HttpServletRequest request
            , final HttpServletResponse response
    ) throws IOException {

        HoaDon hoaDon_status_waitForPay = new HoaDon();
        hoaDon_status_waitForPay.setTrangThai(0);

        HoaDon hoaDonTaoMoi = hoaDonService.themMoi(hoaDon_status_waitForPay);


        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("status", "Success");
        jsonResult.put("idHoaDon", hoaDonTaoMoi.getId());

        return ResponseEntity.ok(jsonResult);
    }


    @PostMapping("/add-to-hoaDonCho")
    public ResponseEntity<Map<String, Object>> addToCart(
            final Model model
            , final HttpServletRequest request
            , final HttpServletResponse response
            , @RequestBody SanPhamTrongGioHang sanPhamTrongGioHang
    ) throws IOException {
        String hoaDonCho_current = sanPhamTrongGioHang.getTenHoaDon();
        System.out.println("Tên hóa đơn chờ hiện tại : " + hoaDonCho_current);

        int soLuongMuonMua = sanPhamTrongGioHang.getSoLuong();
        int soLuongSPTrongGio = 0;

        ChiTietSanPham chiTietSanPham = sanPhamCTService.chiTietTheoId(sanPhamTrongGioHang.getIdSanPhamCT());
        int soLuongSPTrongKho = chiTietSanPham.getSoLuong();

//        System.out.println("Chạy vào add-to-cart xử lý : " );
        HttpSession session = request.getSession();  // tạo mới 1 session
        GioHang cart = null; // khởi tạo 1 Object cart = null

        // nếu giỏ hàng không null, thì lấy session có tên cart gán vào giỏ hàng
        List<SanPhamTrongGioHang> dsSanPhamGioHangN = new ArrayList<>();
        if (session.getAttribute(hoaDonCho_current) != null) {
//            System.out.println("có sản phẩm trong giỏ hàng");
            cart = (GioHang) session.getAttribute(hoaDonCho_current); // nếu cart đang tồn tại giá trị thì gán giá trị đang tồn tại của cart này vào

            dsSanPhamGioHangN = cart.getDs_SanPhamTrongGioHang();
            for(SanPhamTrongGioHang sanPhamDuocChon : dsSanPhamGioHangN){
                if(sanPhamDuocChon.getIdSanPhamCT().equals(sanPhamTrongGioHang.getIdSanPhamCT())){
                    soLuongSPTrongGio = sanPhamDuocChon.getSoLuong();
                    break;
                }
            }
        } else {  // chưa có j thì khởi tạo cart mới
            cart = new GioHang();
            session.setAttribute(hoaDonCho_current, cart);
//            System.out.println("giỏ hàng chưa có gì cả ");
        }

        // kiem tra so luong trong muon them vao gio > vuot qua so luong san pham trong kho ko ?
//        int soLuongMuonMua = sanPhamTrongGioHang.getSoLuong();
//        int soLuongSPTrongGio = 0;
//
//        ChiTietSanPham chiTietSanPham = chiTietSPService.chiTietTheoId(sanPhamTrongGioHang.getIdSanPhamCT());
//        int soLuongSPTrongKho = chiTietSanPham.getSoLuong();

        if((soLuongMuonMua+soLuongSPTrongGio)>soLuongSPTrongKho){
//            model.addAttribute("soLuongMuaVuotQua",true);
            Map<String, Object> jsonResult = new HashMap<String, Object>();
            jsonResult.put("code", 200);
            jsonResult.put("status", "Success");
            int tongSoLuongTrongGio = dsSanPhamGioHangN.stream().mapToInt(SanPhamTrongGioHang::getSoLuong).sum();

//            System.out.println("Số lượng sản phẩm trong giỏ " + tongSoLuongTrongGio);
            jsonResult.put("totalCartProducts", tongSoLuongTrongGio);
//            jsonResult.put("totalPriceResult", 0);
            jsonResult.put("soLuongMuaVuotQua", true);
//            jsonResult.put("totalPriceResult", cart.tongTienTrongGioHang());

//        System.out.println("Total price : " + cart.tongTienTrongGioHang());
            return ResponseEntity.ok(jsonResult);
        }

//        System.out.println("ID sản phẩm thêm vào cart : " + sanPhamTrongGioHang.getIdSanPhamCT());

        ChiTietSanPham dbSanPhamCT = new ChiTietSanPham();
        if (sanPhamTrongGioHang.getIdSanPhamCT() != null) {
            dbSanPhamCT = sanPhamCTService.chiTietTheoId(sanPhamTrongGioHang.getIdSanPhamCT());
        }
        boolean isExisProduct = false;


//        System.out.println("ID sản phẩm thêm vào giỏ :" + sanPhamTrongGioHang.getIdSanPhamCT());

        // lấy danh sách các sản phẩm trong giỏ hàng thêm vào sản phẩm trong giỏ ( với 1 số thông tin mặc định )
        List<SanPhamTrongGioHang> dsSanPhamTrongGio = cart.getDs_SanPhamTrongGioHang();

//        System.out.println("Danh sách sản phẩm trong giỏ hàng " + dsSanPhamTrongGio.size());


        // nếu sản phẩm có trong giỏ hàng rồi thì sửa số lượng
        for (SanPhamTrongGioHang spTrongGioHang : dsSanPhamTrongGio) {

//            System.out.println("ID trong giỏ" + spTrongGioHang.getIdSanPhamCT());
//            System.out.println("ID mới thêm vào giỏ" + sanPhamTrongGioHang.getIdSanPhamCT());
            if (spTrongGioHang.getIdSanPhamCT().equals(sanPhamTrongGioHang.getIdSanPhamCT())) {
                isExisProduct = true;
//                System.out.println("Sản phẩm này đã có trong giỏ hàng");
                spTrongGioHang.setSoLuong(spTrongGioHang.getSoLuong() + 1);
            }
        }

        // cart ở đây chính là danh sách sản ơphaarm luôn
        // ! ngược lại true = false nghĩa là isExis ko thay đổi => sản phẩm chưa có trong giỏ
        if (isExisProduct == false) {
            sanPhamTrongGioHang.setSanPham(dbSanPhamCT.getSanPham());
            sanPhamTrongGioHang.setMauSac(dbSanPhamCT.getMauSac());
            sanPhamTrongGioHang.setKichCo(dbSanPhamCT.getKichCo());

            double  giaMua = (dbSanPhamCT.getGiaTriGiam()>0?dbSanPhamCT.getGiaTriGiam():dbSanPhamCT.getGiaTriSanPham());
//            System.out.println("Gía mua: " + giaMua);
            sanPhamTrongGioHang.setGia(giaMua);
            sanPhamTrongGioHang.setHinhAnh(dbSanPhamCT.getHinhAnh());
            sanPhamTrongGioHang.setTrongLuong(dbSanPhamCT.getKhoiLuong());

            cart.getDs_SanPhamTrongGioHang().add(sanPhamTrongGioHang);

        }

//        List<SanPhamTrongGioHang> dsSanPhamTrongGios = new ArrayList<>();
//        dsSanPhamTrongGio = cart.getDs_SanPhamTrongGioHang();
//        System.out.println("Size of giỏ hàng : " + dsSanPhamTrongGio.size());
//        System.out.println("Sản phẩm trong giỏ hàng : " + dsSanPhamTrongGio);
//        model.addAttribute("sanPhamTrongGio", dsSanPhamTrongGios);




//        int tongSoLuongTrongGio = dsSanPhamTrongGio.stream().mapToInt(SanPhamTrongGioHang::getSoLuong).sum();
//        jsonResult.put("totalCartProducts", tongSoLuongTrongGio);
//        System.out.println("Số lượng sản phẩm trong giỏ " + tongSoLuongTrongGio);

        // lưu cart vào giỏ
        session.setAttribute(hoaDonCho_current, cart);
//        session.setAttribute("totalCartProducts", tongSoLuongTrongGio);
//        session.setAttribute("totalPriceResult", cart.tongTienTrongGioHang());

        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("status", "Success");
//        jsonResult.put("totalCartProducts", tongSoLuongTrongGio);
//        jsonResult.put("totalPriceResult", cart.tongTienTrongGioHang());
//        jsonResult.put("soLuongMuaVuotQua", false);


//        System.out.println("Total price : " + cart.tongTienTrongGioHang());
        return ResponseEntity.ok(jsonResult);
    }

}
