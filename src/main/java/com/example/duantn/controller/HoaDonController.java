package com.example.duantn.controller;

import com.example.duantn.model.HoaDon;
import com.example.duantn.repository.HoaDonRepository;
import com.example.duantn.service.HoaDonService;
import com.example.duantn.service.impl.PhieuGiamGiaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/hoa-don")
public class HoaDonController {
    @Autowired
    HoaDonRepository hoaDonRepository;
    @Autowired
    HoaDonService hoaDonService;
    @Autowired
    PhieuGiamGiaServiceImpl phieuGiamGiaService;

    //hienthi
//    @GetMapping("/hien-thi")
//    public String getAll(Model model,
//                         @RequestParam(value = "page",defaultValue = "0")int page){
//        Integer size = 5;
//        Pageable pageable = PageRequest.of(page,size);
//        model.addAttribute("hoaDon",new HoaDon());
//        model.addAttribute("listHD",hoaDonRepository.findAll(pageable).getContent());
//        model.addAttribute("totalPage",hoaDonRepository.findAll(pageable).getTotalElements());
//        model.addAttribute("listPG",phieuGiamGiaService.getAll());
//        return "admin/HoaDonForm/trangChu";
//    }
    @GetMapping("/hien-thi")
    public String getAllLoaiGhe(
            Model model,
            @RequestParam(defaultValue = "0", name = "page") Integer pageNum,
            @RequestParam(name = "ma", required = false) String ma) {

        // Xử lý phân trang
        Page<HoaDon> pagehoaDon = hoaDonService.phanTrangHoaDon(pageNum, 5);
        model.addAttribute("listHD", pagehoaDon);
        model.addAttribute("hoaDon", new HoaDon());
        model.addAttribute("listPG",phieuGiamGiaService.layDanhSach());
        return "admin/HoaDonForm/trangChu";
    }    //detail
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id,Model model){
        HoaDon hoaDon = hoaDonService.detail(UUID.fromString(id));
        model.addAttribute("hoaDon",hoaDon);
        model.addAttribute("listPG",phieuGiamGiaService.layDanhSach() );
        return "admin/HoaDonForm/update";
    }
    //delete
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable String id){
        hoaDonService.delete(UUID.fromString(id));
        return "redirect:hoa-don/hien-thi";
    }
    //add
    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("hoaDon")HoaDon hoaDon){
        hoaDonService.add(hoaDon);
        return "redirect:/hoa-don/hien-thi";
    }
    //update
    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,@ModelAttribute("hoaDon")HoaDon hoaDon){
        hoaDonService.update(UUID.fromString(id),hoaDon);
        return "redirect:/hoa-don/hien-thi";
    }
    @GetMapping("/tim-kiem")
    public String searchByMa(Model model,
                               @RequestParam(defaultValue = "0", name = "page") Integer pageNum,
                               @RequestParam(name = "ma", required = false) String ma) {
        Page<HoaDon> pagehoaDon;
        if (ma != null && !ma.isEmpty()) {
            pagehoaDon = hoaDonService.searchByMa(ma, pageNum, 5);
        } else {
            pagehoaDon = hoaDonService.phanTrangHoaDon(pageNum, 5);
        }
        model.addAttribute("listHD", pagehoaDon);
        return "admin/HoaDonForm/trangChu";
    }

}
