.class public Lcom/xueqiu/android/common/setting/DiagnosticActivity;
.super Lcom/xueqiu/android/common/b;
.source "DiagnosticActivity.java"


# instance fields
.field protected j:Landroid/widget/TextView;

.field protected k:Lcom/xueqiu/android/common/widget/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->j:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Lcom/xueqiu/android/common/widget/ac;->u()Lcom/xueqiu/android/common/widget/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    .line 1225
    iput-boolean v2, v0, Landroid/support/v4/a/h;->c:Z

    .line 1226
    iget-object v1, v0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/ac;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V

    .line 2094
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 2095
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss Z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2096
    const-string v2, "GMT+08:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2097
    new-instance v1, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;Lcom/xueqiu/android/community/model/User;)V

    invoke-static {v1}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    .line 2203
    invoke-virtual {v0}, Lrx/a;->f()Lrx/a;

    move-result-object v0

    .line 2204
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 2205
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/setting/DiagnosticActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$1;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;)V

    new-instance v2, Lcom/xueqiu/android/common/setting/DiagnosticActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$2;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;)V

    new-instance v3, Lcom/xueqiu/android/common/setting/DiagnosticActivity$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity$3;-><init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;)V

    .line 2206
    invoke-virtual {v0, v1, v2, v3}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;Lrx/c/a;)Lrx/j;

    move-result-object v0

    .line 2097
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->a(Lrx/j;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x1

    const-string v1, "\u53d1\u9001"

    .line 66
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020273

    .line 67
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 65
    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 69
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 75
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss Z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, "GMT+08:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v3, "message/rfc822"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Android@xueqiu.com"

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "\u7f51\u7edc\u68c0\u6d4b[%d][%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :try_start_0
    const-string v0, "\u53d1\u9001\u90ae\u4ef6"

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 86
    :catch_0
    move-exception v0

    const-string v0, "\u6ca1\u6709\u5b89\u88c5\u90ae\u4ef6\u5ba2\u6237\u7aef."

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
