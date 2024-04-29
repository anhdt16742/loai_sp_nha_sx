package com.example.duantn.config;

import com.example.duantn.model.DotKhuyenMai;
import com.example.duantn.service.impl.DotKhuyenMaiServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

@Component
public class ScheduledTasks {
    @Autowired
    private DotKhuyenMaiServiceImpl dotKhuyenMaiService;

    @Scheduled(cron = "0 * * * * *") // Chạy mỗi phút
    public void checkAndChangeStatus() {
        Date currentTime = new Date();

        // Lấy danh sách DotKhuyenMai từ cơ sở dữ liệu
        List<DotKhuyenMai> danhSachDotKhuyenMai = dotKhuyenMaiService.layDanhSach();

        for (DotKhuyenMai dotKhuyenMai : danhSachDotKhuyenMai) {
            Date ngayKetThuc = dotKhuyenMai.getNgayKetThuc();

            // Kiểm tra và thay đổi trạng thái cho từng DotKhuyenMai
            if (ngayKetThuc.after(currentTime)) {
                dotKhuyenMai.setTrangThai(1);
            } else {
                dotKhuyenMai.setTrangThai(0);
                dotKhuyenMai.setGiaTriGiam(0);
            }

            // Kiểm tra nếu DotKhuyenMai đã ngưng sử dụng (ngày kết thúc trước thời gian hiện tại)
            if (dotKhuyenMai.getTrangThai() == 0) {
                dotKhuyenMai.setGiaTriGiam(0);
            }

            // Lưu thay đổi vào cơ sở dữ liệu
            dotKhuyenMaiService.capNhat(dotKhuyenMai);
        }
    }
}
