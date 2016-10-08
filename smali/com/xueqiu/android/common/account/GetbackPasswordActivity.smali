.class public Lcom/xueqiu/android/common/account/GetbackPasswordActivity;
.super Lcom/xueqiu/android/common/b;
.source "GetbackPasswordActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->setContentView(I)V

    .line 39
    const-string v0, "\u627e\u56de\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;-><init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method
