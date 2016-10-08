.class final Lcom/xueqiu/android/trade/b;
.super Ljava/lang/Object;
.source "OrderFullActivity.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/b/a;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/OrderFullActivity;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/trade/OrderFullActivity;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/xueqiu/android/trade/b;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/trade/OrderFullActivity;B)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/b;-><init>(Lcom/xueqiu/android/trade/OrderFullActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/16 v2, 0x5ed

    .line 763
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 764
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 765
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 770
    :goto_0
    return-void

    .line 767
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 768
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 759
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 782
    return-void
.end method
