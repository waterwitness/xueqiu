.class public final Lcom/xueqiu/android/stock/a/x$3;
.super Ljava/lang/Object;
.source "QuotesCenterRenderKit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/x;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/a/x;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/a/x;I)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    iput p2, p0, Lcom/xueqiu/android/stock/a/x$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xaf0

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 198
    const-string v2, "button_name"

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 201
    iget v0, p0, Lcom/xueqiu/android/stock/a/x$3;->a:I

    if-nez v0, :cond_1

    .line 202
    const-string v0, "http://xueqiu.com/f/home"

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    .line 2040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 202
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/a/x$3;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    const-string v1, "quote_center_type"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v1, "quote_center_title"

    const v2, 0x7f07004a

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    .line 3040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 207
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    .line 4040
    iget-object v2, v2, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 207
    const-class v3, Lcom/xueqiu/android/stock/c/u;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/stock/a/x$3;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    const-string v1, "arg_page_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    .line 5040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 211
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    .line 6040
    iget-object v2, v2, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 211
    const-class v3, Lcom/xueqiu/android/stock/c/w;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/stock/a/x$3;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 213
    const-string v0, "/broker/new-stock"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$3;->b:Lcom/xueqiu/android/stock/a/x;

    .line 7040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 213
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
