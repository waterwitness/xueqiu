.class final Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;
.super Ljava/lang/Object;
.source "CubeFlyOrderResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const-string v0, "/broker/orders?tid=%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 94
    const-string v0, "PAMID"

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "%s/broker/trade-history?tid=%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "https://xueqiu.com"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1053
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x583

    invoke-direct {v1, v2, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 101
    return-void

    .line 97
    :cond_0
    const-string v0, "%s/broker/orders?tid=%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "https://xueqiu.com"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$2;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
