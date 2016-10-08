.class final Lcom/xueqiu/android/cube/CubeActivity$40;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$40;->c:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeActivity$40;->a:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/cube/CubeActivity$40;->b:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1852
    const-string v0, "CubeActivity"

    const-string v1, "set %s:%s failed."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$40;->a:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity$40;->b:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1854
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1849
    return-void
.end method
