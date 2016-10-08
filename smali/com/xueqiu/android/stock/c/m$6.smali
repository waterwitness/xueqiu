.class final Lcom/xueqiu/android/stock/c/m$6;
.super Ljava/lang/Object;
.source "PortfolioContainerFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/m;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/stock/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/m$6;->b:Lcom/xueqiu/android/stock/c/m;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/m$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 3

    .prologue
    .line 319
    packed-switch p2, :pswitch_data_0

    .line 326
    :goto_0
    return-void

    .line 321
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m$6;->b:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/m$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m$6;->b:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/m;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
