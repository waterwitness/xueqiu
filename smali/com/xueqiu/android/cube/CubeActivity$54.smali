.class final Lcom/xueqiu/android/cube/CubeActivity$54;
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
    .line 2554
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 2558
    const-string v0, "$%s\uff08%s\uff09$"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2560
    invoke-static {}, Lcom/xueqiu/android/cube/CubeActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$54$1;

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v4, p0, v5}, Lcom/xueqiu/android/cube/CubeActivity$54$1;-><init>(Lcom/xueqiu/android/cube/CubeActivity$54;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xueqiu/android/base/b/ai;->a(ILjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2586
    return-void
.end method
