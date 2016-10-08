.class final Lcom/xueqiu/android/cube/CubeActivity$11;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 998
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$11;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1001
    invoke-static {}, Lcom/xueqiu/android/cube/CubeActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$11;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$11$1;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$11;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/cube/CubeActivity$11$1;-><init>(Lcom/xueqiu/android/cube/CubeActivity$11;Lcom/xueqiu/android/base/b/q;)V

    .line 3551
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1016
    return-void
.end method
