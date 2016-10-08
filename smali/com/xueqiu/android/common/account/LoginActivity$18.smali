.class final Lcom/xueqiu/android/common/account/LoginActivity$18;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$18;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 678
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$18;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/b;->c:Z

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$18;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->j()V

    .line 1053
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 692
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x960

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 694
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$18;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->m(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 682
    const-string v0, "\u8bf7\u8f93\u51654\u4f4d\u6570\u9a8c\u8bc1\u7801"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$18;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$18;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
