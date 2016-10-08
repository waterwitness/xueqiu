.class final Lcom/xueqiu/android/stock/c/m$7;
.super Ljava/lang/Object;
.source "PortfolioContainerFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/m;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/m$7;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 3

    .prologue
    .line 338
    packed-switch p2, :pswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 340
    :pswitch_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const-string v1, "PAMID"

    new-instance v2, Lcom/xueqiu/android/stock/c/m$7$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/m$7$1;-><init>(Lcom/xueqiu/android/stock/c/m$7;)V

    .line 3487
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/c;->b(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
