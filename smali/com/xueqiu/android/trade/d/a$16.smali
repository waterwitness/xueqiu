.class final Lcom/xueqiu/android/trade/d/a$16;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$16;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 1

    .prologue
    .line 257
    packed-switch p2, :pswitch_data_0

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$16;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 262
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->I_()V

    .line 265
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$16;->a:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 259
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->I_()V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
