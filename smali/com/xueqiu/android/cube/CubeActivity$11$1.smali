.class final Lcom/xueqiu/android/cube/CubeActivity$11$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity$11;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$11$1;->a:Lcom/xueqiu/android/cube/CubeActivity$11;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1005
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1006
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1002
    .line 2010
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$11$1;->a:Lcom/xueqiu/android/cube/CubeActivity$11;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity$11;->a:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$11$1;->a:Lcom/xueqiu/android/cube/CubeActivity$11;

    iget-object v1, v1, Lcom/xueqiu/android/cube/CubeActivity$11;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$11$1;->a:Lcom/xueqiu/android/cube/CubeActivity$11;

    iget-object v1, v1, Lcom/xueqiu/android/cube/CubeActivity$11;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;JLjava/lang/String;)V

    .line 1002
    return-void
.end method
