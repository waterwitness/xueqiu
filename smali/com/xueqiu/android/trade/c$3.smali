.class public final Lcom/xueqiu/android/trade/c$3;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$3;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 2

    .prologue
    .line 404
    packed-switch p2, :pswitch_data_0

    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$3;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 412
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$3;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
