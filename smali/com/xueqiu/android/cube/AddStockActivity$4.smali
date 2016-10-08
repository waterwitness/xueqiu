.class final Lcom/xueqiu/android/cube/AddStockActivity$4;
.super Lcom/xueqiu/android/base/b/p;
.source "AddStockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/AddStockActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/AddStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/AddStockActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/cube/AddStockActivity$4;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$4;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 165
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 155
    check-cast p1, Ljava/util/ArrayList;

    .line 1159
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity$4;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 155
    return-void
.end method
