<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZohoRecurringPaymentForm.aspx.cs" Inherits="ZohoEbizCharge.ZohoRecurringPaymentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ZOHO CRM</title>
    <link href="~/Content/Style.css" rel="stylesheet" type="text/css" append-version="true" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">
            <img class="img-responsive" src="Content/Zohologo.png" alt="logo" width="350" height="60" />
        </div>
        <div class="head">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h1>Auto Payment: Builder Inc</h1>
                    </div>
                    <div class="col float-right">
                        <p align="right">
                            <asp:Button ID="bt_save" runat="server" Text="Save" CssClass="save save1" Width="150" />
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <%--        <div class="accordion" id="contacts">
            <div class="accordion-item">
                <h2 class="accordion-header" id="heading-1">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#contact_in" >
                        Contact Info
                    </button>
                </h2>
                <div id="contact_in" class="accordion-collapse collapse"
                    aria-labelledby="heading-1" data-bs-parent="#contacts">
                    <div class="accordion-body">
                        <p style="color: blue">
                            In publishing and graphic design, Lorem ipsum
                            is a placeholder text commonly used to demonstr
                            ate the visual form of a document or a typeface 
                            without relying on meaningful content. Lorem ipsum may b
                            e used as a placeholder before final copy is available.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="accordion" id="f_amount">
            <div class="accordion-item">
                <h2 class="accordion-header" id="heading-2">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#f_amount_in" >
                        Contact Info
                    </button>
                </h2>
                <div id="f_amount_in" class="accordion-collapse collapse"
                    aria-labelledby="heading-2" data-bs-parent="#f_amount">
                    <div class="accordion-body">
                        <p style="color: blue">
                            In publishing and graphic design, Lorem ipsum
                            is a placeholder text commonly used to demonstr
                            ate the visual form of a document or a typeface 
                            without relying on meaningful content. Lorem ipsum may b
                            e used as a placeholder before final copy is available.
                        </p>
                    </div>
                </div>
            </div>
        </div>--%>

        <div class="accordion" id="accordionSection">
            <div class="accordion-item mb-3">
                <h2 class="accordion-header">
                    <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseOne">
                        Contact Info
                    </button>
                </h2>
                <div class="accordion-collapse collapse" id="collapseOne" data-bs-parent="#accordionSection">
                    <div class="accordion-body">

                        <div class="row">
                            <div class="col-sm-4 " style="font-weight: bold">
                                Account : 
                            </div>
                            <div class="col-sm-8">
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-4 " style="font-weight: bold">
                                First Name : 
                            </div>
                            <div class="col-sm-8">
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-4 " style="font-weight: bold">
                                Last Name : 
                            </div>
                            <div class="col-sm-8">
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-4 " style="font-weight: bold">
                                E-mail : 
                            </div>
                            <div class="col-sm-8">
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-4 " style="font-weight: bold">
                                Phone : 
                            </div>
                            <div class="col-sm-8">
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-4 " style="font-weight: bold">
                                Billing Address : 
                            </div>
                            <div class="col-sm-8">
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class="accordion-item  mb-3">
                <h2 class="accordion-header">
                    <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo">
                        Fixed Amount Auto Payment
                    </button>
                </h2>
                <div class="accordion-collapse collapse" id="collapseTwo" data-bs-parent="#accordionSection">
                    <div class="accordion-body">

                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="create-tab" data-bs-toggle="tab"
                                    data-bs-target="#create" type="button" role="tab" aria-controls="create" aria-selected="true">
                                    Create
                                </button>
                            </li>

                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="schedule-tab" data-bs-toggle="tab"
                                    data-bs-target="#schedule" type="button" role="tab" aria-controls="schedule" aria-selected="false">
                                    Schedule
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="received-tab" data-bs-toggle="tab"
                                    data-bs-target="#received" type="button" role="tab" aria-controls="received" aria-selected="false">
                                    Received
                                </button>
                            </li>
                        </ul>

                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="create" role="tabpanel" aria-labelledby="create-tab">

                                <h4 style="margin: 24px 4px;">Payment Details</h4>
                                        <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold; padding: 12px 55px;" >
                                        <label for="p_name" >
                                            Payment Name
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="amount"  >
                                            Amount
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="amount" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="freq"  >
                                            Frequency
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="freq" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="s_date"  >
                                            Start Date
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="s_date" runat="server" CssClass="form-control" TextMode="Date" Width="500px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="e_date"  >
                                            End Date
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="edate" runat="server" CssClass="form-control" TextMode="Date" Width="500px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="status"  >
                                            Status
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="status" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="disc"  >
                                            Discription
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding:10px">
                                        <asp:TextBox ID="disc" runat="server" CssClass="form-control" Width="500px" Height="100px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="r_note"  >
                                            Receipt Notes
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding: 10px">
                                        <asp:TextBox ID="rnotes" runat="server" CssClass="form-control" Width="500px" Height="100px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="chechbox"  >
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding: 10px">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked />
                                            <label class="form-check-label" for="flexCheckChecked">
                                                Sent receipt to : 
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 text-right" style="font-weight: bold ; padding: 12px 55px;">
                                        <label for="r_email"  >
                                            
                                        </label>
                                    </div>
                                    <div class="col-sm-8" style="padding: 10px">
                                        <asp:TextBox ID="r_email" runat="server" CssClass="form-control" TextMode ="Email" placeholder="Seperate additional email with comma.." Width="500px"></asp:TextBox>
                                    </div>
                                </div>



                            </div>
                            <div class="tab-pane fade" id="schedule" role="tabpanel" aria-labelledby="schedule-tab">
                                Schedual

                            </div>
                            <div class="tab-pane fade" id="received" role="tabpanel" aria-labelledby="received-tab">
                                Received

                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </form>
</body>
</html>
