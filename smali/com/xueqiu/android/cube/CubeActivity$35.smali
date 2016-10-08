.class final Lcom/xueqiu/android/cube/CubeActivity$35;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$35;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1638
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1639
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1635
    check-cast p1, Lcom/xueqiu/android/cube/model/Cube;

    .line 2643
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$35;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 1635
    return-void
.end method
