<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="veshop.aspx.cs" Inherits="CNTT_Watch.veshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            align-content: center;
            text-align:left;
            align-content:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="auto-style1" style="width :80%; margin-left:10%; font-size:20px" >
        <tr>
            <td>
                 &nbsp &nbsp 1. <span style="font-weight:bold; color:red">CNTT Watch </span> với kinh nghiệm hơn 10 năm chuyên kinh doanh bán buôn, bán lẻ đồng hồ chính hãng từ các hãng nổi tiếng trên thế giới như:Tissot, Longines, Frederique constant, Salvatore, Versace.. của Thụy Sỹ,Orient, Seiko, Bulova, Citizen.. của Nhật,Và các sản phẩm thời trang của các nước khác như Mỹ, Hàn, Đức, Pháp.
                 <br />
                <br />&nbsp &nbsp 2. <span style="font-weight:bold; color:red">CNTT Watch </span> có kho hàng new, chính hãng tại địa chỉ: 477 Thanh Niên, Phù Mỹ, Bình Định.
                <br />&nbsp &nbsp 3. <span style="font-weight:bold; color:red">CNTT Watch</span> cam kết cung cấp sản phẩm, dịch vụ và giá cả tốt nhất thị trường, shop chỉ bán hàng chính hãng 100%, nếu phát hiện Fake shop cam kết đền gấp 10 lần giá trị sản phẩm cho khách hàng.
                <br />&nbsp &nbsp 4. <span style="font-weight:bold; color:red">CNTT Watch</span> có nhận thanh toán theo nhiều hình thức:
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Thông tin tài khoản của Shop: 0363698294, MB Bank, NGUYEN VAN CAN.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Thanh toán tiền mặt: Thu COD có cọc trước 10% giá trị sản phẩm –  Cam kết giao hàng đúng hình ảnh và mẫu mã, chất lượng như tư vấn từ nhân viên shop.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Thanh toán chuyển khoản: Shop nhận thanh toán theo hình thức chuyển khoản, banking tất cả các ngân hàng…<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Thanh toán quẹt thẻ: Với hình thức quẹt thẻ Tín dụng Mastercard và Visacard khách sẽ chịu hình thức phí do ngân hàng nhà nước quy định.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Thanh toán trả góp 0%: Shop có nhận thanh toán theo hình thức trả góp qua thẻ tín dụng lãi suất 0% đối với giá trị sản phẩm từ 3 triệu đồng trở lên. Đối với phí chuyển đổi Shop sẽ Free cho khách mua sản phẩm từ 10 triệu trở lên. Thủ tục nhanh gọn, quý khách liên hệ shop để biết thêm chi tiết.<br />
                <br />&nbsp &nbsp 5. <span style="font-weight:bold; color:red">Quy trình mua bán và bảo hành:</span><br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Xem thông tin sản phẩm và tư vấn từ shop –> Khách chọn sản phẩm đưa vào giỏ hàng trên website.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Click vào nút Mua hàng và điền thông tin đặt hàng –> Báo shop xác nhận thông tin và hình thức thanh toán.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Sau khi hoàn tất đặt đơn hàng Shop sẽ gửi email xác nhận đơn hàng quý khách.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Shop sẽ gửi thông tin hình ảnh, video sản phẩm thật giao hàng cho quý khách để xác nhận thông tin giao hàng.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Shop sẽ giao hàng qua các đơn vị vận chuyển và sẽ Free ship đối với tất cả sản phẩm.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Khi nhận hàng quý khách nên kiểm tra hàng ngay, xem hàng có đúng mẫu mã và chất lượng đã đặt mua chưa? nếu có vấn đề gì chưa đúng thì liên hệ ngay với shop qua SĐT: 036.369.8294 để giải quyết nhanh chóng…<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Shop sẽ bảo hành sản phẩm đúng theo tiêu chuẩn của hãng, tùy theo từng sản phẩm mà có chế độ bảo hành khác nhau, nhưng tối thiểu là 1 năm.<br />
                
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Shop chỉ bảo hành với những trường hợp lỗi do nhà sản xuất như: Lỗi máy, vào nước trong tiêu chuẩn cho phép.<br />
                <br />&nbsp &nbsp &nbsp <span style="font-weight:bold; color:red">+</span> Ngoài ra shop tư vấn miễn phí các thắc mắc gặp phải trong quá trình sử dụng..<br />
                 <br />
            </td>
        </tr>
    </table>
</asp:Content>
