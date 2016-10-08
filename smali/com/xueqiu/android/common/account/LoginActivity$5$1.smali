.class final Lcom/xueqiu/android/common/account/LoginActivity$5$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/LoginActivity$5;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity$5;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$5$1;->a:Lcom/xueqiu/android/common/account/LoginActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5$1;->a:Lcom/xueqiu/android/common/account/LoginActivity$5;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$5$1;->a:Lcom/xueqiu/android/common/account/LoginActivity$5;

    iget-object v1, v1, Lcom/xueqiu/android/common/account/LoginActivity$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$5$1;->a:Lcom/xueqiu/android/common/account/LoginActivity$5;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/LoginActivity$5;->c:Ljava/lang/String;

    .line 1055
    iget-object v3, v0, Lcom/xueqiu/android/common/account/b;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/common/account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 421
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x960

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 423
    return-void
.end method
