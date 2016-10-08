.class final Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;
.super Ljava/lang/Object;
.source "CubeFlyOrderResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->b:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-static {}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->a:Ljava/lang/String;

    const-string v4, "cube"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->b:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->c(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4$1;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->b:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-direct {v6, p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4$1;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;Lcom/xueqiu/android/base/b/q;)V

    move-object v3, v1

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 169
    return-void
.end method
