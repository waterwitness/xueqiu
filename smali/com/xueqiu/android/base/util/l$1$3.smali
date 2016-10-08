.class final Lcom/xueqiu/android/base/util/l$1$3;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/g",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/l$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$3;->a:Lcom/xueqiu/android/base/util/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    check-cast p1, Lcom/xueqiu/android/stock/model/Portfolio;

    check-cast p2, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1091
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/Portfolio;->getOrderId()I

    move-result v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getOrderId()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 88
    return-object v0
.end method
