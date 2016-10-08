.class final Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;
.super Ljava/lang/Object;
.source "GetbackPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 46
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v5, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;

    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-direct {v5, p0, v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;-><init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;Lcom/xueqiu/android/base/b/q;)V

    .line 84
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1173
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 85
    if-eqz v0, :cond_0

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2173
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 86
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;-><init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)V

    invoke-virtual {v3, v6, v6, v6, v0}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->h()Landroid/app/Dialog;

    .line 106
    :cond_1
    return-void

    .line 3069
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3173
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v4, v0, v5}, Lcom/xueqiu/android/base/b/ai;->f(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method
