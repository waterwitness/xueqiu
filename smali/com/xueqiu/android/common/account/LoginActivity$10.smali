.class final Lcom/xueqiu/android/common/account/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/LoginActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$10;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$10;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->n(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/c;->e()V

    .line 486
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x9c4

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 487
    const-string v1, "log_name"

    const-string v2, "QQ"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 488
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 489
    return-void
.end method
