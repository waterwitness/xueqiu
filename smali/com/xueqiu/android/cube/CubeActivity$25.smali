.class final Lcom/xueqiu/android/cube/CubeActivity$25;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$25;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 1399
    new-instance v0, Lcom/xueqiu/android/common/widget/ar;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/ar;-><init>()V

    .line 1400
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1401
    const-string v2, "extra_current"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1402
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ar;->e(Landroid/os/Bundle;)V

    .line 1403
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$25;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/ar;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V

    .line 1404
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1405
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1406
    return-void
.end method
