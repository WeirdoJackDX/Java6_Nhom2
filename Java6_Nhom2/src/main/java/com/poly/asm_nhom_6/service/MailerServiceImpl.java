package com.poly.asm_nhom_6.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.poly.asm_nhom_6.model.MailInfo;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class MailerServiceImpl implements MailerService {

    List<MailInfo> list = new ArrayList<>();

    @Autowired
    JavaMailSender sender;

    @Override
    public void send(MailInfo mail) throws MessagingException {
        // TODO mã nguồn gửi email đặt ở đây
        // Tạo message
        MimeMessage message = sender.createMimeMessage();
        // Sử dụng Helper để thiết lập các thông tin cần thiết cho message
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
        helper.setFrom(mail.getFrom());
        helper.setTo(mail.getTo());
        helper.setSubject(mail.getSubject());
        helper.setText(mail.getBody(), true);
        helper.setReplyTo(mail.getFrom());
        String[] cc = mail.getCc();
        if (cc != null && cc.length > 0) {
            helper.setCc(cc);
        }
        String[] bcc = mail.getBcc();
        if (bcc != null && bcc.length > 0) {
            helper.setBcc(bcc);
        }
        String[] attachments = mail.getAttachments();
        if (attachments != null && attachments.length > 0) {
            for (String path : attachments) {
                File file = new File(path);
                helper.addAttachment(file.getName(), file);
            }
        }
        // Gửi message đến SMTP server
        sender.send(message);
    }

    @Override
    public void send(String to, String subject, String body)
            throws MessagingException {
        this.send(new MailInfo(to, subject, body));
    }

    @Override
    public void queue(MailInfo mail) {
        list.add(mail);
    }

    @Override
    public void queue(String to, String subject, String body) {
        String link = "http://localhost:8080/user/home/index";
        body = "" +
                "<div style=\"font-family: Helvetica,Arial,sans-serif;min-width:1000px;overflow:auto;line-height:2\">\n"
                +
                "  <div style=\"margin:50px auto;width:70%;padding:20px 0\">\n" +
                "    <div style=\"border-bottom:1px solid #eee\">\n" +
                "      <a href='" + link
                + "' style=\"font-size:1.4em;color: #00466a;text-decoration:none;font-weight:600\">LOVE CAKE</a>\n"
                +
                "    </div>\n" +
                "    <p style=\"font-size:1.1em\">Xin chào,</p>\n" +
                "    <p>Cảm ơn bạn đã tin tưởng lựa chọn cửa hàng của chúng tôi</p>\n"
                +
                "    <h2 style=\"background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;\">Chào mừng bạn đã đến với thế giới bánh ngọt</h2>\n"
                +
                "    <p style=\"font-size:0.9em;\">Trân trọng,<br />LOVE CAKE</p>\n" +
                "    <hr style=\"border:none;border-top:1px solid #eee\" />\n" +
                "    <div style=\"float:right;padding:8px 0;color:#aaa;font-size:0.8em;line-height:1;font-weight:300\">\n"
                +
                "      <p>Team 6</p>\n" +
                "      <p>123, Đường Nguyễn Văn Linh, TP.Cần Thơ</p>\n" +
                "      <p>Việt Nam</p>\n" +
                "    </div>\n" +
                "  </div>\n" +
                "</div>";
        subject = "Thư chào mừng";
        queue(new MailInfo(to, subject, body));
    }

    @Scheduled(fixedDelay = 5000)
    public void run() {
        while (!list.isEmpty()) {
            MailInfo mail = list.remove(0);
            try {
                this.send(mail);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
