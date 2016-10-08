.class final Lcom/xueqiu/android/stock/F10Activity$2;
.super Ljava/lang/Object;
.source "F10Activity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/F10Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/F10Activity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/F10Activity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/stock/F10Activity$2;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public final b_(I)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity$2;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/F10Activity;->a(Lcom/xueqiu/android/stock/F10Activity;)[Landroid/support/v4/a/i;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/xueqiu/android/common/widget/l;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/l;->C_()V

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity$2;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/F10Activity;->a(Lcom/xueqiu/android/stock/F10Activity;)[Landroid/support/v4/a/i;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/xueqiu/android/stock/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/b;->u()V

    .line 130
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x641

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 131
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/F10Activity$2;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/F10Activity;->d(Lcom/xueqiu/android/stock/F10Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/F10Activity$2;->a:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/F10Activity;->b(Lcom/xueqiu/android/stock/F10Activity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 134
    return-void
.end method
