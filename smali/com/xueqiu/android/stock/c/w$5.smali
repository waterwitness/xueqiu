.class final Lcom/xueqiu/android/stock/c/w$5;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/w;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$5;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v1, "quote_center_type"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v1, "quote_center_title"

    const-string v2, "\u884c\u60c5\u677f\u5757"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w$5;->a:Lcom/xueqiu/android/stock/c/w;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w$5;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/c/u;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/w;->a(Landroid/content/Intent;)V

    .line 252
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 254
    return-void
.end method
