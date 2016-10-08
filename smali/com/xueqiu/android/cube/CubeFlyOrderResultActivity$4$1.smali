.class final Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeFlyOrderResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->b:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 158
    .line 1166
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity$4;->b:Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 158
    return-void
.end method
