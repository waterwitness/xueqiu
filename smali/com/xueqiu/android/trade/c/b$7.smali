.class final Lcom/xueqiu/android/trade/c/b$7;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b;-><init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$7;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 2

    .prologue
    .line 202
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$7;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->cancel()V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$7;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->b(Lcom/xueqiu/android/trade/c/b;)V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$7;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->d(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$7;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->d(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/p;->b()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$7;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->e(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    const v1, 0x7f070542

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
