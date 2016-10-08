.class final Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;
.super Ljava/lang/Object;
.source "UpdatePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/UpdatePasswordActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->a(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->b(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->c(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "\u65e7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    :cond_1
    const-string v0, "(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    const v0, 0x7f0703d2

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const-string v0, "\u786e\u8ba4\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->d(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V

    goto :goto_0
.end method
